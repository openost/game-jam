#import "@preview/codetastic:0.2.2": qrcode

#let c1 = rgb("#f9b26f")
#let c2 = rgb("#f37947")
#let c3 = rgb("#943066")
#let c4 = rgb("#6f3129")
#let c7 = rgb("#a2482f")
#let c5 = rgb("#000000")
#let c6 = rgb("#E5E3E2")

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

#text(size: 3.5em, fill: c4)[
  #v(0.55cm)
  20.–22. November 2026 \
  #text(size: .75em)[OST Rapperswil]
]

#text(size: 27pt, fill: c7)[
  #v(0.25cm)
  Mit Einführung in Godot #box(image("/web/img/godot.png", height: 1em))  #h(4pt) und coole Preise!\
  #v(7pt)
  Alleine oder als Gruppe anmelden \
  // #v(7pt)

  // #v(-20pt)
]


// kleiner:
/*
#box(width: 100%, height: 11.2cm)[

  // jam art pixels
  #place(dx: 0cm, dy: 4.25cm, box[
    #place(dx: 1.5cm, dy: -4.2cm, bxs(c4))
    #place(dx: 3.6cm, dy: -3.8cm, bxs(c4))
    #place(dx: 1.6cm, dy: -1.8cm, bxs(c4))
    #place(dx: 2.2cm, dy: -3.2cm, bxb(c4))
  ])

  #place(dx: 3cm, dy: 1cm, image("/poster/export/game-jam-2026-pixel-jar.gif", height: 8cm))
  #place(dx: 7.75cm, dy: 6.5cm, rotate(-7deg, [
    #place(image("/poster/export/game-jam-2026-pixel-lid.gif", width: 8cm))
    // #place(image("/web/img/jam-lid.png", width: 9cm))
    #place(dx: 2.9cm, dy: 1.5cm, qrcode("game-jam.open-ost.ch", colors: (c6, c5), quiet-zone: 1, width: 3cm))
  ]))

  // lid art pixels
  #place(dy: 5cm, dx: -1cm, box[
    #place(dx: 15cm, dy: -.2cm, bxs(c4))
    #place(dx: 18.2cm, dy: -1.2cm, bxb(c4))
    #place(dx: 16.6cm, dy: -.4cm, bxs(c4))
    #place(dx: 17cm, dy: .6cm, bxb(c4))
    #place(dx: 18.4cm, dy: 1.2cm, bxs(c4))
  ])


  #place(
    dx: 9cm,
    dy: 14cm,
    stack(
      // TODO icon vertikal zentrieren (px nach unten)
      dir: ltr,
      spacing: .5em,
      image(height: 2em, "/web/img/logo_only.svg"),
      text(
        size: 25pt,
        weight: "bold",
        fill: c4,
        link("game-jam.open-ost.ch"),
      ),
    ),
  )

]
// */

// grösser:
// /*
#box(width: 100%, height: 11.2cm)[

  // jam art pixels
  #place(dx: -0.5cm, dy: 4cm, box[
    #place(dx: 1.5cm, dy: -4.2cm, bxs(c4))
    #place(dx: 3.6cm, dy: -3.8cm, bxs(c4))
    #place(dx: 1.6cm, dy: -1.8cm, bxs(c4))
    #place(dx: 2.2cm, dy: -3.2cm, bxb(c4))
  ])


  #place(
    dx: 2cm,
    dy: 1cm,
    image("/poster/export/game-jam-2026-pixel-jar.gif", width: 28mm * 3),
  )

  #place(dx: 10cm, dy: 25mm, rotate(10deg, [
    #place(image("/poster/export/game-jam-2026-pixel-lid.gif", width: 32mm * 3))
    // #place(image("/web/img/jam-lid.png", width: 9cm))
    #place(dx: 3.2cm, dy: 1.6cm, qrcode("game-jam.open-ost.ch", colors: (c6, c5), quiet-zone: 1, width: 3cm))
  ]))

  // lid art pixels
  #place(dy: 2.9cm, dx: 0cm, box[
    #place(dx: 15cm, dy: -.2cm, bxs(c4))
    #place(dx: 18.2cm, dy: -1.2cm, bxb(c4))
    #place(dx: 16.6cm, dy: -.4cm, bxs(c4))
    #place(dx: 17cm, dy: .6cm, bxb(c4))
    #place(dx: 18.4cm, dy: 1.2cm, bxs(c4))
  ])


  #place(
    dx: 10cm,
    dy: 10.2cm,
    stack(
      // TODO icon vertikal zentrieren (px nach unten)
      dir: ltr,
      image(height: 2em, "/web/img/logo_only.svg"),
      text(
        size: 20pt,
        weight: "bold",
        fill: c4,
        place(
          dx: 0.4em,
          dy: 1pt,
          link("game-jam.open-ost.ch"),
        ),
      ),
    ),
  )

]
// */

#box(width: 100%, align(left, [
  #text(
    size: 22pt,
    fill: c7,
    weight: "bold",
  )[
    #v(0.8mm)
    Sponsoren
    // #place(dy: -6.75mm, dx: 4cm, line(c7))
    #v(0.65cm)
  ]
  #image("sponsors/logo_hostpoint.png", width: 30%)
]))
