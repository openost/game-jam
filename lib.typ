#import "@preview/touying:0.6.1": *
#import "@preview/codetastic:0.2.2": qrcode

#let colors = (
  game-jam: (
    primary: rgb("#f37947"),
    secondary: rgb("#f9b26f"),
    tertiary: rgb("#943066"),
    neutral-dark: rgb("#6f3129"),
    neutral-light: rgb("#a2482f"),
    white: rgb("#E5E3E2"),
    black: rgb("#000000"),
  ),
  ost: (
    primary: rgb("#D72964"),
    secondary: rgb("#8C195F"),
    white: rgb("#FFFFFF"),
    black: rgb("#000000"),
  ),
)

#let fonts = (
  game-jam: (
    primary: "Roboto",
    square: "SquareFont",
    square-o: "SquareFont Outline",
  ),
  ost: (
    primary: "Adelle Sans",
  ),
)

#let game-jam-bg = gradient.linear(
  dir: ttb,
  colors.game-jam.secondary,
  colors.game-jam.primary,
)

#let bx(c, s: 1.2em) = box(fill: c, stroke: c, height: s, width: s)

#let game-jam-logo(height, qr: false, url: false) = {
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

#let game-jam-title(height, pixels: true) = box(
  height: height,
  width: height * 3.2,
  align(center, {
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

#let slide(
  title: auto,
  header: auto,
  footer: auto,
  align: auto,
  config: (:),
  repeat: auto,
  setting: body => body,
  composer: auto,
  ..bodies,
) = touying-slide-wrapper(self => {
  if align != auto {
    self.store.align = align
  }
  if title != auto {
    self.store.title = title
  }
  if header != auto {
    self.store.header = header
  }
  if footer != auto {
    self.store.footer = footer
  }
  let new-setting = body => {
    show: std.align.with(self.store.align)
    show: setting
    body
  }
  touying-slide(
    self: self,
    config: config,
    repeat: repeat,
    setting: new-setting,
    composer: composer,
    ..bodies,
  )
})

#let title-slide(config: (:), ..args) = touying-slide-wrapper(self => {
  let new-config = config
  new-config = utils.merge-dicts(
    config,
    config-page(
      fill: game-jam-bg,
      header: none,
      footer: none,
      margin: (top: 1em, left: 1em),
    ),
  )

  self = utils.merge-dicts(self, new-config)

  let body = {
    v(3fr)

    block(
      width: 65%,
      inset: (
        left: 0.5em,
        right: 5em,
      ),
      breakable: false,
      grid(
        columns: (100%, 100%),
        table(
          gutter: (0.5em, 0em),
          stroke: none,
          align: left,
          columns: (auto, auto),

          table.cell(
            colspan: 2,
            align(center, text(
              weight: "bold",
              size: 3.5em,
              font: fonts.game-jam.square,
              fill: colors.game-jam.tertiary,
              self.store.title,
            )),
          ),
          table.cell(
            colspan: 2,
            align(center, text(
              size: 2em,
              font: fonts.game-jam.square-o,
              fill: colors.game-jam.tertiary,
              self.store.subtitle,
            )),
          ),

          table.cell(colspan: 2, v(0.5em)),
          "Autoren: ",
          self.store.authors.join(", "),
          "Datum: ",
          self.store.date,
        ),
        grid(
          columns: 1fr,
          align: center,

          image("/poster/export/game-jam-2026-pixel-jar.gif", width: 70%),
          // grid.cell(game-jam-logo(8cm)),
          // grid.cell(v(2cm)),
          // grid.cell(game-jam-title(3cm, pixels: false)),
        ),
      ),
    )

    v(1fr)
  }

  touying-slide(self: self, body)
})

#let outline-slide(
  config: (:),
  title: utils.i18n-outline-title,
  level: 1,
  numbered: true,
  ..args,
) = touying-slide-wrapper(self => {
  self.store.title = title
  touying-slide(
    self: self,
    config: config,
    std.align(
      self.store.outline-align,
      components.adaptive-columns(
        text(
          fill: colors.game-jam.neutral-dark,
          weight: "bold",
          components.custom-progressive-outline(
            level: level,
            alpha: self.store.alpha,
            indent: (0em, 1em),
            vspace: (.4em,),
            numbered: (numbered,),
            depth: 1,
            ..args.named(),
          ),
        ),
      )
        + args.pos().sum(default: none),
    ),
  )
})

#let new-section-slide(
  config: (:),
  title: utils.i18n-outline-title,
  level: 1,
  numbered: true,
  ..args,
  body,
) = outline-slide(
  config: config,
  title: title,
  level: level,
  numbered: numbered,
  ..args,
  body,
)

#let ending-slide(
  config: (:),
  title: none,
  body: none,
) = touying-slide-wrapper(self => {
  let content = {
    grid(
      columns: (1fr, 1fr),
      rows: 1fr,
      place(
        align(
          center + horizon,
          text(
            title,
            size: 3em,
            weight: "bold",
            fill: colors.game-jam.white,
          ),
        ),
        dy: 10em,
        dx: 4em,
      ),
      box(
        inset: (left: 4em),
        height: 100%,
        align(
          center + horizon,
          body,
        ),
      ),
    )
  }

  let new-config = utils.merge-dicts(
    config,
    config-page(
      fill: game-jam-bg,
      background: {
        place(
          top + left,
          dx: 3cm,
          dy: 2cm,
          game-jam-logo(10cm),
        )
        place(
          top + left,
          dx: 12cm,
          dy: 12cm,
          text(
            font: fonts.game-jam.square,
            fill: colors.game-jam.tertiary,
            size: 4em,
          )[Viel Spass!],
        )
      },
      header: none,
      footer: none,
      margin: 0em,
    ),
  )

  touying-slide(
    self: self,
    config: new-config,
    content,
  )
})

#let game-jam-theme(
  align: horizon,
  outline-align: top,
  alpha: 20%,
  lang: "de",
  font: fonts.game-jam.primary,
  title: self => utils.display-current-heading(depth: self.slide-level),
  subtitle: none,
  date: datetime.today().display("[day].[month].[year]"),
  authors: none,
  footer-pagenum: text(
    context utils.slide-counter.display() + " / " + utils.last-slide-number,
    fill: colors.game-jam.neutral-dark,
  ),
  progress-bar: true,
  ..args,
  body,
) = {
  set text(lang: lang, font: font)
  show: touying-slides.with(
    config-page(
      paper: "presentation-16-9",
      header: self => {
        set std.align(top)
        utils.call-or-display(self, self.store.header)
      },
      footer: self => {
        set std.align(bottom)
        set text(size: .5em)
        utils.call-or-display(self, self.store.footer)
      },
      header-ascent: 0em,
      footer-descent: 0em,
      margin: (top: 3.5em, bottom: 3em, x: 2.5em),
    ),
    config-common(
      slide-fn: slide,
      new-section-slide-fn: new-section-slide,
    ),
    config-info(
      lang: lang,
    ),
    config-methods(
      init: (self: none, body) => {
        set text(size: 20pt)
        set list(marker: box(
          width: 0.25em,
          place(
            dy: -0.6em,
            circle(
              fill: colors.game-jam.neutral-dark,
              radius: 0.25em,
            ),
          ),
        ))
        show figure.caption: set text(size: 0.6em)
        show footnote.entry: set text(size: 0.6em)
        show heading: set text(fill: colors.game-jam.tertiary)
        show link: it => if type(it.dest) == str {
          set text(fill: colors.game-jam.tertiary)
          it
        } else {
          it
        }

        show figure.where(kind: table): set figure.caption(position: top)

        body
      },
    ),
    config-colors(..colors.game-jam),
    config-store(
      align: align,
      outline-align: outline-align,
      alpha: alpha,
      title: title,
      subtitle: subtitle,
      date: date,
      authors: authors,
      footer-pagenum: footer-pagenum,
      progress-bar: progress-bar,
      header: self => if self.store.title != none {
        block(
          width: 100%,
          height: 2.2em,
          fill: colors.game-jam.secondary,
          place(
            left + horizon,
            text(
              fill: colors.game-jam.neutral-dark,
              weight: "bold",
              size: 1.3em,
              utils.call-or-display(
                self,
                /*self.info.title + */ utils.display-current-heading(
                  depth: 2,
                ),
              ),
              // utils.call-or-display(self, self.store.title),
            ),
            dx: 1.5em,
          ),
          below: 0.25em,
        )
        rect(
          fill: colors.game-jam.primary,
          height: 0.2em,
          width: 100%,
        )
      },
      footer: self => {
        box(
          inset: (x: 1em, bottom: 1.5em),
          grid(
            columns: (auto, 1fr, auto),
            rows: (1fr, 1fr),
            grid.cell(
              image(
                "/poster/export/game-jam-2026-pixel-jar.gif",
                width: 8mm,
              ),
              rowspan: 2,
            ),
            grid.cell(
              align: bottom,
              inset: (left: 2em),
              colspan: 2,
              rect(
                fill: colors.game-jam.primary,
                width: 100%,
                height: 0.2em,
              ),
            ),
            grid.cell(
              align: center,
              text(
                fill: colors.game-jam.neutral-dark,
                weight: "bold",
                size: 1.3em,
                utils.call-or-display(
                  self,
                  /*self.info.title + */ utils.display-current-heading(
                    depth: 1,
                  ),
                ),
              ),
            ),
            grid.cell(
              align: right,
              utils.call-or-display(self, self.store.footer-pagenum),
            ),
          ),
        )
      },
    ),
    ..args,
  )

  body
}
