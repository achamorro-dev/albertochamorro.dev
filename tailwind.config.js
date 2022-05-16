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
        'custom-yellow': '#FFD614',
        'custom-red': '#D6603F',
        //'custom-gray': '#313638',
        'custom-gray': '#29313D',
        'custom-light-gray': '#f0f1f3',
        'custom-blue': '#345995',
        'custom-green': '#2A9D8F'
      },
      fontFamily: {
        display: ['Cera Round Pro Bold', 'sans-serif'],
        body: ['Cera Round Pro Regular', 'sans-serif']
      }
    }
  }
}
