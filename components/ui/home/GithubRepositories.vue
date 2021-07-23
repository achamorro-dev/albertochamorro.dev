<template>
  <article class="xl-container p-8">
    <Heading type="h2" text="repos en github" class="mb-4 xl:mb-8" />
    <div class="flex flex-col justify-between xl:flex-row">
      <RepositoryCard
        class="w-75 m-3 xl:m-0 xl:w-1/3"
        href="https://github.com/achamorro-dev/albertochamorro.dev"
        description="Repositorio de mi página personal y mi blog hecha con Vue, Nuxt y Tailwind."
        name="albertochamorro.dev"
        language="Vue"
      />
      <RepositoryCard
        class="w-75 m-3 xl:m-0 xl:mx-3 xl:w-1/3"
        href="https://github.com/achamorro-dev/fast.cli"
        description="Fork del repositorio de Fast, un CLI para Flutter con el que poder crear tu propio CLI y automatizar pasos como la creación de nuevos proyectos."
        name="fast.cli"
        language="Dart / Flutter"
      />
      <RepositoryCard
        class="w-75 m-3 xl:m-0 xl:w-1/3"
        href="https://github.com/achamorro-dev/flutter_glassmorphism"
        description="Repositorio del ejemplo de Glassmorphism con Flutter que mostré en Twitch/YouTube de Flutter España."
        name="flutter_glassmorphism"
        language="Dart / Flutter"
      />
    </div>
  </article>
</template>
