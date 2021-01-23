<template>
  <header class="p-4 flex justify-between align-middle">
    <nuxt-link to="/"><Logo /></nuxt-link>
    <NavBarMenu />
    <HamburgerIcon
      class="w-8 h-8 cursor-pointer md:hidden"
      @click="$emit('hamburger-menu-clicked')"
    />
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
