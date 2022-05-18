<template>
  <a
    :href="href"
    target="_blank"
    class="card repository-card"
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
        'bg-green-500': this.language.toLowerCase() === 'vue.js',
        'bg-blue-600': this.language.toLowerCase().startsWith('dart'),
        'bg-yellow-300': this.language.toLowerCase() === 'javascript',
        'bg-yellow-500': this.language.toLowerCase() === 'astro',
        'bg-blue-400': this.language.toLowerCase() === 'react'
      }
    }
  }
}
</script>

<style scoped>
.repository-card {
  @apply items-start hover:no-underline;
  box-shadow: 2px 2px 0 #fff, 4px 4px 0 #000;
}
.dark .repository-card {
  box-shadow: 2px 2px 0 rgb(55, 65, 81), 4px 4px 0 #000;
}

.repository-card:hover,
.dark .repository-card:hover {
  box-shadow: 2px 2px 0 #345995, 4px 4px 0 #000;
}
</style>
