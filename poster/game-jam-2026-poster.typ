#import "/lib.typ": *

#let cs = colors.game-jam

#set page(fill: game-jam-bg, margin: 1cm)

#let c1 = rgb("#f9b26f")
#let c2 = rgb("#f37947")
#let c3 = rgb("#943066")
#let c4 = rgb("#6f3129")
#let c7 = rgb("#a2482f")
#let c5 = rgb("#000000")
#let c6 = rgb("#E5E3E2")

#let f1 = "Roboto"
#let f1 = "Roboto"
#let f2 = "SquareFont Outline"
#let f3 = "SquareFont"

#let bx(c, s: 1.2em) = box(fill: c, stroke: c, height: s, width: s)
#let bxb = bx.with(s: 1.8em)
#let bxs = bx.with(s: 1em)

#let line(c) = box(fill: c, stroke: c, height: 0.5mm, width: 15cm)


#set page(fill: gradient.linear(dir: ttb, c1, c2), margin: 1cm)
#set align(center)
#set text(font: f1, weight: "extrabold")
#set text(font: fonts.game-jam.primary, weight: "extrabold")

#import "../godot-intro/theme/game-jam-graphics.typ": *


// #game-jam-logo(5.75cm)
#set par(leading: 2em)

#text(size: 8em, font: f2, fill: c3)[
  OPEN
] \
#text(size: 10em, font: f3, fill: c3)[
  GAME JAM
]

#set par(leading: .5em, spacing: .5em)


// GAME pixels
#place(dx: -1.6cm, dy: -0.6cm, box[
  #place(dx: 1.5cm, dy: -4.5cm, bx(c3))
  #place(dx: 2.6cm, dy: -4cm, bx(c3))
  #place(dx: 3.4cm, dy: -3.2cm, bx(c3))
  #place(dx: 2.1cm, dy: -2cm, bx(c3))
  #place(dx: 1.8cm, dy: -2.8cm, bx(c3))
])

// JAM pixels
#place(dx: 1.6cm, box[
  #place(dx: 16.1cm, dy: -1cm, bx(c3))
  #place(dx: 18cm, dy: -0.6cm, bx(c3))
  #place(dx: 17cm, dy: 0cm, bx(c3))
  #place(dx: 15.6cm, dy: .4cm, bx(c3))
  #place(dx: 17.6cm, dy: 1cm, bx(c3))
])

#text(size: 3.5em, fill: cs.neutral-dark)[
  #v(0.55cm)
  20.–22. November 2026 \
  #text(size: .75em)[OST Rapperswil]
]

#text(size: 27pt, fill: cs.neutral-light)[
  #v(0.25cm)
  Einführung in Godot #box(image("/web/img/godot.png", height: 1em)) #h(4pt) und
  coole Preise!\
  #v(7pt)
  Alleine oder als Gruppe anmelden \
]
#v(-1em)

// #game-jam-jar-with-lid-and-particles(
//   10cm,
//   qr: true,
//   url: true,
// )
//
#game-jam-jar-with-lid-and-particles-simple()

#box(width: 100%, align(left, [
  #text(
    size: 20pt,
    fill: cs.neutral-light,
    weight: "bold",
  )[
    #v(0.1em)
    #h(1.2em)Sponsoren
    #v(0.5em)
  ]
  #align(center + horizon, stack(
    dir: ttb,
    stack(
      dir: ltr,
      spacing: 4em,
      image("../web/img/hostpoint-logo.png", height: 2.3em),
      image("../web/img/impulsort-logo.png", height: 2.7em),
      image("../web/img/open-circle-logo.svg", height: 1.7em),
    ),
    v(0.8em),
    stack(
      dir: ltr,
      spacing: 4em,
      image("../web/img/sdj-logo.png", height: 3.4em),
      image("../web/img/nine-logo.svg", height: 5.7em),
      image("../web/img/ost-logo.svg", height: 3.7em),
      image("../web/img/egswiss-logo.png", height: 4em),
    ),
  ))
]))
