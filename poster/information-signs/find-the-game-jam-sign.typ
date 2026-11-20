#import "/typ/lib.typ": *
#import "@preview/codetastic:0.2.2": qrcode

#let cs = colors.game-jam

#set page(
  "a4",
  flipped: true,
  fill: rgb("fff"),
  margin: 1cm,
)
#set align(center)
#set text(font: fonts.game-jam.primary, weight: "extrabold")

#v(4em)
#image("./arrow-pixelart.gif", height: 10em)

#place(
  bottom + center,
  [
    #game-jam-logo(6cm)
    #v(10em)
  ],
)

#pagebreak()


#v(4em)

#rotate(
  [
    #image("./arrow-pixelart.gif", height: 10em)
    #v(3em)
  ],
  45deg,
)

#place(
  bottom + center,
  [
    #game-jam-logo(6cm)
    #v(10em)
  ],
)



#pagebreak()


#v(4em)

#rotate(
  [
    #image("./arrow-pixelart.gif", height: 10em)
    #h(2em)
  ],
  90deg,
)

#place(
  bottom + center,
  [
    #game-jam-logo(6cm)
    #v(10em)
  ],
)


#pagebreak()


#v(4em)

#rotate(
  [
    #h(2em)
    #image("./arrow-pixelart.gif", height: 10em)
  ],
  -90deg,
)

#place(
  bottom + center,
  [
    #game-jam-logo(6cm)
    #v(10em)
  ],
)
