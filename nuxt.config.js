import path from 'path'
import fs from 'fs'

import CONSTANTS from './helpers/constants'
import meta from './helpers/meta'
import link from './helpers/link'

function getDynamicPaths(type) {
  return fs
    .readdirSync(path.resolve(__dirname, 'content', type))
    .filter((filename) => path.extname(filename) === '.md')
    .map((filename) => `/blog/${path.parse(filename).name}`)
}

export default {
  // Target (https://go.nuxtjs.dev/config-target)
  target: 'static',

  // Global page headers (https://go.nuxtjs.dev/config-head)
  head: {
    htmlAttrs: {
      lang: 'es',
    },
    title: CONSTANTS.WEB_TITLE,
    meta,
    link,
  },

  // Global CSS (https://go.nuxtjs.dev/config-css)
  css: [],

  // Plugins to run before rendering page (https://go.nuxtjs.dev/config-plugins)
  plugins: [],

  components: [
    {
      path: '~/components', // will get any components nested in let's say /components/test too
      pathPrefix: false,
    },
  ],

  // Modules for dev and build (recommended) (https://go.nuxtjs.dev/config-modules)
  buildModules: [
    // https://go.nuxtjs.dev/eslint
    '@nuxtjs/eslint-module',
    // https://go.nuxtjs.dev/stylelint
    '@nuxtjs/stylelint-module',
    // https://go.nuxtjs.dev/tailwindcss
    '@nuxtjs/tailwindcss',
    // https://www.npmjs.com/package/@nuxtjs/fontawesome
    '@nuxtjs/fontawesome',
    // https://color-mode.nuxtjs.org/
    '@nuxtjs/color-mode',
  ],

  fontawesome: {
    component: 'fa',
    icons: {
      solid: true,
      brands: true,
    },
  },

  colorMode: {
    preference: 'light',
    fallback: 'dark',
    classSuffix: '',
  },

  // Modules (https://go.nuxtjs.dev/config-modules)
  modules: [
    // https://www.npmjs.com/package/@nuxtjs/svg
    '@nuxtjs/svg',
    // https://content.nuxtjs.org/
    '@nuxt/content',
  ],

  sitemap: {
    path: '/sitemap.xml',
    hostname: 'https://albertochamorro.dev',
    cacheTime: 1000 * 60 * 15,
  },

  content: {
    markdown: {
      prism: {
        theme: 'prism-themes/themes/prism-material-oceanic.css',
      },
    },
  },

  // Build Configuration (https://go.nuxtjs.dev/config-build)
  build: {},

  render: {
    static: {
      maxAge: 7 * 24 * 60 * 60 * 1000, // 7 days
    },
  },

  generate: {
    routes: [].concat(getDynamicPaths('articles')),
  },
}
