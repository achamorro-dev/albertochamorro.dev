<template>
  <a
    target="_blank"
    class="flex flex-col items-center font-medium"
    :href="link"
    :class="color"
    :title="title"
  >
    <component :is="componentSelected" class="w-12 h-12" />
  </a>
</template>

<script>
const LOGO_DEFINITIONS = [
  { key: 'js', component: 'JsImage' },
  { key: 'ts', component: 'TsImage' },
  { key: 'vue', component: 'VueImage' },
  { key: 'nuxt', component: 'NuxtImage' },
  { key: 'sass', component: 'SassImage' },
  { key: 'tailwind', component: 'TailwindImage' },
  { key: 'flutter', component: 'FlutterImage' },
  { key: 'firebase', component: 'FirebaseImage' },
  { key: 'jest', component: 'JestImage' },
  { key: 'storybook', component: 'StorybookImage' },
  { key: 'git', component: 'GitImage' },
  { key: 'github', component: 'GitHubImage' },
  { key: 'terminal', component: 'TerminalImage' },
  { key: 'figma', component: 'FigmaImage' },
  { key: 'vscode', component: 'VSCodeImage' },
  { key: 'atlassian', component: 'AtlassianImage' },
  { key: 'notion', component: 'NotionImage' },
  { key: 'adobexd', component: 'AdobeXDImage' },
]

export default {
  name: 'LogoImage',
  components: {
    JsImage: () => import('@/assets/logos/js.svg?inline'),
    TsImage: () => import('@/assets/logos/typescript.svg?inline'),
    VueImage: () => import('@/assets/logos/vue.svg?inline'),
    NuxtImage: () => import('@/assets/logos/nuxt.svg?inline'),
    SassImage: () => import('@/assets/logos/sass.svg?inline'),
    TailwindImage: () => import('@/assets/logos/tailwindcss.svg?inline'),
    FlutterImage: () => import('@/assets/logos/flutter.svg?inline'),
    FirebaseImage: () => import('@/assets/logos/firebase.svg?inline'),
    JestImage: () => import('@/assets/logos/jest.svg?inline'),
    GitImage: () => import('@/assets/logos/git.svg?inline'),
    GitHubImage: () => import('@/assets/logos/github.svg?inline'),
    TerminalImage: () => import('@/assets/logos/terminal.svg?inline'),
    FigmaImage: () => import('@/assets/logos/figma.svg?inline'),
    VSCodeImage: () => import('@/assets/logos/vscode.svg?inline'),
    AtlassianImage: () => import('@/assets/logos/atlassian.svg?inline'),
    NotionImage: () => import('@/assets/logos/notion.svg?inline'),
    AdobeXDImage: () => import('@/assets/logos/adobexd.svg?inline'),
    StorybookImage: () => import('@/assets/logos/storybook.svg?inline'),
  },
  props: {
    link: {
      type: String,
      required: true,
    },
    type: {
      type: String,
      required: true,
      validator: (value) => {
        return LOGO_DEFINITIONS.map((def) => def.key).includes(value)
      },
    },
    title: {
      type: String,
      required: false,
      default: '',
    },
    text: {
      type: String,
      required: false,
      default: '',
    },
    color: {
      type: String,
      required: false,
      default: '',
    },
  },
  computed: {
    componentSelected() {
      return LOGO_DEFINITIONS.find((logo) => logo.key === this.type).component
    },
  },
}
</script>
