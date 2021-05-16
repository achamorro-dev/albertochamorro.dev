<template>
  <div class="xl-container p-8">
    <Heading type="h2" text="últimos artículos" class="mb-4 xl:mb-8" />
    <ul
      v-if="latestArticles && latestArticles.length > 0"
      class="my-6 grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 md:col-gap-6"
    >
      <li v-for="(article, index) in latestArticles" :key="index">
        <NuxtLink
          :to="{ name: 'blog-slug', params: { slug: article.slug } }"
          class="hover:no-underline"
        >
          <BlogCardSmall :article="article" class="mb-6 px-8 xl:px-0" />
        </NuxtLink>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'LatestArticles',
  data() {
    return {
      latestArticles: [],
    }
  },
  async fetch() {
    this.latestArticles = await this.$content('articles')
      .only(['title', 'description', 'img', 'alt', 'slug', 'updatedAt'])
      .sortBy('createdAt', 'asc')
      .fetch()
  },
}
</script>
