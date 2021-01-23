<template>
  <div>
    <Header />
    <DrawerMenu />
    <Nuxt />
  </div>
</template>

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

*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
}

h1 {
  @apply font-display text-custom-gray;
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
</style>
