#import "/typ/lib.typ": *
#import "@preview/codetastic:0.2.2": qrcode

#let cs = colors.game-jam

#set page(
  width: 1536pt,
  height: 960pt,
  fill: game-jam-bg,
  margin: 1cm,
)


#v(10em)
#h(10em)
#game-jam-logo(5cm)


#place(
  right + bottom,
  [

    #game-jam-jar-with-lid-and-particles(
      10cm,
      qr: false,
      url: false,
    )
    #h(10em)
    #v(10em)
  ],
)

