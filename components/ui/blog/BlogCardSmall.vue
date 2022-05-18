<template>
  <article class="card blog-card">
    <img :src="article.thumbnail" :alt="article.alt" class="rounded">
    <div class="flex flex-col justify-items-start align-middle w-full mt-3">
      <small class="block text-custom-gray text-center md:text-left">
        {{ article.date | formatDate }}
      </small>
      <Heading type="h3" :text="article.title" :has-brackets="false" />
      <p class="w-full mb-0">
        {{ article.description }}
      </p>
    </div>
  </article>
</template>

<script>
import { formatDate } from '@/components/helpers/filters'

export default {
  filters: {
    formatDate
  },
  props: {
    article: {
      type: Object,
      required: true
    }
  }
}
</script>

<style scoped>
img {
  max-height: 12rem;
}

@media (min-width: 768px) {
  img {
    max-height: initial;
  }
}
</style>
