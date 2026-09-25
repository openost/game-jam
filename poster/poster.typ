#import "@preview/codetastic:0.2.2": qrcode

#let c1 = rgb("#f9b26f")
#let c2 = rgb("#f37947")
#let c3 = rgb("#943066")
#let c4 = rgb("#6f3129")
#let c7 = rgb("#a2482f")
#let c5 = rgb("#000000")
#let c6 = rgb("#E5E3E2")

#let f1 = "Futura-CondensedExtraBold"
#let f2 = "SquareFont Outline"
#let f3 = "SquareFont"

#let bx(c, s: 1.2em) = box(fill: c, stroke: c, height: s, width: s)
#let bxb = bx.with(s: 1.8em)
#let bxs = bx.with(s: 1em)

#set page(fill: gradient.linear(dir: ttb, c1, c2), margin: 1cm)
#set align(center)
#set text(font: f1)

#set par(leading: 2em)

#text(size: 8em, font: f2, fill: c3)[
  OPEN
] \
#text(size: 10em, font: f3, fill: c3)[
  GAME JAM
]

#set par(leading: .5em, spacing: .5em)

#place(dx: -1.6cm, dy: -0.6cm, box[
  #place(dx: 1.5cm, dy: -4.5cm, bx(c3))
  #place(dx: 2.6cm, dy: -4cm, bx(c3))
  #place(dx: 3.4cm, dy: -3.2cm, bx(c3))
  #place(dx: 2.1cm, dy: -2cm, bx(c3))
  #place(dx: 1.8cm, dy: -2.8cm, bx(c3))
])

#place(dx: 1.6cm, box[
  #place(dx: 16.1cm, dy: -1cm, bx(c3))
  #place(dx: 18cm, dy: -0.6cm, bx(c3))
  #place(dx: 17cm, dy: 0cm, bx(c3))
  #place(dx: 15.6cm, dy: .4cm, bx(c3))
  #place(dx: 17.6cm, dy: 1cm, bx(c3))
])

#text(size: 3.5em, fill: c4)[
  20.–22. November 2026 \
  #text(size: .75em)[OST Rapperswil]
]

#text(size: 2em, fill: c7)[
  Mit Einführung in Godot #box(image("/web/img/godot.png", height: 1em)) \
  Alleine oder als Gruppe anmelden \
  #h(6em)Coole Preise!
]

#box(width: 100%, height: 11.2cm)[

  #place(dx: -2cm, dy: 3.6cm, box[
    #place(dx: 1.5cm, dy: -4.2cm, bxs(c4))
    #place(dx: 3.6cm, dy: -3.8cm, bxs(c4))
    #place(dx: 1.6cm, dy: -1.8cm, bxs(c4))
    #place(dx: 2cm, dy: -3.2cm, bxb(c4))
  ])

  #place(dy: 3.4cm, box[
    #place(dx: 15cm, dy: -.2cm, bxs(c4))
    #place(dx: 18.2cm, dy: -1.2cm, bxb(c4))
    #place(dx: 16.6cm, dy: -.4cm, bxs(c4))
    #place(dx: 17cm, dy: .6cm, bxb(c4))
    #place(dx: 18.4cm, dy: 1.2cm, bxs(c4))
  ])

  #place(dx: 10cm, dy: 1cm, stack(
    dir: ltr,
    spacing: .5em,
    image(height: 2em, "/web/img/logo_only.svg"),
    text(
      size: 2em,
      link("game-jam.open-ost.ch"),
    ),
  ))
  #place(dx: .6cm, image("/web/img/jam.png", height: 10cm))
  #place(dx: 8cm, dy: 5cm, rotate(-10deg, [
    #place(image("/web/img/jam-lid.png", width: 10cm))
    #place(dx: 3.5cm, dy: 2cm, qrcode(
      "game-jam.open-ost.ch",
      colors: (c6, c5),
      quiet-zone: 1,
      width: 3cm,
    ))
  ]))
]

#box(width: 100%, align(left, [
  #text(size: 2em)[Sponsoren]

  #image("sponsors/logo_hostpoint.png", width: 30%)
]))
