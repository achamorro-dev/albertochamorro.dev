<template>
  <article
    class="
      flex flex-col
      justify-center
      items-center
      rounded
      md:items-start
      md:flex-row
      hover:shadow-xl
    "
  >
    <img :src="article.img" :alt="article.tag" class="rounded px-3" />
    <div
      class="
        flex flex-col
        justify-items-start
        align-middle
        mt-3
        py-1
        px-3
        md:ml-4
      "
    >
      <small class="block text-custom-gray text-center md:text-left">
        {{ article.updatedAt | formatDate }}
      </small>
      <Heading type="h2" :text="article.title" />
      <p class="max-w-screen-sm">{{ article.description }}</p>
    </div>
  </article>
</template>

<script>
import { formatDate } from '@/components/helpers/filters'

export default {
  filters: {
    formatDate,
  },
  props: {
    article: {
      type: Object,
      required: true,
    },
  },
}
</script>

<style scoped>
article {
  transition: all 0.5s ease;
}
img {
  max-height: 15rem;
}
@media (min-width: 768px) {
  img {
    max-height: 18.75rem;
  }
  article {
    justify-content: stretch;
  }
}
</style>
