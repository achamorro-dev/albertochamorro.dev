import classNames from 'classnames/bind'
import { useRef, useState, type FC, type FormEvent } from 'react'
import { Button } from '../../core/button/button.component'
import css from './contact-form.module.css'

const classes = classNames.bind(css)

export const ContactForm: FC = () => {
  const [isLoading, setIsLoading] = useState(false)
  const [showErrorMessage, setShowErrorMessage] = useState(false)
  const [showSuccessMessage, setShowSuccessMessage] = useState(false)
  const form = useRef<HTMLFormElement>(null)

  const onSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    setIsLoading(true)
    setShowErrorMessage(false)

    try {
      const formData = new FormData(form.current!)
      const response = await fetch('https://formspree.io/f/mnqlpdwk', {
        method: 'POST',
        body: formData,
        headers: {
          Accept: 'application/json',
        },
      })

      if (!response.ok) {
        showError()
        return
      }

      setShowSuccessMessage(true)
    } catch (_) {
      showError()
    }
  }
  function showError() {
    setIsLoading(false)
    setShowErrorMessage(true)
  }

  return (
    <form className={classes('contact-form')} onSubmit={onSubmit} ref={form}>
      <label htmlFor="name">Nombre</label>
      <input id="name" name="name" type="text" required />

      <label htmlFor="email">Correo electrónico</label>
      <input id="email" name="_replyto" type="email" required />

      <label htmlFor="message">Mensaje</label>
      <textarea id="message" name="message" rows={5} minLength={5} required></textarea>
      {showErrorMessage && (
        <p className={classes('error-message')}>Algo no ha salido bien, por favor vuelve a intentarlo.</p>
      )}

      {showSuccessMessage ? (
        <p className={classes('success-message')}>Mensaje enviado. ¡Muchas gracias por conectar! 😊</p>
      ) : (
        <Button id="submit-button" type="submit" isLoading={isLoading}>
          Enviar
        </Button>
      )}
    </form>
  )
}
