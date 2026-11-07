#import "fonts-colors.typ": *
#import "@preview/codetastic:0.2.2": qrcode

// title-icon(self.store.icon, 100%)
#let title-icon(icon, w: auto, h: 1em) = {
  box(
    width: w,
    height: h,
    icon,
  )
}

// #game-jam-jar-with-shadow()
#let game-jam-jar-with-shadow() = {
  place(
    dx: 0mm,
    dy: 0mm,
    image("/godot-intro/assets/game-jam-2026-pixel-jar-shadow.svg", width: 10em),
  )
  place(
    dx: -5mm,
    dy: -5mm,
    image("/godot-intro/assets/game-jam-2026-pixel-jar.gif", width: 10em),
  )
}


//usage: grid.cell(game-jam-jar-with-lid-and-particles(8cm)),
#let game-jam-jar-with-lid-and-particles(height, qr: false, url: false) = {
  let bx(c, s: 1.2em) = box(fill: c, stroke: c, height: s, width: s)

  let bxb = bx.with(s: height * .07)
  let bxs = bx.with(s: height * .04)
  let cs = colors.game-jam

  box(width: height * 1.8, height: height, {
    // jam art pixels
    place(dx: 0pt, dy: 0pt, bxs(cs.neutral-dark))
    place(dx: height * .21, dy: height * .04, bxs(cs.neutral-dark))
    place(dx: height * .01, dy: height * .24, bxs(cs.neutral-dark))
    place(dx: height * .07, dy: height * .1, bxb(cs.neutral-dark))

    place(
      dx: height * .08,
      dy: height * .1,
      image("/poster/export/game-jam-2026-pixel-jar.gif", width: height * .8),
    )

    place(dx: height * .88, dy: height * .20, rotate(10deg, {
      place(image(
        "/poster/export/game-jam-2026-pixel-lid.gif",
        width: height * .92,
      ))
      // #place(image("/web/img/jam-lid.png", width: 9cm))
      if qr {
        place(dx: height * .32, dy: height * .16, qrcode(
          "game-jam.open-ost.ch",
          colors: (cs.white, cs.black),
          quiet-zone: 1,
          width: height * .29,
        ))
      }
    }))

    // lid art pixels
    place(dx: height * 1.41, dy: height * .23, bxs(cs.neutral-dark))
    place(dx: height * 1.73, dy: height * .13, bxb(cs.neutral-dark))
    place(dx: height * 1.57, dy: height * .21, bxs(cs.neutral-dark))
    place(dx: height * 1.61, dy: height * .31, bxb(cs.neutral-dark))
    place(dx: height * 1.75, dy: height * .37, bxs(cs.neutral-dark))

    if url {
      place(
        dx: height * .88,
        dy: height * .91,
        grid(
          columns: 2,
          align: center + horizon,
          gutter: height * .04,
          image(height: height * .08, "/web/img/logo_only.svg"),
          text(
            size: height * .08,
            weight: "bold",
            fill: cs.neutral-dark,
            link("game-jam.open-ost.ch"),
          ),
        ),
      )
    }
  })
}

#let game-jam-jar-with-lid-and-particles-simple() = {
  let c1 = rgb("#f9b26f")
  let c2 = rgb("#f37947")
  let c3 = rgb("#943066")
  let c4 = rgb("#6f3129")
  let c7 = rgb("#a2482f")
  let c5 = rgb("#000000")
  let c6 = rgb("#E5E3E2")
  let bx(c, s: 1.2em) = box(fill: c, stroke: c, height: s, width: s)
  let bxb = bx.with(s: 1.8em)
  let bxs = bx.with(s: 1em)

  [
    // ik this is pretty scuffed
    #scale(90%, box(width: 100%, height: 10cm)[

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
        image(
          "/poster/export/game-jam-2026-pixel-jar.gif",
          width: 28mm * 3,
          scaling: "pixelated",
        ),
      )

      #place(dx: 10cm, dy: 25mm, rotate(10deg, [
        #place(image(
          "/poster/export/game-jam-2026-pixel-lid.gif",
          width: 32mm * 3,
          scaling: "pixelated",
        ))
        // #place(image("/web/img/jam-lid.png", width: 9cm))
        #place(dx: 3.2cm, dy: 1.6cm, qrcode(
          "game-jam.open-ost.ch",
          colors: (c6, c5),
          quiet-zone: 1,
          width: 3cm,
        ))
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
        dx: 10.2cm,
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

    ])
  ]
}


// usage: grid.cell(game-jam-logo(3cm, pixels: false))
#let game-jam-logo(height, pixels: true) = box(
  height: height,
  width: height * 3.2,
  align(center, {
    let bx(c, s: 1.2em) = box(fill: c, stroke: c, height: s, width: s)

    let bxs = bx.with(s: height / 12)
    let cs = colors.game-jam

    set par(leading: height * .1)

    text(size: height * .6, font: fonts.game-jam.square-o, fill: cs.tertiary)[
      OPEN \
    ]
    text(size: height * .7, font: fonts.game-jam.square, fill: cs.tertiary)[
      GAME JAM
    ]

    if pixels {
      // GAME pixels
      place(dx: height / 6 * -.7, dy: height / 6 * -5.1, bxs(cs.tertiary))
      place(dx: height / 6 * .4, dy: height / 6 * -4.6, bxs(cs.tertiary))
      place(dx: height / 6 * 1.2, dy: height / 6 * -3.8, bxs(cs.tertiary))
      place(dx: height / 6 * -.1, dy: height / 6 * -2.6, bxs(cs.tertiary))
      place(dx: height / 6 * -.3, dy: height / 6 * -3.4, bxs(cs.tertiary))

      // JAM pixels
      place(dx: height * 18.4 / 6, dy: height / 6 * -.2, bxs(cs.tertiary))
      place(dx: height * 20.3 / 6, dy: height / 6 * 0.2, bxs(cs.tertiary))
      place(dx: height * 19.3 / 6, dy: height / 6 * 0.7, bxs(cs.tertiary))
      place(dx: height * 17.9 / 6, dy: height / 6 * 1.2, bxs(cs.tertiary))
      place(dx: height * 19.9 / 6, dy: height / 6 * 1.8, bxs(cs.tertiary))
    }
  }),
)
