<link rel="stylesheet" href="../../../../Downloads/cera-round-pro-cufonfonts-webfont/style.css">
<template>
  <div class="xl-container h-screen text-center">
    <h2 class="text-2xl mt-12">
      Oops! Algo ha salido mal…
    </h2>
    <img src="@/assets/images/error.png" class="m-auto">
    <NuxtLink
      v-if="firstArticle"
      :to="{ name: 'blog-slug', params: { slug: firstArticle.slug } }"
      class="hover:no-underline"
    >
      <Button class="mt-4 mx-auto">
        llévame
      </Button>
    </NuxtLink>
  </div>
</template>

<script>
export default {
  methods: {
    goHome () {
      this.$router.push({ name: 'index' })
    }
  }
}
</script>
