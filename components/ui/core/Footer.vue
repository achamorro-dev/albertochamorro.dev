<template>
  <footer class="footer">
    <div
      class="
        xl-container
        p-6
        flex flex-col
        justify-center
        align-middle
        md:flex-row
        md:p-0
      "
    >
      <div class="w-full md:w-1/3">
        <ul
          class="
            flex flex-col
            justify-center
            align-middle
            footer-section
            m-auto
            text-center
            md:text-left
          "
          style="width: fit-content"
        >
          <nuxt-link to="/blog" class="text-gray-100 text-xl">
            <li class="text-md font-display">
              blog
            </li>
          </nuxt-link>
          <!-- <nuxt-link to="/portfolio" class="text-gray-100 text-xl"
            ><li class="text-md font-display">portfolio</li></nuxt-link
          > -->
          <nuxt-link to="/about-me" class="text-gray-100 text-xl">
            <li class="text-md font-display">
              sobre mí
            </li>
          </nuxt-link>
        </ul>
      </div>
      <div class="w-full md:w-1/3 footer-section" />
      <div
        class="
          w-full
          md:w-1/3
          text-center
          flex flex-col
          justify-center
          align-start
          mt-4
          md:mt-0
          footer-section
        "
      >
        <Logo class="mb-3" negative />
        <ul class="flex justify-center">
          <SocialLink
            type="twitter"
            color="text-gray-200"
            link="https://twitter.com/achamorro_dev"
            class="mx-1"
          />
          <SocialLink
            type="linkedin"
            color="text-gray-200"
            link="https://www.linkedin.com/in/alberto-chamorro"
            class="mx-1"
          />
          <SocialLink
            type="github"
            color="text-gray-200"
            link="https://github.com/achamorro-dev"
            class="mx-1"
          />
        </ul>
      </div>
    </div>
  </footer>
</template>

<style scoped>
.footer {
  @apply bg-custom-gray border-t-4 border-black;
  min-height: 12.5rem;
}
.dark .footer {
  @apply bg-gray-600;
}
@media (min-width: 768px) {
  .footer-section {
    height: 12.5rem;
  }
}
</style>
