<template>
  <article class="text-container m-auto">
    <Heading
      type="h2"
      text="🧑‍💻 tecnologías"
      class="mb-5"
      :has-brackets="false"
    />
    <TechnologiesList />
    <Heading
      type="h2"
      text="🛠️ herramientas"
      :has-brackets="false"
      class="mt-16 mb-5"
    />
    <ToolsList />
  </article>
</template>
