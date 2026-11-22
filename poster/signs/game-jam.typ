#import "/typ/lib.typ": *
#import "@preview/codetastic:0.2.2": qrcode

#let cs = colors.game-jam

#set page(fill: game-jam-bg, margin: 1cm)
#set align(center)
#set text(font: fonts.game-jam.primary, weight: "extrabold")

#game-jam-logo(5.75cm)

#set par(leading: .5em, spacing: .5em)

#v(1fr)

#game-jam-jar-with-lid-and-particles(
  10cm,
  qr: true,
  url: true,
)

#v(1fr)

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
      image("/web/img/hostpoint-logo.png", height: 2.6em - 0.3em),
      image("/web/img/impulsort-logo.png", height: 3em - 0.3em),
      image("/web/img/open-circle-logo.svg", height: 2em - 0.3em),
    ),
    v(0.8em),
    stack(
      dir: ltr,
      spacing: 3em,
      image("/web/img/sdj-logo.png", height: 3.7em - 0.3em),
      image("/web/img/nine-logo.svg", height: 6em - 0.3em),
      image("/web/img/tony-logo.svg", height: 4em),
      image("/web/img/ost-logo.svg", height: 4em - 0.3em),
      image("/web/img/egswiss-logo.png", height: 3.5em),
    ),
  ))
]))
