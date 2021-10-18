<template>
  <article class="xl-container p-4">
    <h1 class="text-3xl xl:text-center">
      {{ article.title }}
    </h1>
    <small class="block xl:text-center">
      {{ article.date | formatDate }}
    </small>
    <ul class="flex justify-center mt-4">
      <li v-for="(tag, index) in article.tags" :key="index" class="mr-3">
        <Tag :text="tag" @tag-clicked="onTagClicked(tag)" />
      </li>
    </ul>
    <img :src="article.img" :alt="article.alt" class="mt-4 rounded">

    <nuxt-content :document="article" />
    <div class="text-center">
      <ShareOnTwitterLink
        :article-title="article.title"
        :article-url="article.articleUrl"
      />
    </div>
  </article>
</template>

<script>
import link from '../../helpers/link'
import CONSTANTS from '@/helpers/constants'
import { formatDate } from '@/components/helpers/filters'
import ShareOnTwitterLink from '~/components/ui/shared/ShareOnTwitterLink'

export default {
  components: { ShareOnTwitterLink },
  filters: {
    formatDate
  },
  async asyncData ({ params, $content }) {
    const article = await $content('articles', params.slug).fetch()

    return { article }
  },
  head () {
    return {
      title: `${this.article.title} | ${CONSTANTS.WEB_TITLE}`,
      link: [
        ...link,
        {
          rel: 'image_src',
          href: this.article.metaImg
            ? this.article.metaImg
            : this.article.thumbnail
        }
      ],
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: this.article.description
        },
        {
          hid: 'twitter:title',
          name: 'twitter:title',
          content: `${this.article.title} | ${CONSTANTS.WEB_TITLE}`
        },
        {
          hid: 'twitter:description',
          name: 'twitter:description',
          content: this.article.description
        },
        {
          hid: 'og:title',
          name: 'og:title',
          content: `${this.article.title} | ${CONSTANTS.WEB_TITLE}`
        },
        {
          hid: 'og:description',
          name: 'og:description',
          content: this.article.description
        },
        {
          hid: 'og:image',
          property: 'og:image',
          content: this.article.metaImg
            ? this.article.metaImg
            : this.article.thumbnail
        },
        {
          hid: 'og:image:secure_url',
          property: 'og:image',
          content: this.article.metaImg
            ? this.article.metaImg
            : this.article.thumbnail
        },
        {
          hid: 'og:image:alt',
          property: 'og:image:alt',
          content: this.article.title
        },
        {
          hid: 'og:url',
          property: 'og:url',
          content: this.article.articleUrl
        }
      ]
    }
  },
  methods: {
    onTagClicked (tag) {
      this.$router.push({ name: 'blog', query: { tag } })
    }
  }
}
</script>

<style scoped>
article {
  max-width: 50rem;
}
.article-twitter-link {
  position: fixed;
  left: 50%;
  bottom: 3rem;
}
</style>
