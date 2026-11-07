#import "@preview/touying:0.8.0": *
#import "/lib.typ": *

#import "theme/stylings.typ": *
#show: heading-styles
#show: terms-style
#show: config-styles


#show: game-jam-theme.with(
  title: "Godot",
  subtitle: "Einführung",
  // https://godotengine.org/press/
  icon: image("/godot-intro/assets/godot-icon_color.svg", height: auto),
  authors: ("Jasmin",),
)

// #show heading.where(level: 4): set text(
//   fill: colors.game-jam.neutral-dark,
//   size: 1em,
// )


= Headings

== heading 2
=== heading 3
text
=== heading 3
/ terms: https://godotengine.org/
/ terms: https://godotengine.org/
/ terms: lorem ipsum
==== heading 4
text


- list element 1
- list element 2
- list element 3
  - list element nested


#title-slide()
