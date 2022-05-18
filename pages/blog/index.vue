<template>
  <section class="xl-container p-4">
    <h1 class="mb-4 text-4xl text-center">
      blog
    </h1>

    <!-- <ul class="flex justify-center mt-2 mb-8">
      <li v-for="(tag, index) in availableTags" :key="index" class="mr-3">
        <Tag
          :text="tag"
          :selected="tag === tagSelected"
          @tag-clicked="onTagClicked(tag)"
        />
      </li>
    </ul> -->

    <NuxtLink
      v-if="firstArticle"
      :to="{ name: 'blog-slug', params: { slug: firstArticle.slug } }"
      class="hover:no-underline"
    >
      <BlogCardBig :article="firstArticle" />
    </NuxtLink>
    <ul
      v-if="restOfArticles && restOfArticles.length > 0"
      class="my-6 grid grid-cols-1 md:grid-cols-3 xl:gap-4"
    >
      <li v-for="(article, index) in restOfArticles" :key="index">
        <NuxtLink
          :to="{ name: 'blog-slug', params: { slug: article.slug } }"
          class="hover:no-underline"
        >
          <BlogCardSmall :article="article" />
        </NuxtLink>
      </li>
    </ul>
  </section>
</template>

<script>
const availableTags = ['vue', 'reactjs', 'flutter', 'frontend', 'javascript', 'frontend', 'multiplataforma']

export default {
  async asyncData ({ $content, params }) {
    const articles = await $content('articles')
      .only(['title', 'description', 'img', 'thumbnail', 'alt', 'slug', 'date'])
      .sortBy('date', 'desc')
      .fetch()

    return {
      articles,
      availableTags,
      tagSelected: ''
    }
  },
  computed: {
    filteredArticles () {
      return !this.tagSelected
        ? this.articles
        : this.articles.filter(article =>
          article.tags.includes(this.tagSelected)
        )
    },
    firstArticle () {
      return this.filteredArticles && this.filteredArticles.length > 0
        ? this.filteredArticles[0]
        : null
    },
    restOfArticles () {
      return this.filteredArticles && this.filteredArticles.length > 1
        ? this.filteredArticles.slice(1)
        : null
    }
  },
  mounted () {
    if (this.$router.query?.tag) {
      this.tagSelected = this.$router.query?.tag
    }
  },
  methods: {
    onTagClicked (tag) {
      this.tagSelected = this.tagSelected === tag ? '' : tag
      this.$router.replace({ query: { tag: this.tagSelected } })
    }
  }
}
</script>

<style scoped>
section {
  min-height: 80vh;
}
</style>
