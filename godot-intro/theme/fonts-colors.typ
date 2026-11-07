
#let colors = (
  game-jam: (
    primary: rgb("#f37947"),
    secondary: rgb("#f9b26f"),
    tertiary: rgb("#943066"),
    neutral-dark: rgb("#6f3129"),
    neutral-light: rgb("#a2482f"),
    white: rgb("#E5E3E2"),
    black: rgb("#000000"),
  ),
  ost: (
    primary: rgb("#D72964"),
    secondary: rgb("#8C195F"),
    white: rgb("#FFFFFF"),
    black: rgb("#272727"),
  ),
)

#let fonts = (
  game-jam: (
    primary: "Roboto",
    square: "SquareFont",
    square-o: "SquareFont Outline",
  ),
  ost: (
    primary: "Adelle Sans",
  ),
)

#let game-jam-bg = gradient.linear(
  dir: ttb,
  colors.game-jam.secondary,
  colors.game-jam.primary,
)
