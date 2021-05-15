<template>
  <article class="xl-container p-3">
    <h1 class="text-2xl xl:text-center">{{ article.title }}</h1>
    <small class="block xl:text-center">
      {{ article.updatedAt | formatDate }}
    </small>
    <ul class="flex justify-center mt-4">
      <li v-for="(tag, index) in article.tags" :key="index" class="mr-3">
        <Tag :text="tag" @tag-clicked="onTagClicked(tag)" />
      </li>
    </ul>
    <img :src="article.img" :alt="article.alt" class="mt-4 rounded" />
    <nuxt-content :document="article" />
  </article>
</template>

<script>
import { formatDate } from '@/components/helpers/filters'

export default {
  filters: {
    formatDate,
  },
  async asyncData({ params, $content }) {
    const article = await $content('articles', params.slug).fetch()

    return { article }
  },
  methods: {
    onTagClicked(tag) {
      this.$router.push({ name: 'blog', query: { tag } })
    },
  },
}
</script>
