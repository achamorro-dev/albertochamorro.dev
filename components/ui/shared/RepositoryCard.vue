<template>
  <a
    :href="href"
    target="_blank"
    class="repository-card hover:no-underline hover:shadow-lg"
  >
    <div class="flex items-center">
      <OcticonRepo class="mr-1" />
      <h3>{{ name }}</h3>
    </div>
    <p class="flex-grow">
      {{ description }}
    </p>
    <div class="flex items-center">
      <div class="w-3 h-3 rounded-full mr-1" :class="circleColorClass" />
      <p class="text-xs m-0">{{ language }}</p>
    </div>
  </a>
</template>

<script>
export default {
  name: 'RepositoryCard',
  components: {
    OcticonRepo: () => import('@/assets/images/octicon-repo.svg?inline')
  },
  props: {
    href: {
      type: String,
      required: true
    },
    name: {
      type: String,
      required: true
    },
    description: {
      type: String,
      required: false,
      default: ''
    },
    language: {
      type: String,
      required: true
    }
  },
  computed: {
    circleColorClass () {
      return {
        'bg-green-600': this.language.toLowerCase() === 'vuejs',
        'bg-blue-600': this.language.toLowerCase().startsWith('dart'),
        'bg-yellow-300': this.language.toLowerCase() === 'javascript',
        'bg-yellow-500': this.language.toLowerCase() === 'astro'
      }
    }
  }
}
</script>

<style scoped>
.repository-card {
  @apply p-4 flex flex-col rounded border border-gray-300;
  transition: all 0.3s ease;
}
.repository-card:hover {
  transform: translateY(-0.75rem);
}
</style>
