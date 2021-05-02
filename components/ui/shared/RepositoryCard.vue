<template>
  <a :href="href" target="_blank" class="rounded p-4 flex flex-col">
    <div class="flex items-center">
      <OcticonRepo />
      <h3>{{ name }}</h3>
    </div>
    <p>
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium omnis
      recusandae fuga, beatae impedit voluptatibus qui facere
    </p>
    <div class="flex items-center"></div>
  </a>
</template>

<script>
export default {
  name: 'RepositoryCard',
  components: {
    OcticonRepo: () => import('@/assets/images/burger.svg'),
  },
  // props: {
  //   href: {
  //     type: String,
  //     required: true,
  //   },
  //   name: {
  //     type: String,
  //     required: true,
  //   },
  // },
}
</script>
