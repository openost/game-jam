#import "@preview/touying:0.6.1": *
#import "game-jam-graphics.typ": *
#import "fonts-colors.typ": *
#import "slide-elements.typ": *

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

// title / cover slide
#let title-slide-content(self) = {
  block(
    breakable: false,
    width: 100%,
    height: 100%,
    [
      #v(1em)
      #grid(
        columns: (1.2fr, 1fr),
        rows: 1fr,
        align: horizon,
        [
          #align(center, text(
            weight: "regular",
            size: 3.5em,
            font: fonts.game-jam.square,
            fill: colors.game-jam.tertiary,
            top-edge: 0.6em, // line-height
            [
              // #v(0em) // margin top
              #text(size: 1.2em, self.store.title)
              // #title-icon(self.store.icon)
              #text(size: 1em, font: fonts.game-jam.square-o, self.store.subtitle)
            ],
          ))
        ],
        [
          #align(center, [
            // #place(dx: 40mm, dy: 50mm, game-jam-jar-with-shadow())
            #v(0em)
            #title-icon(self.store.icon, h: 10em)
          ])
        ],
      )
    ],
  )

  v(1fr)
}


#let title-slide(config: (:), ..args) = touying-slide-wrapper(self => {
  let new-config = config
  new-config = utils.merge-dicts(
    config,
    config-page(
      fill: game-jam-bg,
      header: none,
      footer: [
        #text(
          fill: colors.game-jam.neutral-dark,
          weight: "semibold",
          table(
            gutter: (0.25em, 0em),
            stroke: none,
            align: left,
            columns: (2em, auto, auto),
            "", "Autoren: ", self.store.authors.join(", "),
            "", "Datum: ", self.store.date,
          ),
          // #op
        )
      ],
      margin: (top: 1em, left: 1em, bottom: 5em, right: 1em),
    ),
  )

  self = utils.merge-dicts(self, new-config)
  let body = title-slide-content(self)

  touying-slide(self: self, body)
})


// --------------------------------------------------------------------

// --------------------------------------------------------------------


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
      // table of contents for new section
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

// --------------------------------------------------------------------


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
          center,
          dy: 7cm,
          game-jam-logo(4.5cm, pixels: true),
        )
        place(
          center,
          dy: 5cm,
          text(
            font: fonts.game-jam.square,
            // font: fonts.game-jam.primary,
            fill: colors.game-jam.tertiary,
            size: 1.5em,
          )[Viel Spass an der ],
        )

        // open ost logo proposal
        place(
          bottom + left,
          dx: 1cm,
          dy: -1cm,
          // center,
          // dy: 13cm,
          [
            #logo-open-ost()
          ],
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

