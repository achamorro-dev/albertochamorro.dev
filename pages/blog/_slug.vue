<template>
  <article class="xl-container p-3">
    <h1 class="text-3xl xl:text-center">{{ article.title }}</h1>
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
import CONSTANTS from '@/helpers/constants'
import { formatDate } from '@/components/helpers/filters'

export default {
  filters: {
    formatDate,
  },
  async asyncData({ params, $content }) {
    const article = await $content('articles', params.slug).fetch()

    return { article }
  },
  head() {
    return {
      title: `${this.article.title} | ${CONSTANTS.WEB_TITLE}`,
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: this.article.description,
        },
        {
          hid: 'twitter:title',
          name: 'twitter:title',
          content: `${this.article.title} | ${CONSTANTS.WEB_TITLE}`,
        },
        {
          hid: 'twitter:description',
          name: 'twitter:description',
          content: this.article.description,
        },
        {
          hid: 'og:title',
          name: 'og:title',
          content: `${this.article.title} | ${CONSTANTS.WEB_TITLE}`,
        },
        {
          hid: 'og:description',
          name: 'og:description',
          content: this.article.description,
        },
        {
          hid: 'og:image',
          property: 'og:image',
          content: this.article.image,
        },
        {
          hid: 'og:image:secure_url',
          property: 'og:image',
          content: this.article.image,
        },
        {
          hid: 'og:image:alt',
          property: 'og:image:alt',
          content: this.article.title,
        },
      ],
    }
  },
  methods: {
    onTagClicked(tag) {
      this.$router.push({ name: 'blog', query: { tag } })
    },
  },
}
</script>

<style scoped>
article {
  max-width: 50rem;
}
</style>
