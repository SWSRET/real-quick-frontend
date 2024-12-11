# Build stage
FROM node:20-slim AS builder

# Set environment variables
ENV NODE_ENV=production \
    NPM_CONFIG_LOGLEVEL=warn \
    NODE_OPTIONS=--max-old-space-size=2048 \
    PNPM_HOME="/pnpm" \
    PATH="$PNPM_HOME:$PATH"

# Install system dependencies and security updates
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends dumb-init && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    corepack enable && \
    corepack prepare pnpm@9.15.0 --activate

# Create app directory and set permissions
WORKDIR /app
RUN chown -R node:node /app

# Switch to non-root user
USER node

# Copy package files with correct ownership
COPY --chown=node:node package.json pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install --frozen-lockfile --prod=false

# Copy source files with correct ownership
COPY --chown=node:node . .

# Build the application
RUN pnpm build

# Production stage
FROM node:20-slim AS production

# Set environment variables
ENV NODE_ENV=production \
    NPM_CONFIG_LOGLEVEL=warn \
    PNPM_HOME="/pnpm" \
    PATH="$PNPM_HOME:$PATH" \
    HOST=0.0.0.0 \
    PORT=3000

# Install system dependencies and security updates
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends dumb-init && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    corepack enable && \
    corepack prepare pnpm@9.15.0 --activate

# Create app directory and set permissions
WORKDIR /app
RUN chown -R node:node /app

# Switch to non-root user
USER node

# Copy built application with correct ownership
COPY --chown=node:node --from=builder /app/.output /app/.output
COPY --chown=node:node --from=builder /app/package.json /app/package.json
COPY --chown=node:node --from=builder /app/pnpm-lock.yaml /app/pnpm-lock.yaml

# Install production dependencies only
RUN pnpm install --frozen-lockfile --prod

# Add healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD node -e "try { require('http').get('http://localhost:' + (process.env.PORT || 3000) + '/api/_health', (res) => res.statusCode === 200 ? process.exit(0) : process.exit(1)); } catch (err) { process.exit(1); }"

# Use dumb-init as PID 1
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

# Start the application
CMD ["node", ".output/server/index.mjs"]

# Expose port
EXPOSE 3000
