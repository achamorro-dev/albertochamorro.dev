<template>
  <section class="xl-container text-center">
    <h1 class="mb-4 text-4xl text-center">sobre mí</h1>
    <MeSummary />
    <SkillsAndTools />
    <WorkTimeline :work-timeline-items="workTimelineItems" />
  </section>
</template>

<script>
export default {
  async asyncData({ $content, params }) {
    const workTimelineItems = await $content('work')
      .only(['date', 'items'])
      .sortBy('year', 'desc')
      .fetch()

    return {
      workTimelineItems,
    }
  },
}
</script>

<style scoped>
section {
  min-height: 80vh;
}
</style>
