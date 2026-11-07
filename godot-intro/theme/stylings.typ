#import "fonts-colors.typ": *

#let terms-style(body) = {
  show terms.item: it => block(
    below: 1.2em,
    {
      text(weight: "semibold", fill: colors.game-jam.tertiary, it.term)
      [:]
      h(0.5em)
      it.description
    },
  )
  body
}

#let heading-styles(body) = {
  show heading: set text(fill: colors.game-jam.tertiary)

  show heading.where(level: 3): set text(
    size: 1.5em,
  )
  show heading.where(level: 4): set text(
    size: 1.2em,
    fill: colors.game-jam.neutral-dark,
  )

  body
}

#let config-styles(body) = {
  set list(marker: box(
    width: 0.25em,
    place(
      dy: -0.45em,
      circle(
        fill: colors.game-jam.secondary,
        radius: 0.17em,
      ),
    ),
  ))
  show figure.caption: set text(size: 0.6em)
  show footnote.entry: set text(size: 0.6em)
  show link: it => if type(it.dest) == str {
    set text(fill: colors.game-jam.tertiary)
    it
  } else {
    it
  }
  show figure.where(kind: table): set figure.caption(position: top)
  body
}
