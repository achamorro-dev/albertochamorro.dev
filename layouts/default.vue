<template>
  <div>
    <Header @hamburger-menu-clicked="onHamburgerMenuClicked" />
    <DrawerMenu
      :active="drawerMenuActive"
      @drawer-menu-close-event="onDrawerMenuClose"
    />
    <Nuxt />
  </div>
</template>

<script>
export default {
  data() {
    return {
      drawerMenuActive: false,
    }
  },
  methods: {
    onHamburgerMenuClicked() {
      this.drawerMenuActive = true
    },
    onDrawerMenuClose() {
      this.drawerMenuActive = false
    },
  },
}
</script>

<style>
html {
  font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI',
    Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

html.dark {
  @apply bg-gray-700;
}

*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
}

h1 {
  @apply font-display text-custom-gray;
}

.dark h1 {
  @apply text-gray-100;
}

.button--green {
  @apply bg-white;
}

.button--green:hover {
  @apply bg-black;
}

.custom-path-bg {
  background: url('~assets/images/custom_path.svg');
  background-position: center;
  background-size: contain;
  background-repeat: no-repeat;
}

.primary-gradient {
  @apply bg-gradient-to-l from-custom-green to-custom-blue;
}

.xl-container {
  @apply max-w-6xl;
}
</style>
