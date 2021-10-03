<template>
  <a href="#" class="hover:no-underline" @click.prevent="$emit('tag-clicked')">
    <span
      class="
        py-1
        px-4
        rounded-full
        border border-custom-green
        text-sm
        font-display
      "
      :class="{
        'bg-custom-green': selected,
        'text-gray-100': selected,
        'text-custom-gray': !selected,
      }"
    >
      #{{ text }}
    </span>
  </a>
</template>

<script>
export default {
  props: {
    text: {
      type: String,
      required: true
    },
    selected: {
      type: Boolean,
      required: false,
      default: false
    }
  }
}
</script>

<style scoped>
.dark span {
  @apply text-gray-100;
}
</style>
