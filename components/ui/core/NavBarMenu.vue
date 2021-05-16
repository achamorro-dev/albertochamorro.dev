<template>
  <div class="hidden md:flex justify-around">
    <nav>
      <ul class="flex align-middle justify-end text-center">
        <nuxt-link to="/blog" class="hover:no-underline"
          ><li
            class="
              text-2xl text-custom-gray
              font-display
              px-4
              dark:text-gray-100
            "
          >
            blog
          </li></nuxt-link
        >
        <!-- <nuxt-link to="/portfolio" class="hover:no-underline"
          ><li
            class="text-2xl text-custom-gray font-display px-4 dark:text-gray-100"
          >
            portfolio
          </li></nuxt-link
        > -->
        <nuxt-link to="/about-me" class="hover:no-underline"
          ><li
            class="
              text-2xl text-custom-gray
              font-display
              px-4
              dark:text-gray-100
            "
          >
            sobre mí
          </li></nuxt-link
        >
      </ul>
    </nav>
    <ThemeSwitch class="mx-4" />
  </div>
</template>
