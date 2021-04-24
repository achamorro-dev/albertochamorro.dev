<template>
  <div class="drawer-menu" :class="activeClass">
    <div class="absolute left-0 top-0 w-full flex justify-between align-middle">
      <ThemeSwitch class="p-4" @click="closeClicked" />
      <a class="cursor-pointer p-4" @click="closeClicked"
        ><fa :icon="['fas', 'times']" class="text-3xl text-white"
      /></a>
    </div>

    <nav>
      <ul
        class="h-screen flex align-middle justify-center flex-col text-center"
      >
        <li class="drawer-menu-link">blog</li>
        <li class="drawer-menu-link">portfolio</li>
        <li class="drawer-menu-link">sobre mí</li>
      </ul>
    </nav>
  </div>
</template>

<script>
export default {
  name: 'DrawerMenu',
  props: {
    active: {
      type: Boolean,
      required: false,
      default: false,
    },
  },
  computed: {
    activeClass() {
      return this.active ? 'drawer-menu__active' : ''
    },
  },
  methods: {
    closeClicked() {
      this.$emit('drawer-menu-close-event')
    },
  },
}
</script>

<style scoped>
.drawer-menu {
  @apply h-screen w-screen fixed top-0 left-0 bg-custom-green text-white;
  transition: all 0.25s ease-out;
  transform: translateX(100vh);
  opacity: 0;
}

.drawer-menu__active {
  transform: translateX(0vh);
  opacity: 1;
}

.drawer-menu-link {
  @apply text-4xl font-display py-2;
}

@media (min-width: 768px) {
  .drawer-menu {
    display: none;
  }
}
</style>
