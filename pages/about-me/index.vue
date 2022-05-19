<template>
  <section class="xl-container text-center">
    <article class="section-card bg-custom-green">
      <h1 class="my-2 text-4xl text-center">
        sobre mí
      </h1>
    </article>
    <MeSummary />
    <SkillsAndTools />
    <WorkTimeline :work-timeline-items="workTimelineItems" />
  </section>
</template>

<script>
export default {
  async asyncData ({ $content, params }) {
    const workTimelineItems = await $content('work')
      .only(['date', 'items'])
      .sortBy('year', 'desc')
      .fetch()

    return {
      workTimelineItems
    }
  }
}
</script>

<style scoped>
section {
  min-height: 80vh;
}
</style>
