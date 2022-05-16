<template>
  <button :class="`btn ${type}`" @click.prevent="$emit('btn-clicked')">
    <span v-if="$slots.default">
      <slot />
    </span>
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
      validator: value => ['primary', 'secondary', 'outline'].includes(value)
    },
    icon: {
      type: String,
      required: false,
      default: ''
    }
  }
}
</script>

<style scoped>
.btn {
  @apply py-2 px-4 text-custom-gray border-2 border-custom-gray font-body font-bold rounded-xl flex justify-center items-center text-lg font-display;
  box-shadow: 2px 5px 0 #29313D;
  position: relative;
}
.dark .btn {
  @apply border-custom-light-gray;
  box-shadow: 2px 5px 0 #f0f1f3;
}
.btn:hover {
  box-shadow: none;
  top: 5px;
  left: 2px;
}
.icon {
  @apply ml-2 text-custom-gray;
}
.btn:hover .icon {
  animation: shake 0.5s ease-in-out;
}
span {
  @apply text-custom-gray;
}
.dark .outline span,
.dark .outline .icon {
  @apply text-custom-light-gray;
}
.primary {
  @apply bg-custom-yellow;
}
.secondary {
  @apply bg-custom-blue;
}
.outline {
  @apply bg-transparent;
}
.dark .outline {
  @apply text-custom-light-gray;
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
