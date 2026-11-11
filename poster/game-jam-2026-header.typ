#let c1 = rgb("#f9b26f")
#let c2 = rgb("#f37947")
#let c3 = rgb("#943066")
#let c4 = rgb("#6f3129")

#let f1 = "Roboto"
#let f2 = "SquareFont Outline"
#let f3 = "SquareFont"

#set page(
  fill: gradient.linear(dir: ttb, c1, c2),
  margin: 0cm,
  height: 300pt,
  width: 1200pt,
)

#align(horizon + center, pad(x: 1cm, grid(
  align: horizon + center,
  columns: (auto, 1fr, auto),
  image(
    "/poster/export/game-jam-2026-pixel-jar.gif",
    width: 28mm * 3,
    scaling: "pixelated",
  ),
  [
    #text(size: 10em, font: f2, fill: c3)[
      OPEN
    ] \
    #text(size: 12em, font: f3, fill: c3)[
      GAME JAM
    ]],
  rotate(-20deg,image(
    "/poster/export/game-jam-2026-pixel-lid.gif",
    width: 32mm * 3,
    scaling: "pixelated",
  )),
)))
