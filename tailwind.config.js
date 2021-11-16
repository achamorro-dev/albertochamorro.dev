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
        'custom-yellow': '#FCBF49',
        'custom-red': '#EF6461',
        'custom-gray': '#313638',
        'custom-blue': '#01BAEF',
        'custom-green': '#20BF55'
      },
      fontFamily: {
        display: ['Poppins', 'sans-serif'],
        body: ['Open Sans', 'sans-serif']
      }
    }
  }
}
