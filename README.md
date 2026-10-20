# Open GameJam

Poster design with sponsors 
- .typ Datei for Typst

Pixelart (+ first poster design)
- .afphoto design for affinity photo

typst commands
```shell
# watch poster
typst watch poster/game-jam-2026-poster.typ --font-path=web/fonts/ --root .
# compile poster (pdf)
typst compile poster/game-jam-2026-poster.typ --font-path=web/fonts/ --root .
# compile poster (png)
typst compile poster/game-jam-2026-poster.typ --font-path=web/fonts/ --root . --format=png --ppi=300
# watch screen advertisements
typst watch poster/screen-ost/default.typ --root . --font-path=web/fonts --format png --input format=display poster/screen-ost/{p}.png
```

Used fonts in /web/fonts
- https://www.dafont.com/squarefont.font?text=squarefont
- https://fonts.google.com/specimen/Roboto+Condensed?query=condensed

"open Game Jam" Game Repository
- https://codeberg.org/jasmin-f/godot-jam-overflow

Penpot website prototype + design system for the web
- (will be added later)
