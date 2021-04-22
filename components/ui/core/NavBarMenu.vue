<template>
  <div class="hidden md:flex justify-around">
    <nav>
      <ul class="flex align-middle justify-end text-center">
        <nuxt-link to="/blog"
          ><li class="text-2xl text-custom-gray font-display px-4">
            blog
          </li></nuxt-link
        >
        <nuxt-link to="/portfolio"
          ><li class="text-2xl text-custom-gray font-display px-4">
            portfolio
          </li></nuxt-link
        >
        <nuxt-link to="/about-me"
          ><li class="text-2xl text-custom-gray font-display px-4">
            sobre mí
          </li></nuxt-link
        >
      </ul>
    </nav>
    <ThemeSwitch class="mx-4" />
  </div>
</template>
