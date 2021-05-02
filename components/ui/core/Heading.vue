<template>
  <div>
    <h1 v-if="type === 'h1'" class="text-2xl">
      <span class="custom-path-bg px-2">{{ firstWord }}</span> {{ restOfWords }}
    </h1>
    <h2 v-if="type === 'h2'" class="text-2xl">
      <span class="custom-path-bg px-2">{{ firstWord }}</span> {{ restOfWords }}
    </h2>
    <h3 v-if="type === 'h3'" class="text-xl">
      <span class="custom-path-bg px-2">{{ firstWord }}</span> {{ restOfWords }}
    </h3>
  </div>
</template>

<script>
export default {
  name: 'Heading',
  props: {
    type: {
      type: String,
      required: false,
      default: 'h1',
      validator: (value) => ['h1', 'h2', 'h3'].includes(value),
    },
    text: {
      type: String,
      required: false,
      default: '',
    },
  },
  data() {
    return {
      textSplitted: this.text.split(' '),
    }
  },
  computed: {
    firstWord() {
      return this.textSplitted.length < 2 ? this.text : this.textSplitted[0]
    },
    restOfWords() {
      if (this.textSplitted.length < 2) return ''

      return this.textSplitted.reduce((finalText, value, index) => {
        if (index !== 0) {
          finalText += `${value} `
        }

        return finalText
      }, '')
    },
  },
}
</script>
