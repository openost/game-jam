#import "/typ/lib.typ": *

#show: game-jam-theme.with(
  title: "",
  subtitle: "",
  icon: pad(top: 15em, game-jam-jar-with-shadow(width: 15em)),
  authors: ("",),
  footer-pagenum: none,
)

#set text(size: 1.5em)

== Open Game Jam

#set text(
  font: fonts.game-jam.square,
  fill: colors.game-jam.tertiary,
)

#context {
  let left = "direction" in sys.inputs and sys.inputs.direction == "left"
  let rev = it => if left {it.rev()} else {it}
  grid(
    columns: rev((1fr, auto)),
    align: center,
    ..rev((grid.cell(rowspan: 2, text(3.5em)[THROUGH\ HERE]),
    text(6em, if left { sym.arrow.l } else { sym.arrow }))),
    text(1.5em)[ROOM 1.207],
  )
}
