import CONSTANTS from './constants'

export default [
  { charset: 'utf-8' },
  { name: 'viewport', content: 'width=device-width, initial-scale=1' },
  { hid: 'description', name: 'description', content: '' },
  { name: 'msapplication-TileColor', content: '#ffffff' },
  { name: 'msapplication-TileImage', content: '/ms-icon-144x144.png' },
  { name: 'theme-color', content: '#ffffff' },
  {
    hid: 'description',
    name: 'description',
    content: CONSTANTS.WEB_DESCRIPTION,
  },
  {
    hid: 'author',
    author: 'Alberto Chamorro',
  },
  {
    hid: 'twitter:card',
    name: 'twitter:card',
    content: 'summary_large_image',
  },
  {
    hid: 'twitter:creator',
    name: 'twitter:creator',
    content: '@achamorro_dev',
  },
  {
    hid: 'twitter:domain',
    name: 'twitter:domain',
    content: 'albertochamorro.dev',
  },
  {
    hid: 'twitter:site',
    name: 'twitter:site',
    content: '@achamorro_dev',
  },
  {
    hid: 'twitter:title',
    name: 'twitter:title',
    content: CONSTANTS.WEB_TITLE,
  },
  {
    hid: 'twitter:description',
    name: 'twitter:description',
    content: CONSTANTS.WEB_DESCRIPTION,
  },
  {
    hid: 'og:url',
    property: 'og:url',
    content: 'https://albertochamorro.dev',
  },
  {
    hid: 'og:type',
    property: 'og:type',
    content: 'website',
  },
  {
    hid: 'og:locale',
    property: 'og:locale',
    content: 'es_ES',
  },
  {
    hid: 'og:title',
    property: 'og:title',
    content: process.env.APP_TITLE,
  },
  {
    hid: 'og:description',
    property: 'og:description',
    content: process.env.APP_DESC,
  },
  {
    hid: 'og:site_name',
    property: 'og:site_name',
    content: 'pablosirera.com',
  },
  {
    hid: 'og:image',
    property: 'og:image',
    content:
      'https://res.cloudinary.com/de5xzoviz/image/upload/v1592684920/pablosirera.jpg',
  },
  {
    hid: 'og:image:secure_url',
    property: 'og:image',
    content:
      'https://res.cloudinary.com/de5xzoviz/image/upload/v1592684920/pablosirera.jpg',
  },
  {
    hid: 'og:image:alt',
    property: 'og:image:alt',
    content: 'Pablo Sirera | Desarrollador Web en Valencia',
  },
  {
    hid: 'og:image:type',
    property: 'og:image:type',
    content: 'image/jpeg',
  },
  {
    hid: 'google-site-verification',
    name: 'google-site-verification',
    content: 'stbDTm71faQjfZWQC6edmlVgwdw7EpBB0jWRhYsdRB8',
  },
]
