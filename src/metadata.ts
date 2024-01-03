// Place any global data in this file.
// You can import this data from anywhere in your site by using the `import` keyword.

import { Urls } from './core/url/urls'

export const SITE_TITLE =
  'Alberto Chamorro · Frontend, JavaScript, TypeScript, Astro, NextJs, ReactJS, Angular, Vue.js, NextJs - Flutter lover'
export const SITE_DESCRIPTION =
  'Alberto Chamorro · Frontend, JavaScript, TypeScript, Astro, NextJs, ReactJS, Angular, Vue.js, NextJs - Flutter lover'

export const MAIN_CONTENT_ID = 'main-content'

export const MAIN_LINKS = [
  {
    name: 'Inicio',
    href: Urls.INDEX,
  },
  {
    name: 'Blog',
    href: Urls.BLOG,
  },
  // {
  //   name: 'Proyectos',
  //   href: '/projects',
  // },
  {
    name: 'Sobre mí',
    href: Urls.ABOUT_ME,
  },
]
