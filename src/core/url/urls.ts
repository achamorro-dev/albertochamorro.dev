export const Urls = {
  INDEX: '/',
  ABOUT_ME: '/about-me',
  BLOG: '/blog',
  BLOG_POST: (slug: string): string => `/blog/${slug}`,
}
