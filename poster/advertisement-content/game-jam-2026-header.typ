#import "/typ/lib.typ": *

#set page(
  fill: gradient.linear(dir: ttb, colors.game-jam.secondary, colors.game-jam.primary),
  margin: 0cm,
  height: 300pt,
  width: 1200pt,
)

#align(horizon + center, pad(x: 1cm, grid(
  align: horizon + center,
  columns: (auto, 1fr, auto),
  image(
    "/poster/export/game-jam-2026-pixel-jar.gif",
    width: 28mm * 2.5,
    scaling: "pixelated",
  ),
  game-jam-logo(18em),
  rotate(-20deg,image(
    "/poster/export/game-jam-2026-pixel-lid.gif",
    width: 32mm * 2.5,
    scaling: "pixelated",
  )),
)))
