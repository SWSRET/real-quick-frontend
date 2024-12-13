<script setup>
import { ref } from 'vue'

const isDarkMode = ref(true) // Default to dark mode

function toggleDarkMode() {
  isDarkMode.value = !isDarkMode.value
}
</script>

<template>
  <div
    class="min-h-screen transition-colors duration-300"
    :class="[
      isDarkMode
        ? 'bg-gradient-to-br from-gray-900 via-gray-800 to-indigo-900 text-white'
        : 'bg-gradient-to-br from-white via-indigo-50 to-blue-100 text-gray-900',
    ]"
  >
    <!-- Navigation Bar -->
    <nav
      class="backdrop-blur-lg border-b transition-colors duration-300"
      :class="[
        isDarkMode
          ? 'bg-gray-900/50 border-gray-800'
          : 'bg-white/50 border-gray-200',
      ]"
    >
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
          <div class="flex items-center">
            <div class="flex-shrink-0 flex items-center">
              <div
                class="text-2xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-indigo-500 to-purple-500"
              >
                Real Quick
              </div>
            </div>
            <div class="hidden sm:ml-6 sm:flex sm:space-x-8">
              <NuxtLink
                to="/"
                class="border-transparent inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium transition-all duration-300"
                :class="
                  isDarkMode
                    ? 'text-gray-300 hover:text-white hover:border-indigo-400'
                    : 'text-gray-600 hover:text-gray-900 hover:border-indigo-400'
                "
              >
                Home
              </NuxtLink>
              <!-- <a
                href="#"
                class="border-indigo-500 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium transition-all duration-300"
                :class="
                  isDarkMode
                    ? 'text-white hover:text-indigo-400'
                    : 'text-gray-900 hover:text-indigo-600'
                "
              >
                Dashboard
              </a> -->
              <NuxtLink
                to="/about"
                class="border-transparent inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium transition-all duration-300"
                :class="
                  isDarkMode
                    ? 'text-gray-300 hover:text-white hover:border-indigo-400'
                    : 'text-gray-600 hover:text-gray-900 hover:border-indigo-400'
                "
              >
                About
              </NuxtLink>
              <NuxtLink
                to="/schedule"
                class="border-transparent inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium transition-all duration-300"
                :class="
                  isDarkMode
                    ? 'text-gray-300 hover:text-white hover:border-indigo-400'
                    : 'text-gray-600 hover:text-gray-900 hover:border-indigo-400'
                "
              >
                Schedule
              </NuxtLink>
              <NuxtLink
                to="/tasks"
                class="border-transparent inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium transition-all duration-300"
                :class="
                  isDarkMode
                    ? 'text-gray-300 hover:text-white hover:border-indigo-400'
                    : 'text-gray-600 hover:text-gray-900 hover:border-indigo-400'
                "
              >
                Tasks
              </NuxtLink>
            </div>
          </div>
          <div class="flex items-center">
            <button
              class="p-2 rounded-lg transition-colors duration-300"
              :class="
                isDarkMode
                  ? 'text-gray-300 hover:text-white'
                  : 'text-gray-600 hover:text-gray-900'
              "
              @click="toggleDarkMode"
            >
              <nuxt-icon
                v-if="isDarkMode"
                name="sun"
                filled
                class="text-2xl"
              />
              <nuxt-icon v-else name="moon" filled class="text-2xl" />
            </button>
          </div>
        </div>
      </div>
    </nav>

    <!-- Main Content -->
    <main class="relative">
      <!-- Decorative Elements -->
      <div class="absolute inset-0 overflow-hidden pointer-events-none">
        <div
          class="absolute -top-40 -right-40 w-80 h-80 bg-indigo-500 rounded-full mix-blend-multiply filter blur-xl opacity-20 animate-blob"
        />
        <div
          class="absolute -bottom-40 -left-40 w-80 h-80 bg-purple-500 rounded-full mix-blend-multiply filter blur-xl opacity-20 animate-blob animation-delay-2000"
        />
        <div
          class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-80 h-80 bg-pink-500 rounded-full mix-blend-multiply filter blur-xl opacity-20 animate-blob animation-delay-4000"
        />
      </div>

      <div class="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:px-8 relative">
        <!-- Hero Section -->
        <div
          class="backdrop-blur-lg overflow-hidden shadow-2xl rounded-2xl border transition-colors duration-300"
          :class="[
            isDarkMode
              ? 'bg-gray-800/50 border-gray-700'
              : 'bg-white/50 border-gray-200',
          ]"
        >
          <div class="px-4 py-12 sm:px-6 relative">
            <div class="text-center">
              <h2
                class="text-4xl sm:text-5xl font-extrabold bg-clip-text text-transparent bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 pb-2"
              >
                Manage Your College Life
              </h2>
              <p
                class="mt-4 max-w-2xl mx-auto text-xl"
                :class="isDarkMode ? 'text-gray-300' : 'text-gray-600'"
              >
                Smart scheduling for smart students
              </p>
              <div class="mt-10 flex justify-center space-x-4">
                <button
                  class="px-8 py-3 rounded-lg bg-gradient-to-r from-indigo-600 to-purple-600 text-white font-medium transition-transform duration-300 hover:scale-105 hover:shadow-lg hover:shadow-indigo-500/25 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
                  :class="
                    isDarkMode
                      ? 'focus:ring-offset-gray-900'
                      : 'focus:ring-offset-white'
                  "
                >
                  Create Schedule
                </button>
                <button
                  class="px-8 py-3 rounded-lg font-medium border transition-transform duration-300 hover:scale-105 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
                  :class="[
                    isDarkMode
                      ? 'bg-gray-800 text-gray-300 border-gray-700 hover:text-white hover:border-indigo-500 focus:ring-offset-gray-900'
                      : 'bg-white text-gray-600 border-gray-200 hover:text-gray-900 hover:border-indigo-500 focus:ring-offset-white',
                  ]"
                >
                  View Demo
                </button>
              </div>
            </div>
          </div>
        </div>

        <!-- Feature Grid -->
        <div class="mt-16">
          <div class="grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-3">
            <!-- Feature 1 -->
            <div
              class="group backdrop-blur-lg overflow-hidden rounded-xl border transition-all duration-300 hover:border-indigo-500 hover:shadow-lg hover:shadow-indigo-500/25"
              :class="[
                isDarkMode
                  ? 'bg-gray-800/50 border-gray-700'
                  : 'bg-white/50 border-gray-200',
              ]"
            >
              <div class="p-6">
                <div
                  class="w-12 h-12 rounded-lg bg-gradient-to-br from-indigo-500 to-purple-500 flex items-center justify-center mb-4"
                >
                  <nuxt-icon
                    name="calendar"
                    filled
                    class="text-3xl text-white"
                  />
                </div>
                <h3
                  class="text-xl font-semibold mb-2"
                  :class="isDarkMode ? 'text-white' : 'text-gray-900'"
                >
                  Smart Scheduling
                </h3>
                <p :class="isDarkMode ? 'text-gray-400' : 'text-gray-600'">
                  Automatically organize your classes, study sessions, and
                  activities
                  <!-- This is a commit of the message for the git bot -->
                </p>
              </div>
            </div>

            <!-- Feature 2 -->
            <div
              class="group backdrop-blur-lg overflow-hidden rounded-xl border transition-all duration-300 hover:border-indigo-500 hover:shadow-lg hover:shadow-indigo-500/25"
              :class="[
                isDarkMode
                  ? 'bg-gray-800/50 border-gray-700'
                  : 'bg-white/50 border-gray-200',
              ]"
            >
              <div class="p-6">
                <div
                  class="w-12 h-12 rounded-lg bg-gradient-to-br from-purple-500 to-pink-500 flex items-center justify-center mb-4"
                >
                  <nuxt-icon
                    name="check-badge"
                    filled
                    class="text-3xl text-white"
                  />
                </div>
                <h3
                  class="text-xl font-semibold mb-2"
                  :class="isDarkMode ? 'text-white' : 'text-gray-900'"
                >
                  Task Management
                </h3>
                <p :class="isDarkMode ? 'text-gray-400' : 'text-gray-600'">
                  Keep track of assignments, deadlines, and study goals
                </p>
              </div>
            </div>

            <!-- Feature 3 -->
            <div
              class="group backdrop-blur-lg overflow-hidden rounded-xl border transition-all duration-300 hover:border-indigo-500 hover:shadow-lg hover:shadow-indigo-500/25"
              :class="[
                isDarkMode
                  ? 'bg-gray-800/50 border-gray-700'
                  : 'bg-white/50 border-gray-200',
              ]"
            >
              <div class="p-6">
                <div
                  class="w-12 h-12 rounded-lg bg-gradient-to-br from-pink-500 to-indigo-500 flex items-center justify-center mb-4"
                >
                  <nuxt-icon
                    name="bell"
                    filled
                    class="text-3xl text-white"
                  />
                </div>
                <h3
                  class="text-xl font-semibold mb-2"
                  :class="isDarkMode ? 'text-white' : 'text-gray-900'"
                >
                  Smart Reminders
                </h3>
                <p :class="isDarkMode ? 'text-gray-400' : 'text-gray-600'">
                  Never miss a class or assignment with timely notifications
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <!-- Footer -->
    <footer
      class="backdrop-blur-lg border-t mt-12 transition-colors duration-300"
      :class="[
        isDarkMode
          ? 'bg-gray-900/50 border-gray-800'
          : 'bg-white/50 border-gray-200',
      ]"
    >
      <div
        class="max-w-7xl mx-auto py-12 px-4 sm:px-6 md:flex md:items-center md:justify-between lg:px-8"
      >
        <div class="flex justify-center space-x-6 md:order-2">
          <a
            href="#"
            class="transition-colors duration-300"
            :class="[
              isDarkMode
                ? 'text-gray-400 hover:text-indigo-400'
                : 'text-gray-600 hover:text-indigo-600',
            ]"
          >
            <span class="sr-only">GitHub</span>
            <nuxt-icon name="github" class="text-2xl" />
          </a>
        </div>
        <div class="mt-8 md:mt-0 md:order-1">
          <p
            class="text-center text-base"
            :class="[isDarkMode ? 'text-gray-400' : 'text-gray-600']"
          >
            &copy; 2024 Real Quick. All rights reserved.
          </p>
        </div>
      </div>
    </footer>
  </div>
</template>

<style>
.animate-blob {
  animation: blob 7s infinite;
}

.animation-delay-2000 {
  animation-delay: 2s;
}

.animation-delay-4000 {
  animation-delay: 4s;
}

/* Custom icon sizes */
.nuxt-icon svg {
  margin-bottom: 0;
}

@keyframes blob {
  0% {
    transform: translate(0px, 0px) scale(1);
  }

  33% {
    transform: translate(30px, -50px) scale(1.1);
  }

  66% {
    transform: translate(-20px, 20px) scale(0.9);
  }

  100% {
    transform: translate(0px, 0px) scale(1);
  }
}
</style>
