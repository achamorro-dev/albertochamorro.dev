<template>
  <div class="xl-container">
    <h1 class="mb-4 text-4xl text-center">blog</h1>
    <ul class="flex justify-center mt-2 mb-8">
      <li v-for="(tag, index) in availableTags" :key="index" class="mr-3">
        <Tag
          :text="tag"
          :selected="tag === tagSelected"
          @tag-clicked="onTagClicked(tag)"
        />
      </li>
    </ul>
    <NuxtLink
      v-if="firstArticle"
      :to="{ name: 'blog-slug', params: { slug: firstArticle.slug } }"
      class="hover:no-underline"
    >
      <BlogCardBig :article="firstArticle" class="px-8 xl:px-0" />
    </NuxtLink>
    <ul
      v-if="restOfArticles && restOfArticles.length > 0"
      class="my-6 grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 md:col-gap-6"
    >
      <li v-for="(article, index) in restOfArticles" :key="index">
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
const availableTags = ['vue', 'web']

export default {
  async asyncData({ $content, params }) {
    const articles = await $content('articles')
      .only(['title', 'description', 'img', 'alt', 'slug', 'updatedAt'])
      .sortBy('createdAt', 'asc')
      .fetch()

    return {
      articles,
      availableTags,
      tagSelected: '',
    }
  },
  computed: {
    filteredArticles() {
      return this.articles
    },
    firstArticle() {
      return this.filteredArticles && this.filteredArticles.length > 0
        ? this.filteredArticles[0]
        : null
    },
    restOfArticles() {
      return this.filteredArticles && this.filteredArticles.length > 1
        ? this.filteredArticles.slice(1)
        : null
    },
  },
  mounted() {
    if (this.$router.query?.tag) {
      this.tagSelected = this.$router.query?.tag
    }
  },
  methods: {
    onTagClicked(tag) {
      this.tagSelected = this.tagSelected === tag ? '' : tag
      this.$router.replace({ query: { tag: this.tagSelected } })
    },
  },
}
</script>
