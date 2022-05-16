<template>
  <article class="xl-container p-4">
    <Heading
      type="h2"
      text="últimos artículos"
      class="mb-2 xl:mb-4"
      :has-brackets="false"
    />
    <ul
      v-if="latestArticles && latestArticles.length > 0"
      class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-2"
    >
      <li v-for="(article, index) in latestArticles" :key="index">
        <NuxtLink
          :to="{ name: 'blog-slug', params: { slug: article.slug } }"
          class="hover:no-underline"
        >
          <BlogCardSmall :article="article" />
        </NuxtLink>
      </li>
    </ul>
  </article>
</template>

<script>
export default {
  name: 'LatestArticles',
  data () {
    return {
      latestArticles: []
    }
  },
  async fetch () {
    this.latestArticles = await this.$content('articles')
      .only(['title', 'description', 'thumbnail', 'alt', 'slug', 'date'])
      .sortBy('date', 'desc')
      .limit(3)
      .fetch()
  }
}
</script>
