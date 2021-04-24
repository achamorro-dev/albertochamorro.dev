<template>
  <li>
    <a
      :href="link"
      target="_blank"
      class="flex flex-col items-center font-medium"
      :class="color"
    >
      <fa :icon="['fab', type]" class="text-3xl mb-1" />{{ text }}</a
    >
  </li>
</template>

<script>
const SOCIAL_TYPES = ['twitter', 'google', 'linkedin', 'github']

export default {
  name: 'SocialLink',
  props: {
    link: {
      type: String,
      required: true,
    },
    type: {
      type: String,
      required: true,
      validator: (value) => {
        return SOCIAL_TYPES.includes(value)
      },
    },
    text: {
      type: String,
      required: false,
      default: '',
    },
    color: {
      type: String,
      required: false,
      default: 'text-custom-gray',
    },
  },
}
</script>

<style scoped>
.twitter {
  color: #00acee;
}

.google {
  color: #db3236;
}

.linkedin {
  color: #0077b5;
}

.github {
  color: #2c313a;
}

html.dark .twitter,
html.dark .google,
html.dark .linkedin,
html.dark .github {
  color: #f4f4f4;
}
</style>
