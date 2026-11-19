#import "/typ/lib.typ": *
#import "@preview/codetastic:0.2.2": qrcode

#let cs = colors.game-jam

#set page(fill: game-jam-bg, margin: 1cm)
#set align(center)
#set text(font: fonts.game-jam.primary, weight: "extrabold")

#game-jam-logo(5.75cm)

#set par(leading: .5em, spacing: .5em)

#text(size: 3.5em, fill: cs.neutral-dark)[
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

#game-jam-jar-with-lid-and-particles(
  10cm,
  qr: true,
  url: true,
)

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
      spacing: 4em,
      image("/web/img/sdj-logo.png", height: 3.7em - 0.3em),
      image("/web/img/nine-logo.svg", height: 6em - 0.3em),
      image("/web/img/ost-logo.svg", height: 4em - 0.3em),
    ),
  ))
]))
