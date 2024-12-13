# Real Quick - Color Theme Documentation

## Color Palette

### Brand Colors
- Primary Gradient: `from-indigo-500 to-purple-500`
- Secondary Gradient: `from-purple-500 to-pink-500`
- Accent Gradient: `from-pink-500 to-indigo-500`

### Dark Mode Theme

#### Background
- Main Background: Gradient
  - From: `from-gray-900` (#111827)
  - Via: `via-gray-800` (#1F2937)
  - To: `to-indigo-900` (#312E81)

#### Navigation
- Nav Background: `bg-gray-900/50` (semi-transparent)
- Border Color: `border-gray-800` (#1F2937)

#### Text Colors
- Primary Text: `text-white` (#FFFFFF)
- Secondary Text: `text-gray-300` (#D1D5DB)
- Muted Text: `text-gray-400` (#9CA3AF)

#### Card/Container
- Background: `bg-gray-800/50` (semi-transparent)
- Border: `border-gray-700` (#374151)

#### Interactive Elements
- Hover Text: `hover:text-white`
- Hover Border: `hover:border-indigo-500`
- Focus Ring: `ring-indigo-500`
- Focus Ring Offset: `ring-offset-gray-900`

### Light Mode Theme

#### Background
- Main Background: Gradient
  - From: `from-white` (#FFFFFF)
  - Via: `via-indigo-50` (#EEF2FF)
  - To: `to-blue-100` (#DBEAFE)

#### Navigation
- Nav Background: `bg-white/50` (semi-transparent)
- Border Color: `border-gray-200` (#E5E7EB)

#### Text Colors
- Primary Text: `text-gray-900` (#111827)
- Secondary Text: `text-gray-600` (#4B5563)
- Muted Text: `text-gray-600` (#4B5563)

#### Card/Container
- Background: `bg-white/50` (semi-transparent)
- Border: `border-gray-200` (#E5E7EB)

#### Interactive Elements
- Hover Text: `hover:text-gray-900`
- Hover Border: `hover:border-indigo-500`
- Focus Ring: `ring-indigo-500`
- Focus Ring Offset: `ring-offset-white`

## Special Effects

### Backdrop Blur
- Applied to: Navigation bar, Cards, Footer
- Class: `backdrop-blur-lg`

### Transitions
- Color transitions: `transition-colors duration-300`
- Transform transitions: `transition-transform duration-300`

### Hover Effects
- Scale effect: `hover:scale-105`
- Shadow effect: `hover:shadow-lg hover:shadow-indigo-500/25`

### Decorative Elements
- Blob animations with gradients
- Mix blend mode: `mix-blend-multiply`
- Blur effect: `blur-xl`
- Opacity: `opacity-20`

## Typography

### Font Sizes
- Brand Name: `text-2xl`
- Navigation: `text-sm`
- Headers: `text-4xl`, `text-5xl`
- Subtext: `text-xl`
- Body: `text-base`

### Font Weights
- Regular: `font-medium`
- Bold: `font-bold`
- Extra Bold: `font-extrabold`

## Usage Guidelines

1. Always use the complete gradient combinations for maintaining visual consistency
2. Maintain the semi-transparent backgrounds with backdrop blur for the frosted glass effect
3. Use the appropriate text color hierarchy based on the mode
4. Include hover and focus states for interactive elements
5. Apply transitions for smooth mode switching

## Implementation Notes

The theme supports smooth transitions between modes with a 300ms duration. All color changes are handled through Tailwind CSS classes and utilize opacity values for creating depth and layering effects.

The decorative blob animations use custom keyframes and should be preserved for the dynamic background effect.
