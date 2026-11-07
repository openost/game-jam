#import "@preview/touying:0.6.1": *

#import "godot-intro/theme/fonts-colors.typ": *
#import "godot-intro/theme/game-jam-graphics.typ": *
#import "godot-intro/theme/slide-elements.typ": *
#import "godot-intro/theme/slides-special.typ": *

#let game-jam-theme(
  align: horizon,
  outline-align: top,
  alpha: 20%,
  lang: "de",
  region: "CH",
  font: fonts.game-jam.primary,
  title: self => utils.display-current-heading(depth: self.slide-level),
  subtitle: none,
  icon: none,
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
        // see stylings.typ for set and show rules
        set text(size: 20pt, lang: lang, region: region)
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
      icon: icon,
      date: date,
      authors: authors,
      footer-pagenum: footer-pagenum,
      progress-bar: progress-bar,
      header: slides-header,
      footer: slides-footer,
    ),
    ..args,
  )

  body
}
