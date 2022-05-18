<template>
  <article class="card blog-card blog-card-big">
    <img :src="article.img" :alt="article.alt" class="rounded">
    <div class="flex flex-col justify-items-start align-middle mt-3 md:ml-4">
      <small class="block text-custom-gray text-center md:text-left">
        {{ article.date | formatDate }}
      </small>
      <Heading type="h2" :text="article.title" :has-brackets="false" />
      <p class="max-w-screen-sm">
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
.blog-card-big {
  @apply md:flex-row;
}
img {
  max-height: 12rem;
}
@media (min-width: 768px) {
  article {
    justify-content: stretch;
  }
}
</style>
