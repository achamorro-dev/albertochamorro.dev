<template>
  <a :href="tweetLink" target="_blank" class="twitter-link">
    <span>Compartir el artículo</span>
    <fa :icon="['fab', 'twitter']" class="twitter-link__icon" />
  </a>
</template>

<script>
const TWITTER_URL = 'https://twitter.com/share'

export default {
  name: 'ShareOnTwitterLink',
  props: {
    articleUrl: String,
    articleTitle: String
  },
  computed: {
    tweetLink () {
      const link = new URL(TWITTER_URL)
      link.searchParams.append('url', this.articleUrl)
      link.searchParams.append('text', `${this.articleTitle} de @achamorro_dev`)

      return link
    }
  }
}
</script>

<style scoped>
.twitter-link {
  @apply inline-flex content-between items-center px-2 py-1 cursor-pointer bg-white text-custom-gray;
  border: 2px solid #00acee;
  border-radius: 1rem;
  font-weight: 600;
  font-size: .9rem;
}
.twitter-link:hover {
  background-color: #00acee;
  text-decoration: none;
  color: white;
}
.dark .twitter-link span {
  @apply text-custom-gray;
}
.twitter-link__icon {
  @apply text-2xl ml-4;
  color: #00acee;
}
.twitter-link:hover .twitter-link__icon {
  @apply text-white;
}
</style>
