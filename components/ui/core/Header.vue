<template>
  <header class="p-4 sticky top-0 bg-light z-50">
    <div class="xl-container flex justify-between align-middle">
      <nuxt-link to="/" class="hover:no-underline focus:no-underline">
        <Logo />
      </nuxt-link>
      <NavBarMenu />
      <HamburgerIcon
        class="w-8 h-8 cursor-pointer md:hidden"
        @click="$emit('hamburger-menu-clicked')"
      />
    </div>
  </header>
</template>

<script>
export default {
  name: 'Header',
  components: {
    HamburgerIcon: () => import('@/assets/images/burger.svg?inline'),
  },
}
</script>

<style scoped>
header {
  transition: all 0.3s ease;
}
.dark header {
  @apply bg-dark;
}
</style>
