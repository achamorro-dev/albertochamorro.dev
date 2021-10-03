<template>
  <article class="text-container m-auto">
    <Heading
      type="h2"
      text="🧑‍💻 timeline"
      class="mb-5"
      :has-custom-path="false"
    />
    <TimelineCard
      v-for="(workItem, index) in workTimelineItems"
      :key="index"
      :date="workItem.date"
      :items="workItem.items"
    />
  </article>
</template>

<script>
export default {
  props: {
    workTimelineItems: {
      type: Array,
      required: true
    }
  }
}
</script>
