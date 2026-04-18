/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./index.html'],
  theme: {
    extend: {
      colors: {
        songhe: {
          primary: '#1A365D',
          'primary-active': '#153050',
          mint: '#F0FFF4',
          surface: '#FAFAFA',
          text: '#1a202c',
          'text-muted': '#4a5568',
        },
      },
      maxWidth: {
        mobile: '430px',
      },
      minHeight: {
        touch: '60px',
      },
    },
  },
  plugins: [],
}
