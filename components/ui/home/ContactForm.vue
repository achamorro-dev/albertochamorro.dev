<template>
  <article id="contacto" class="xl-container p-4">
    <Heading type="h2" text="contacto" class="mb-2 xl:mb-4" :has-brackets="false" />
    <form v-if="!formSent" ref="contactForm" @submit.prevent="sendForm">
      <label for="nameForm" class="text-lg mb-2">nombre</label>
      <input
        id="nameForm"
        v-model="nameValue"
        name="name"
        type="text"
        required
        class="w-full lg:w-1/3"
      >

      <label for="emailForm" class="text-lg mt-6 mb-2">
        correo electrónico
      </label>
      <input
        id="emailForm"
        v-model="emailValue"
        name="_replyto"
        type="email"
        required
        class="w-full lg:w-1/3"
      >

      <label for="messageForm" class="text-lg mt-6 mb-2">mensaje</label>
      <textarea
        id="messageForm"
        v-model="messageValue"
        name="message"
        required
        class="w-full xl:w-1/2"
      />

      <Button
        class="mt-6"
        :type="inProgress ? 'outline' : 'primary'"
        @btn-clicked="sendForm"
      >
        {{ inProgress ? 'enviando' : 'enviar' }}
      </Button>
      <span v-if="hasError" class="text-sm text-red-600">
        Lo siento, no he podido enviar el formulario. Inténtalo otra vez.
      </span>
    </form>
    <h3 v-else>
      👌 Muchas gracias por contactar conmigo.
    </h3>
  </article>
</template>

<script>
const actionForm = 'https://formspree.io/f/mnqlpdwk'

export default {
  name: 'ContactForm',
  data () {
    return {
      nameValue: '',
      emailValue: '',
      messageValue: '',
      formSent: false,
      inProgress: false,
      hasError: false
    }
  },
  methods: {
    async sendForm () {
      if (this.inProgress) { return }
      if (!this.emailValue || !this.messageValue) {
        this.hasError = true
        return
      }

      this.hasError = false
      this.inProgress = true
      try {
        const response = await fetch(actionForm, {
          method: 'POST',
          body: JSON.stringify({
            name: this.nameValue,
            _replyto: this.emailValue,
            message: this.messageValue
          }),
          headers: {
            Accept: 'application/json'
          }
        })

        if (response.ok) {
          this.inProgress = false
          this.formSent = true
        }
      } catch (error) {
        this.inProgress = false
        this.hasError = true
      }
    }
  }
}
</script>

<style lang="css" scoped>
label {
  @apply block font-display;
}
</style>
