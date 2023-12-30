import { defineCollection, z } from 'astro:content'

const blogTags = z.enum(['javascript', 'typescript', 'frontend', 'backend', 'productividad', 'flutter', 'git'])
const blog = defineCollection({
  schema: z.object({
    title: z.string(),
    description: z.string(),
    // TODO
    cover: z.string(),
    metaImg: z.string(),
    alt: z.string(),
    // TODO
    tags: z.array(blogTags),
    date: z.date(),
    canonicalUrl: z.string().url(),
  }),
})

export const collections = { blog }
