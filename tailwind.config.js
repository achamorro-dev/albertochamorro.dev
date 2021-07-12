module.exports = {
  experimental: {
    darkModeVariant: true,
  },
  dark: 'class',
  theme: {
    extend: {
      backgroundColor: (theme) => ({
        light: theme('colors.white'),
        dark: theme('colors.gray.700'),
      }),
      colors: {
        'custom-blue': '#067BC2',
        'custom-green': '#24DCA5',
        'custom-gray': '#3e3e3e',
      },
      fontFamily: {
        display: ['Poppins', 'sans-serif'],
        body: ['Open Sans', 'sans-serif'],
      },
    },
  },
}
