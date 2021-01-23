<template>
  <header class="p-4 flex justify-between align-middle">
    <Logo />
    <NavBarMenu />
    <HamburgerIcon class="w-8 h-8 cursor-pointer md:hidden" />
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
