#import "deps.typ": *
#import "fonts-colors.typ": *

// title-icon(self.store.icon, 100%)
#let title-icon(icon, w: auto, h: 1em) = {
  box(
    width: w,
    height: h,
    icon,
  )
}

// #game-jam-jar-with-shadow()
#let game-jam-jar-with-shadow(width: 10em) = box(
  width: width,
  height: width * 1.2,
  {
    place(
      dx: 0mm,
      dy: 0mm,
      image("assets/game-jam-2026-pixel-jar-shadow.svg", width: width),
    )
    place(
      dx: -5mm,
      dy: -5mm,
      image("assets/game-jam-2026-pixel-jar.gif", width: width),
    )
  },
)

#let pixels-left(height, color: colors.game-jam.tertiary) = {
  let bxs = box(
    fill: color,
    stroke: color,
    height: height / 12,
    width: height / 12,
  )
  place(dx: height / 6 * -.7, dy: height / 6 * -5.1, bxs)
  place(dx: height / 6 * .4, dy: height / 6 * -4.6, bxs)
  place(dx: height / 6 * 1.2, dy: height / 6 * -3.8, bxs)
  place(dx: height / 6 * -.1, dy: height / 6 * -2.6, bxs)
  place(dx: height / 6 * -.3, dy: height / 6 * -3.4, bxs)
}

#let pixels-right(height, color: colors.game-jam.tertiary) = {
  let bxs = box(
    fill: color,
    stroke: color,
    height: height / 12,
    width: height / 12,
  )
  place(dx: height * 18.4 / 6, dy: height / 6 * -.2, bxs)
  place(dx: height * 20.3 / 6, dy: height / 6 * 0.2, bxs)
  place(dx: height * 19.3 / 6, dy: height / 6 * 0.7, bxs)
  place(dx: height * 17.9 / 6, dy: height / 6 * 1.2, bxs)
  place(dx: height * 19.9 / 6, dy: height / 6 * 1.8, bxs)
}

#let pixels-alt-left(height, color: colors.game-jam.neutral-dark) = {
  let bx(s) = box(fill: color, stroke: color, height: s, width: s)

  let bxb = bx(height * .07)
  let bxs = bx(height * .04)

  place(dx: 0pt, dy: 0pt, bxs)
  place(dx: height * .21, dy: height * .04, bxs)
  place(dx: height * .01, dy: height * .24, bxs)
  place(dx: height * .07, dy: height * .1, bxb)
}

#let pixels-alt-right(height, color: colors.game-jam.neutral-dark) = {
  let bx(s) = box(fill: color, stroke: color, height: s, width: s)

  let bxb = bx(height * .07)
  let bxs = bx(height * .04)

  place(dx: height * 1.41, dy: height * .23, bxs)
  place(dx: height * 1.73, dy: height * .13, bxb)
  place(dx: height * 1.57, dy: height * .21, bxs)
  place(dx: height * 1.61, dy: height * .31, bxb)
  place(dx: height * 1.75, dy: height * .37, bxs)
}

//usage: grid.cell(game-jam-jar-with-lid-and-particles(8cm)),
#let game-jam-jar-with-lid-and-particles(height, qr: false, url: false) = {
  let cs = colors.game-jam

  box(width: height * 1.8, height: height, {
    // jam art pixels
    pixels-alt-left(height)

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
    pixels-alt-right(height)

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

// usage: grid.cell(game-jam-logo(3cm, pixels: false))
#let game-jam-logo(height, pixels: true) = box(
  height: height,
  width: height * 3.2,
  align(center, {
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
      pixels-left(height)

      // JAM pixels
      pixels-right(height)
    }
  }),
)
