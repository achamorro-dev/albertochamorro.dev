import mdx from '@astrojs/mdx'
import sitemap from '@astrojs/sitemap'
import { defineConfig } from 'astro/config'
import react from '@astrojs/react'
import vercel from '@astrojs/vercel/serverless'

import robotsTxt from 'astro-robots-txt'

// https://astro.build/config
export default defineConfig({
  site: 'https://albertochamorro.dev',
  output: 'server',
  integrations: [
    mdx(),
    sitemap(),
    react(),
    robotsTxt(),
    vercel({
      webAnalytics: {
        enabled: true,
      },
    }),
  ],
})
