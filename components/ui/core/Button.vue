<template>
  <button :class="`btn ${type}`" @click.prevent="$emit('btn-clicked')">
    <span v-if="$slots.default"><slot></slot></span>
    <fa v-if="icon" :icon="['fas', icon]" class="icon" />
  </button>
</template>

<script>
export default {
  name: 'Button',
  props: {
    type: {
      type: String,
      required: false,
      default: 'primary',
      validator: (value) => ['primary', 'secondary', 'outline'].includes(value),
    },
    icon: {
      type: String,
      required: false,
      default: '',
    },
  },
}
</script>

<style scoped>
.btn {
  @apply py-2 px-4 text-gray-100 font-body font-bold rounded-3xl flex justify-center items-center text-lg;
  transition: all 0.3s ease;
}
.btn:hover {
  @apply shadow-md;
}
.icon {
  @apply ml-2 text-gray-100;
}
.btn:hover .icon {
  animation: shake 0.5s ease-in-out;
}
.primary {
  @apply bg-custom-green;
}
.secondary {
  @apply bg-custom-blue;
}
.outline {
  @apply border border-custom-green bg-white text-custom-gray;
}
@keyframes shake {
  20%,
  60% {
    transform: translateX(-1px);
  }

  40%,
  80% {
    transform: translateX(1px);
  }
}
</style>
