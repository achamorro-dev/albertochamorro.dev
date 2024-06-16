import mdx from '@astrojs/mdx'
import react from '@astrojs/react'
import sitemap from '@astrojs/sitemap'
import vercel from '@astrojs/vercel/serverless'
import { transformerMetaHighlight, transformerNotationDiff, transformerNotationFocus } from '@shikijs/transformers'
import { defineConfig } from 'astro/config'

import robotsTxt from 'astro-robots-txt'

// https://astro.build/config
export default defineConfig({
  site: 'https://albertochamorro.dev',
  output: 'server',
  markdown: {
    syntaxHighlight: 'shiki',
    shikiConfig: {
      theme: 'catppuccin-mocha',
      transformers: [transformerNotationDiff(), transformerNotationFocus(), transformerMetaHighlight()],
    },
  },
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
