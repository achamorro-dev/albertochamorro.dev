<template>
  <div>
    <Header @hamburger-menu-clicked="onHamburgerMenuClicked" />
    <DrawerMenu
      :active="drawerMenuActive"
      @drawer-menu-close-event="onDrawerMenuClose"
    />
    <Nuxt />
    <Footer />
  </div>
</template>

<script>
export default {
  data () {
    return {
      drawerMenuActive: false
    }
  },
  methods: {
    onHamburgerMenuClicked () {
      this.drawerMenuActive = true
    },
    onDrawerMenuClose () {
      this.drawerMenuActive = false
    }
  }
}
</script>

<style>
html {
  font-family: 'Open Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI',
    Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
  transition: all 0.3s ease;
}

html.dark {
  @apply bg-gray-700;
}

*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

h1,
h2,
h3,
h4,
h5,
h6 {
  @apply font-display text-custom-gray;
}

label,
p {
  @apply font-body text-custom-gray my-4;
}

.dark h1,
.dark h2,
.dark h3,
.dark h4,
.dark h5,
.dark h6,
.dark p,
.dark span,
.dark label,
.dark small {
  @apply text-gray-100;
}

a {
  @apply text-custom-blue;
}

a:hover,
a:focus {
  text-decoration: underline;
}

input,
textarea {
  @apply rounded border-2 border-black py-2 px-3;
  box-shadow: 2px 4px 0 #000;
}

input:focus,
textarea:focus {
  @apply outline-none border-2 border-custom-blue;
  box-shadow: 2px 4px 0 #345995;
}

.button--green {
  @apply bg-white;
}

.button--green:hover {
  @apply bg-black;
}

.brackets::before {
  @apply text-custom-yellow;
  content: '[';
  position: relative;
  left: 0;
}

.brackets::after {
  @apply text-custom-yellow;
  content: ']';
  position: relative;
  right: 0;
}

.brackets-red.brackets::after,
.brackets-red.brackets::before {
  @apply text-custom-red;
}

.brackets-blue.brackets::after,
.brackets-blue.brackets::before {
  @apply text-custom-blue;
}

.brackets-green.brackets::after,
.brackets-green.brackets::before {
  @apply text-custom-green;
}

.xl-container {
  max-width: 75rem;
  margin: 0 auto;
}

.text-container {
  max-width: 50rem;
  padding: 2rem;
}
.card {
  @apply flex flex-col md:h-full justify-start items-center p-4 rounded-md border-2 border-black;
  box-shadow: 2px 2px 0 #fff, 4px 4px 0 #000;
}
.dark .card {
  box-shadow: 2px 2px 0 rgb(55, 65, 81), 4px 4px 0 #000;
}
.blog-card:hover,
.dark .blog-card:hover {
  box-shadow: 2px 2px 0 #D6603F, 4px 4px 0 #000;
}

.nuxt-content {
  overflow: auto;
}

.nuxt-content > h2 {
  @apply text-2xl mt-10 mb-1;
}

.nuxt-content > h3 {
  @apply text-xl mt-6 mb-1;
}

.nuxt-content > p {
  @apply font-body my-6;
}

.nuxt-content > img {
  @apply m-auto max-w-full my-6;
}

.nuxt-content > ul {
  list-style: initial;
  @apply font-body my-4 ml-5 text-custom-gray;
}

.nuxt-content > ol {
  list-style-type: decimal;
}

.nuxt-content > blockquote {
  @apply p-4 border-l-4 border-custom-blue font-body text-custom-gray;
}

.nuxt-content > .nuxt-content-highlight > pre {
  @apply rounded-lg;
}

.nuxt-content p > code,
.nuxt-content li > code {
  @apply p-1 rounded bg-gray-200 text-gray-800;
}

.nuxt-content p,
.nuxt-content ul,
.nuxt-content ol {
  @apply text-lg;
}

.nuxt-content li {
  @apply mb-0.5;
}

.nuxt-content > ul ul {
  list-style-type: circle;
  margin-top: 0.5rem;
  margin-left: 2rem;
}

.dark .nuxt-content > h2,
.dark .nuxt-content > h3 {
  @apply text-custom-green;
}

.dark .nuxt-content > ul,
.dark .nuxt-content > ol,
.dark .nuxt-content > blockquote {
  @apply text-gray-100;
}

@media (min-width: 768px) {
  .nuxt-content > img {
    @apply max-w-screen-sm;
  }
}
</style>
