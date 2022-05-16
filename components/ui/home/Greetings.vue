<template>
  <article
    class="
      xl-container
      flex flex-col
      justify-center
      items-center
      home-container
      lg:flex-row
    "
  >
    <img
      src="~/assets/images/me.png"
      alt="Foto de Alberto Chamorro"
      class="w-64 h-64 rounded-full m-auto"
    >
    <div class="text-container">
      <span class="text-3xl">¡Hola!</span>
      <span class="text-3xl">👋</span>
      <p class="text-3xl mt-7">
        Soy <b>Alberto Chamorro</b>, Frontend Developer en
        <a href="https://www.autentia.com/" target="_blank">@autentia</a>. Me
        encanta el café, la tecnología, la Fórmula 1 y el Universo
        Cinematográfico de Marvel.
      </p>
      <p class="text-3xl mt-7">
        Ahora mismo tengo mi corazón dividido por el lado del desarrollo web con
        <b>#Vue.js #Nuxt.js</b> y <b>#TailwindCSS</b> y por el lado del desarrollo
        multiplataforma con <b>#Flutter</b>.
      </p>
      <div class="flex justify-start mt-9">
        <Button icon="chevron-right" @btn-clicked="goToContact">
          contacto
        </Button>
        <Button
          icon="coffee"
          type="outline"
          class="ml-3"
          @btn-clicked="goToCoffee"
        >
          ¿café?
        </Button>
      </div>
    </div>
  </article>
</template>

<script>
export default {
  name: 'Greetings',
  methods: {
    goToCoffee () {
      window.open('https://www.buymeacoffee.com/albertochamorro', '_blank')
    },
    goToContact () {
      const contact = document.getElementById('contacto')

      contact && contact.scrollIntoView()
    }
  }
}
</script>

<style scoped>
.home-container {
  min-height: 70vh;
}
</style>
