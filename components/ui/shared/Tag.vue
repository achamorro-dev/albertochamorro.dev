<template>
  <NuxtLink
    :to="{ name: 'blog-tag', params: { tag: text } }"
    class="py-2 px-4 custom-path-bg text-gray-100 hover:no-underline"
  >
    <span class="text-sm font-display">{{ text }}</span>
  </NuxtLink>
</template>

<script>
export default {
  props: {
    text: {
      type: String,
      required: true,
    },
  },
}
</script>
