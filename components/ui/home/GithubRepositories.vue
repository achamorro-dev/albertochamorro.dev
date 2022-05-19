<template>
  <article class="xl-container section-card bg-custom-yellow p-4">
    <Heading type="h2" text="repos en github" class="mb-2 xl:mb-4" :has-brackets="false" />
    <div class="flex flex-col justify-between xl:flex-row gap-2">
      <RepositoryCard
        class="w-75 xl:w-1/3"
        href="https://github.com/achamorro-dev/astro-pokedex"
        description="Ejemplo de Pokedex utilizando el framework Astro utilizando componentes de diferentes frameworks."
        name="astro-pokedex"
        language="Astro"
      />
      <RepositoryCard
        class="w-75 xl:w-1/3"
        href="https://github.com/achamorro-dev/albertochamorro.dev"
        description="Repositorio de esta página desarrollada con JAMStack utilizando VueJS y NuxtJS con nuxt content."
        name="albertochamorro.dev"
        language="VueJS"
      />
      <RepositoryCard
        class="w-75 xl:w-1/3"
        href="https://github.com/achamorro-dev/flutter_glassmorphism"
        description="Repositorio del ejemplo de Glassmorphism con Flutter que mostré en Twitch/YouTube de Flutter España."
        name="flutter_glassmorphism"
        language="Dart / Flutter"
      />
    </div>
  </article>
</template>
