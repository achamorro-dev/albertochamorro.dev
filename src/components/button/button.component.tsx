import classNames from 'classnames/bind'
import type { FC, PropsWithChildren } from 'react'
import css from './button.module.css'

const classes = classNames.bind(css)

type Props = {
  variant?: 'primary' | 'secondary' | 'outline'
} & (
  | {
      onClick: () => void
    }
  | {
      href: string
      target?: HTMLAnchorElement['target']
    }
)

export const Button: FC<PropsWithChildren<Props>> = props => {
  const { variant = 'primary', children } = props

  if ('href' in props) {
    return (
      <a {...props} className={classes('button', `button--${variant}`)}>
        {children}
      </a>
    )
  }

  return (
    <button {...props} className={classes('button', `button--${variant}`)}>
      {children}
    </button>
  )
}
