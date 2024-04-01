import { defineCollection, z } from 'astro:content'

const blogTags = z.enum(['javascript', 'typescript', 'frontend', 'backend', 'productividad', 'flutter', 'git', 'css'])
const blog = defineCollection({
  type: 'content',
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

const work = defineCollection({
  type: 'data',
  schema: ({ image }) =>
    z.object({
      title: z.string(),
      period: z.string(),
      location: z.string(),
      description: z.string(),
      logo: image(),
    }),
})

export const collections = { blog }
