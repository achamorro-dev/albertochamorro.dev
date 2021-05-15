<template>
  <div
    class="xl-container flex flex-col justify-center items-center home-container lg:flex-row"
  >
    <Avatar />
    <div class="text-container">
      <p class="text-xl">👋 ¡Hola!</p>
      <p class="text-xl">
        Soy <b>Alberto Chamorro</b>, Frontend Developer en
        <a href="https://www.vivelibre.es/" target="_blank">@vivelibre</a>. Me
        encanta el café, la Fórmula 1 y la tecnología en general.
      </p>
      <p class="text-xl">
        Ahora mismo tengo mi corazón dividido por el lado del desarrollo web con
        <b>#VueJs #Nuxt</b> y <b>#TailwindCSS</b> y por el lado del desarrollo
        multiplataforma con <b>#Flutter</b>.
      </p>
      <div class="flex justify-start">
        <Button icon="chevron-right" @btn-clicked="goToContact"
          >contacto
        </Button>
        <Button
          icon="coffee"
          type="secondary"
          class="ml-3"
          @btn-clicked="goToCoffee"
          >¿café?</Button
        >
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Greetings',
  methods: {
    goToCoffee() {
      window.open('https://www.buymeacoffee.com/albertochamorro', '_blank')
    },
    goToContact() {
      const contact = document.getElementById('contacto')

      contact && contact.scrollIntoView()
    },
  },
}
</script>

<style scoped>
.home-container {
  min-height: 70vh;
}
</style>
