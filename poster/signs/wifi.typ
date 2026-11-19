#import "/typ/lib.typ": *

#show: game-jam-theme.with(
  title: "",
  subtitle: "",
  icon: pad(top: 15em, game-jam-jar-with-shadow(width: 15em)),
  authors: ("",),
  footer-pagenum: none,
)

#set text(size: 1.5em)

== WIFI

#grid(
  columns: (1fr, 1fr),
  grid(
    columns: 2,
    gutter: 1em,
    align: left,
    [SSID], [gast-ost],
    [Password], [tn5g66i78u8k],
    text(size: .75em)[Auth], text(size: .75em)[WPA2-PSK],
  ),

  align(center, qrcode(
    "WIFI:S:gast-ost;T:WPA;P:tn5g66i78u8k;H:true;",
    width: 10em,
  )),
)
