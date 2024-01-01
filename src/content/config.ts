import { defineCollection, z } from 'astro:content'

const blogTags = z.enum(['javascript', 'typescript', 'frontend', 'backend', 'productividad', 'flutter', 'git'])
const blog = defineCollection({
  schema: ({ image }) =>
    z.object({
      title: z.string(),
      description: z.string(),
      cover: image(),
      alt: z.string(),
      tags: z.array(blogTags),
      date: z.date(),
      canonicalUrl: z.string().url(),
    }),
})

export const collections = { blog }
