<template>
  <a :href="href" target="_blank" class="link">{{ text }}</a>
</template>

<script>
export default {
  name: 'Link',
  props: {
    text: {
      type: String,
      required: true,
    },
    href: {
      type: String,
      required: true,
    },
  },
}
</script>

<style scoped>
.link {
  @apply cursor-pointer text-custom-blue no-underline;
}
</style>
