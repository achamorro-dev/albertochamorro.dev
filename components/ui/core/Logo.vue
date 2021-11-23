<template>
  <h1 class="text-2xl" :class="{'text-white': negative}">
    <span class="brackets">alberto</span> chamorro
  </h1>
</template>

<script>
export default {
  name: 'Logo',
  props: {
    negative: {
      type: Boolean,
      required: false,
      default: false
    }
  }
}
</script>
