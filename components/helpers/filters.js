export function formatDate(utcDate) {
  const date = new Date(utcDate)
  const options = {
    weekday: 'long',
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  }

  return date.toLocaleDateString('es', options)
}
