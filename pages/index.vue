<template>
  <div>
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
          Ahora mismo tengo mi corazón dividido por el lado del desarrollo web
          con
          <b>#VueJs #Nuxt</b> y <b>#TailwindCSS</b> y por el lado del desarrollo
          multiplataforma con <b>#Flutter</b>.
        </p>
        <div class="flex justify-start">
          <button class="mr-6">contacto</button>
          <button>
            <img
              src="https://cdns.iconmonstr.com/wp-content/assets/preview/2013/240/iconmonstr-coffee-7.png"
              class="inline"
              width="16px"
            />
            café
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.home-container {
  min-height: 70vh;
}
</style>
