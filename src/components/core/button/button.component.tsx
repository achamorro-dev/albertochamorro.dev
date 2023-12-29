import classNames from 'classnames/bind'
import type { FC, PropsWithChildren } from 'react'
import css from './button.module.css'

const classes = classNames.bind(css)

type Props = {
  id?: string
  variant?: 'primary' | 'secondary' | 'outline'
  isLoading?: boolean
} & (
  | {
      type: 'submit' | 'reset'
    }
  | {
      href: string
      target?: HTMLAnchorElement['target']
    }
)

export const Button: FC<PropsWithChildren<Props>> = props => {
  const { variant = 'primary', isLoading = false, children } = props

  const classList = classes('button', `button--${variant}`, { 'button--loading': isLoading })

  if ('href' in props) {
    return (
      <a {...props} className={classList}>
        {children}
      </a>
    )
  }

  return (
    <button {...props} className={classList}>
      {props.isLoading ? 'Cargando...' : children}
    </button>
  )
}
