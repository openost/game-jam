#import "fonts-colors.typ": *

#let terms-style(body) = {
  show terms.item: it => block(
    below: 1.2em,
    {
      text(weight: "semibold", fill: colors.game-jam.neutral-dark, it.term)
      [:]
      h(0.5em)
      it.description
    },
  )
  body
}
