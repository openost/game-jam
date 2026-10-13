#import "@preview/codetastic:0.2.2": qrcode

#let c0 = rgb("#D72964")
#let c1 = rgb("#8C195F")
#let c2 = rgb("#000000")
#let c3 = rgb("#FFFFFF")

#let dimensions = (
  margin: (x: 100pt, bottom: 178pt, top: 228pt),
  size: (width: 1080pt, height: 1920pt),
  toppad: 680pt,
  text: (20pt, 24pt, 32pt, 42pt, 60pt, 96pt),
)

#let footer-logo = align(right, image(
  "../../web/img/ost-logo.svg",
  width: dimensions.margin.top,
))

#let lrbox = (cont, swap: false, small: false, fill: c0) => {
  let dim = (auto, 1fr)
  box(
    width: 100%,
    fill: fill,
    radius: dimensions.text.at(0),
    inset: if small {
      (
        y: dimensions.text.at(0) / 2,
        x: dimensions.text.at(4),
      )
    } else { dimensions.text.at(1) },
    grid(
      gutter: dimensions.text.at(4),
      columns: if swap { dim.rev() } else { dim },
      ..(if swap { cont.rev() } else { cont })
    ),
  )
}

#let qrbox = (title, data, small: true, swap: false) => {
  set text(fill: c3)
  let cont = (
    align(horizon + center, box(
      fill: c3,
      qrcode(data, colors: (c3, c2), width: dimensions.margin.x, quiet-zone: 2),
      //   image(
      //   width: dimensions.margin.x, //100pt,
      //   height: dimensions.margin.x, //100pt,
      //   img,
      // )
    )),
    stack(
      dir: ttb,
      spacing: if small {
        dimensions.text.at(0) /*16pt*/
      } else { dimensions.text.at(2) },
      pad(
        top: dimensions.text.at(0) / 2, /*9pt*/
        text(size: dimensions.text.at(1), title),
      ),
      text(
        size: dimensions.text.at(0),
        data,
      ),
    ),
  )
  lrbox(cont, small: small, swap: swap)
}

#let title-layout(body) = {
  set page(
    margin: dimensions.margin,
    footer: footer-logo,
  )
  set text(size: dimensions.text.at(3))
  body
}

#let normal-layout(
  img: "../../web/img/jam.png",
  dim: dimensions,
  body,
) = {
  set page(
    margin: (..dim.margin, top: dim.toppad),
    footer: footer-logo,
  )
  if img != none {
    place(dy: -dim.toppad, dx: -dim.margin.x, box(
      fill: gradient.linear(dir: ltr, rgb("#f9b26f"), rgb("#f37947")),
      width: 100% + dim.margin.x * 2,
      height: dim.toppad,
      {
        place(
          dx: 2cm,
          dy: 2cm,
          image("/web/img/jam.png", width: 28mm * 6),
        )

        place(dx: 18cm, dy: 45mm, rotate(10deg, [
          #place(image(
            "/web/img/jam-lid.png",
            width: 32mm * 6,
          ))
        ]))
      },
    ))
  }
  // v(138pt)
  v(dim.margin.bottom - dim.margin.x / 2)
  body
}

#let advert-layout(body) = {
  set page(
    ..dimensions.size,
    footer-descent: 0pt,
    header-ascent: 0pt,
  )
  set table(stroke: none)
  set text(size: dimensions.text.at(2), font: "Adelle Sans", fill: c2)
  show heading: set text(fill: c1)
  show heading.where(level: 1): set text(size: dimensions.text.at(5))
  show heading.where(level: 2): set text(size: dimensions.text.at(4))
  show heading.where(level: 3): set text(size: dimensions.text.at(3))
  show heading.where(level: 4): set text(size: dimensions.text.at(2))

  body
}

#advert-layout([

  #{
    set page(margin: 0pt)
    place(box(width: 100%, height: 50%, fill: rgb("#f9b26f")))
    place(bottom, box(width: 100%, height: 50%, fill: rgb("#f37947")))
    align(horizon, image("../game-jam-2026-poster.pdf", width: 100%))
    // include "../game-jam-2026-poster.typ"
  }
  #title-layout[

    = Open Game Jam

    #v(1fr)

    === Wann?

    \20. bis 22. November 2026, Start um 15:00 Uhr

    #v(1fr)

    === Wo?

    OST Campus Rapperswil, Zimmer 1.262 \
    Oberseestrasse 10, 8640 Rapperswil SG

    #v(1fr)

    === Was?

    Das grösste Gamedesign und -Entwicklung Event der OST: Der Open Game Jam!

    Es geht um das Thema "open", du bist frei was du damit verbindest. Das ist
    deine Chance, fallst du schon immer ein Game entwickeln oder designen
    wolltest!

    Melde dich an auf game-jam.open-ost.ch

    ==== Es gibt tolle Preise und gratis Pizza ;)

    #v(1fr)

    #qrbox(
      "Weitere Infos und Anmeldung für den Game Jam",
      "https://game-jam.open-ost.ch",
      swap: true,
    )

    #qrbox(
      "Hier geht es zur Matrix Gruppe",
      "https://matrix.to/#/#game-jam:open-ost.ch",
    )

    #v(1fr)

  ]

  #normal-layout[
    == Game Jam

    #v(1fr)

    ==== Worum geht es bei diesem Event?

    Ein Game Jam ist ein Zusammentreffen von Personen, um gemeinsam innerhalb
    einer kurzen Zeitspanne ein Spiel zu entwickeln. Dabei arbeiten Personen mit
    verschiedenen Kenntnissen interdisziplinär zusammen.

    In kleinen Teams (oder alleine) entwickeln alle innerhalb 48h ein Spiel, welches nach
    Wunsch kosenlos auf itch.io und Steam veröffentlicht werden kann.

    #v(1fr)

    ==== Zielgruppe

    Alle Interessierten, die sich mit Gameentwicklung, -Design und Open-Source
    beschäftigen möchten. \
    *Anfänger willkommen!*

    #v(1fr)

    ==== Organisiert von

    #grid(
      columns: 2,
      gutter: dimensions.text.at(4),
      box(radius: 50%, clip: true, image(
        height: 4em,
        width: 4em,
        "../../web/img/logo_only.svg",
      )),
      align(horizon, [
        Verein open\\OST \
        https://open-ost.ch
      ]),
    )

    #v(1fr)
  ]
])
