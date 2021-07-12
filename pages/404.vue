<template>
  <div class="xl-container h-screen text-center">
    <h2 class="text-2xl mt-12">Oops! Algo ha salido mal…</h2>
    <img src="@/assets/images/error.png" class="m-auto" />
    <Button class="mt-4 mx-auto" @btn-clicked="goHome">llévame a casa</Button>
  </div>
</template>

<script>
export default {
  methods: {
    goHome() {
      this.$router.push({ name: 'index' })
    },
  },
}
</script>
