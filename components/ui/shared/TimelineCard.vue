<template>
  <article class="grid grid-cols-4 gap-2">
    <div>
      <h2 class="text-2xl pt-3 pr-4 text-right">
        {{ date }}
      </h2>
    </div>
    <div class="col-span-3">
      <TimelineItem
        v-for="(item, index) in items"
        :key="index"
        :title="item.title"
        :subtitle="item.location"
      >
        <p class="mb-0 text-xl" v-html="item.information" />
      </TimelineItem>
    </div>
  </article>
</template>

<script>
export default {
  name: 'TimelineCard',
  props: {
    date: {
      type: String,
      required: true
    },
    items: {
      type: Array,
      required: true
    }
  }
}
</script>
