<template>
  <a
    :href="href"
    target="_blank"
    class="p-4 flex flex-col rounded border border-gray-300 hover:no-underline hover:shadow-lg"
  >
    <div class="flex items-center">
      <OcticonRepo class="mr-1" />
      <h3>{{ name }}</h3>
    </div>
    <p>
      {{ description }}
    </p>
    <div class="flex items-center">
      <div class="w-3 h-3 rounded-full mr-1" :class="circleColorClass"></div>
      <p class="text-xs m-0">{{ language }}</p>
    </div>
  </a>
</template>

<script>
export default {
  name: 'RepositoryCard',
  components: {
    OcticonRepo: () => import('@/assets/images/octicon-repo.svg?inline'),
  },
  props: {
    href: {
      type: String,
      required: true,
    },
    name: {
      type: String,
      required: true,
    },
    description: {
      type: String,
      required: false,
      default: '',
    },
    language: {
      type: String,
      required: true,
    },
  },
  computed: {
    circleColorClass() {
      return {
        'bg-green-600': this.language.toLowerCase() === 'vue',
        'bg-blue-600': this.language.toLowerCase().startsWith('dart'),
        'bg-yellow-400': this.language.toLowerCase() === 'javascript',
      }
    },
  },
}
</script>
