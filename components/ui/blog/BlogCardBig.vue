<template>
  <article
    class="
      flex flex-col
      justify-center
      items-center
      p-4
      rounded-md
      md:flex-row
      hover:shadow-xl
    "
  >
    <img :src="article.img" :alt="article.alt" class="rounded">
    <div class="flex flex-col justify-items-start align-middle mt-3 md:ml-4">
      <small class="block text-custom-gray text-center md:text-left">
        {{ article.date | formatDate }}
      </small>
      <Heading type="h2" :text="article.title" :has-custom-path="false" />
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
article {
  transition: all 0.5s ease;
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
