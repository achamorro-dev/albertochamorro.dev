<template>
  <article class="timeline-item">
    <h3>{{ title }}</h3>
    <h4 v-if="subtitle" class="timeline-item__subtitle">
      {{ subtitle }}
    </h4>
    <slot>Sin contenido</slot>
  </article>
</template>

<script>
export default {
  name: 'TimelineItem',
  props: {
    title: {
      type: String,
      required: true
    },
    subtitle: {
      type: String,
      required: false,
      default: null
    }
  }
}
</script>

<style scoped>
.timeline-item {
  @apply text-left py-4 pl-4 border-gray-300;
  border-left-width: 1px;
}

.timeline-item::before {
  @apply bg-custom-green;
  content: '';
  height: 1rem;
  width: 1rem;
  border-radius: 100%;
  position: absolute;
  transform: translateX(-1.5rem) translateY(0.2rem);
}

.timeline-item__subtitle {
  @apply text-sm text-gray-400;
}

.dark .timeline-item__subtitle {
  @apply text-gray-300;
}
</style>
