#import "@preview/touying:0.6.1": *
#import "game-jam-graphics.typ": *
#import "fonts-colors.typ": *


// --------------------------------------------------------------------
// elements displayed on all normal slides



#let slides-background(self) = {
  // could add some textured image as background
}

#let slides-header(self) = if self.store.title != none {
  block(
    width: 100%,
    height: 2.4em,
    fill: colors.game-jam.secondary,
    place(
      left + horizon,
      text(
        fill: colors.game-jam.neutral-dark,
        weight: "semibold",
        size: 1.1em,
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
  // ugly line :P (keep it simple!)
  // rect(
  //   fill: colors.game-jam.primary,
  //   height: 0.2em,
  //   width: 100%,
  // )
}

#let slides-footer(self) = box(
  inset: (x: 1em, bottom: 1.5em),
  grid(
    columns: (auto, 1fr, auto),
    rows: (1fr, 1fr),
    grid.cell(
      image(
        "/godot-intro/assets/game-jam-2026-pixel-jar.gif",
        width: 8mm,
      ),
      rowspan: 2,
    ),
    grid.cell(
      align: bottom,
      inset: (left: 2em),
      colspan: 2,
      rect(
        fill: colors.game-jam.secondary,
        width: 100%,
        height: 0.3em,
      ),
    ),
    grid.cell(
      align: center,
      text(
        fill: colors.game-jam.neutral-dark,
        weight: "semibold",
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

#let logo-open-ost() = {
  [
    #box([
      #image("../assets/open-ost-logo.svg", height: 2em)
    ])
    // #h(1em) Open\\OST
  ]
}
