# Open GameJam posters

Used fonts in /web/fonts
- https://www.dafont.com/squarefont.font?text=squarefont
- https://fonts.google.com/specimen/Roboto+Condensed?query=condensed
- https://fonts.adobe.com/fonts/adelle-sans

## advert

Poster design with sponsors
- .typ Datei for Typst

Pixelart (+ first poster design)
- .afphoto design for affinity photo

typst commands (from root of this repo)
```shell
# watch poster
typst watch poster/advert/game-jam-2026-poster.typ --font-path=web/fonts/ --root .
# compile poster (pdf)
typst compile poster/advert/game-jam-2026-poster.typ --font-path=web/fonts/ --root .
# compile poster (png)
typst compile poster/advert/game-jam-2026-poster.typ --font-path=web/fonts/ --root . --format=png --ppi=300
```

## screen-ost

```shell
# watch screen advertisements
typst watch poster/screen-ost/default.typ --root . --font-path=web/fonts --format png --input format=display poster/screen-ost/{p}.png
```

## signs

```shell
# wifi
typst compile poster/signs/wifi.typ --root . --font-path=web/fonts
# compile "left" direction
typst compile poster/signs/direction.typ --root . --font-path=web/fonts --input direction=left poster/signs/direction-left.pdf
# compile "right" direction
typst compile poster/signs/direction.typ --root . --font-path=web/fonts --input direction=right poster/signs/direction-right.pdf
```
