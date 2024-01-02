export class Datetime {
  static toHumanDate(date: Date): string {
    return new Intl.DateTimeFormat('es-ES', {
      dateStyle: 'long',
    }).format(date)
  }
}
