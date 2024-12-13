A module for Nuxt 3 that allows you to use your own SVG icons quickly and enjoyably.

playground-usage
Installation

    `npx nuxi@latest module add icons
    add nuxt-icons to modules, nuxt.config.ts:

export default defineNuxtConfig({
    modules: ['nuxt-icons']
})

Usage

    Create a icons folder in assets: assets/icons
    Drop your icons with the .svg extension into the icons folder
    In the project, use <nuxt-icon name="">, where name is the name of your svg icon from the folder

If you need to use the original color from the svg file (for example, if your icon has defs) you need to use the filled attribute:
<nuxt-icon name="mySuperIcon" filled />
Subfolders

If you would like to use some more complicated folder arrangement you will have to use paths from /icons

If you have a svg icon in nested directories such as:

📁icons
  └📁admin
  ⠀⠀└ badge.svg
  └📁user
  ⠀⠀└ badge.svg

then the icons's name will be based on its own path directory and filename. Therefore, the icon's name will be:

<nuxt-icon name="admin/badge"> and <nuxt-icon name="user/badge">

I don't like the basic styles that are assigned to the icons!

The styles that have been created for the icons look as follows:

width: 1em;
height: 1em;
margin-bottom: 0.125em;
vertical-align: middle;

You can easily change these styles using regular CSS for example in your index.vue file:

<style>
.nuxt-icon svg{
  margin-bottom: 0;
}
</style>

I would like to use icons from an icon pack available online

You can download icons in SVG format and put them in the /icons folder, or use another module that supports this natively: nuxt-icon
What this module does

The module retrieves all svg files from the assets/icons folder, overwrites the height and width from them to make them scalable, and using the <nuxt-icon> component allows them to be used. <nuxt-icon> injects the SVG code directly into <span>.
Features

    Easy SVG icon management ✅
    HMR (You don't have to reset the project to reload the icons) ✅
    Ability to manipulate icons just like fonts, e.g. using color, font-size instead of fill,width,height ✅
    Ability to use the original color scheme for complex icons using the filled attribute ✅
    Icon only loads if used ✅

Development

    Run npm run dev:prepare to generate type stubs.
    Use npm run dev to start playground in development mode.
