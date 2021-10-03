module.exports = {
  experimental: {
    darkModeVariant: true
  },
  dark: 'class',
  theme: {
    extend: {
      backgroundColor: theme => ({
        light: theme('colors.white'),
        dark: theme('colors.gray.700')
      }),
      colors: {
        'custom-blue': '#067BC2',
        'custom-green': '#22D39E',
        'custom-gray': '#404e4d'
      },
      fontFamily: {
        display: ['Poppins', 'sans-serif'],
        body: ['Open Sans', 'sans-serif']
      }
    }
  }
}
