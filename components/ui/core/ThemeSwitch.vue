<template>
  <div>
    <DarkIcon
      v-if="$colorMode.preference !== 'dark'"
      class="cursor-pointer w-8 h-8"
      @click="changeTheme('dark')"
    />
    <LightIcon
      v-else
      class="cursor-pointer w-8 h-8"
      @click="changeTheme('light')"
    />
  </div>
</template>

<script>
export default {
  name: 'ThemeSwitch',
  components: {
    DarkIcon: () => import('@/assets/images/moon.svg?inline'),
    LightIcon: () => import('@/assets/images/sun.svg?inline')
  },
  methods: {
    changeTheme (theme) {
      this.$colorMode.preference = theme
      this.$emit('click')
    }
  }
}
</script>
