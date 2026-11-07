#import "@preview/touying:0.8.0": *
#import "/lib.typ": *

#import "theme/stylings.typ": *
#show: terms-style
#show: heading-styles
#show: config-styles


#show: game-jam-theme.with(
  title: "Godot",
  subtitle: "Einführung",
  // https://godotengine.org/press/
  icon: image("/godot-intro/assets/godot-icon_color.svg", height: auto),
  authors: ("Jasmin",),

  // config-common(show-notes-on-second-screen: right), // change ending slide position
)



#title-slide()

= Godot Einführung

#speaker-note[
  == Ablauf (erster Entwurf)
  - Was ist Godot?
  - Setup
  - Godot Demo
    - Programmierkenntnisse?
  - GD Script
  - Navigation / Menüs und Fenster
  - erstelle Projekt
  - speichern
  - Spiel testen
  // - Projekt wieder öffnen
  - exportieren und itch.io // (besser schon früh testen)
]

== Was ist Godot?
#pause

#grid(
  columns: (1fr, 1fr),
  [
    - Open Source! MIT Lizenz

    - Game Engine

      - für 2D und 3D Games

      - Export für Desktop, Mobile und Web
    - GD Script
    - finanziert von der "Godot Foundation"

    #speaker-note[
      "Godot is completely free and open source under the very permissive MIT license. No strings attached, no royalties, nothing. The users' games are theirs, down to the last line of engine code. Godot's development is fully independent and community-driven, empowering users to help shape their engine to match their expectations. It is supported by the Software Freedom Conservancy not-for-profit."
    ]

  ],
  [
    #figure(
      [
        #image("./assets/godot-2d.png", height: 42%)
        #v(-0.5em)
        #image("./assets/godot-3d.png", height: 42%)
      ],
      caption: [https://godotengine.org/],
    )
  ],
)

= Setup

== Godot Setup

=== Installation von https://godotengine.org/

- Download Godot (Version 4 ohne .NET empfohlen)

- `.exe` Datei öffnen zum Starten

== User Interface
$->$ bitte öffnen
#image("./assets/godot-ui.png", height: 70%)

== Linke Seite
#grid(
  columns: (20%, 1fr),
  [
    #image("assets/image-4.png")
  ],
  [
    Szenenansicht, \
    Nodes für die Szene auswählen und umordnen. \

    Script zu Node hinzufügen.\

    `FileSystem` mit Icon Datei von Godot.
  ],
)
== Mitte
#grid(
  columns: 1fr,
  [
    #image("assets/image-6.png", height: 50%)
    #v(20pt)
  ],
  [
    2D, 3D und Skript Ansicht
    - In der  2D/3D Ansicht können z. B. die Elemente verschoben und vergrössert werden.
    - Es gibt einige Maus-Modi und Einstellungen.
    - Tipp zur Navigation: Leertaste halten und dann mit Maus bewegen
  ],
)
== Rechte Seite
#grid(
  columns: (1fr, 25%),

  [
    Einstellungen für ausgewähltes Node

    - Bild hinzufügen, Deckkraft ändern und mehr
    `Signals` : Events wie Mausklicks steuern und abrufen
  ],
  [
    #image("assets/image-7.png")
  ],
)

// = Einfaches Jump and Run

= Einfaches Jump and Run
#pagebreak()
Idee von #link("https://www.youtube.com/watch?v=thgdTkxeNJY")["Create A Platformer Game in 20 SECONDS! (Godot 4)"]
#image("./assets/yt-platformer-game.png")

#grid(
  columns: (1fr, 1fr),
  align: top,
  [
    \
    === Projekt erstellen
    Empfehlung: *Compatibility* \
    #text(size: 0.8em)[damit es auch für "Web" exportiert werden kann]
  ],
  [
    #image("./assets/create-game.png", height: 100%)

  ],
)



=== 2D Szene
#grid(
  columns: (1.5fr, 1fr),
  [
    2D Scene auswählen (`Node2D`)

    #sym.arrow.r hier wird die Plattform und der Spieler erstellt
  ],
  [
    #image("assets/image.png", height: 70%)
  ],
)

---

=== Plattform
+ `StaticBody2D`

#pause
+ `Sprite2D` + Icon hinzufügen als Textur
#pause
+ `CollisionShape2D` mit `New RectangleShape2D`
#pause
+ Nodes gruppieren um das verschieben einfacher zu machen #box(image("./assets/group.png"))
#pause
+ Grösse ändern #box(image("./assets/resize.png"))

---
=== Spieler
+ `CharacterBody2D`

#pause
+ `Sprite2D` + Icon hinzufügen als Textur
#pause
+ `CollisionShape2D` mit `NewRectangleShape2D`
#pause
+ #box(image("./assets/add-script.png")) Script erstellen mit "Basic Movement" aktiv + dort die
  `JUMP_VELOCITY` anpassen

---

=== Was fehlt?
#pause
- Ton

- Bilder und Animationen
- mehr Inhalt
- Aufteilung in mehrere Szenen
- Best Practices (Nodes umbenennen, Ordnerstruktur)
- 3D? 3D ist komplizierter und benötigt mehr Zeit für die Grafikelemente (3d-Modells)
  \ #sym.arrow.r Tutorial verlinkt am Ende

== Spiel testen und speichern

Hier zurück zur 2D-Ansicht navigieren\
#box(image("./assets/tabs-2d-scripts.png"))

==== Testen
Mit `F6` oder über das Menü \
#box(image("./assets/test-game-f6.png"))

==== Speichern
Speichern mit `ctrl + s` und Szene benennen z. B. als "index".

#block(breakable: false)[
  ==== Exportieren
  "Project" #sym.arrow.r "Export", dann ein Preset auswählen bei "Add". Ich wähle "Web" aus.
  ===== Presets fehlen?
  #image("assets/image-3.png")
]

===== Export Einstellungen
#image("./assets/export-web.png", width: 50%)
Wähle "Export Project..." erstelle einen neuen Ordner z. B. "Export" und speichere es dort als `index.html`.




#grid(
  columns: (1.3fr, 1fr),
  [
    ==== itch.io Veröffentlichung (optional)
    Auf itch.io hochladen und im Browser spielen.\
    + Benutzer erstellen
    + neues Spiel
    + "Export" Ordner in Zip komprimieren und hochladen. \ Hier ist wichtig, dass die Datei `index.html` benannt wird beim Export von Godot.
  ],
  [
    #image("./assets/itch-io-upload.png", height: 100%)
  ],
)



#speaker-note[
  https://jasmin-f.itch.io/easy-platformer-game
]

= Zusammenfassung Godot

== Nodes
#block(breakable: false)[
  Nodes können verschachtelt werden (ein Node enthält weitere Nodes).

  \
  / RigidBody2D: "wrapper" für weitere Nodes, speichere Nodes darin

  / CollisionShape2D: Hitbox für Node, eigene Formen möglich
  / Timer: mache etwas nach XX Sekunden
  / CanvasLayer: HUD / UI, Text, Buttons, Einstellungsmenü

  / AudioStreamPlayer: Musik und Soundeffekte
]

#speaker-note[
  Weitere Nodes:
  - Node : allgemeiner Node für Game Logik (Scripts), ohne 2D Funktionalität
  / Area2D: erkennt overlap
  / AnimatedSprite2D: Bilder als Animation zu Area2D hinzufügen \ (z. B. zwei abwechselnde Bilder)
  / Label: Text
  / Button: ...
  / ColorRect: Hintergrundfarbe
  / TextureRect: Hintergrundbild
]

== Scripts + Signale (Events)
#block(breakable: false)[

  `sceneName.gd` #image("assets/image-1.png")

  In unserem Beispiel automatisch erstellt: #image("assets/image-2.png")

]

#speaker-note[
  == Infos von offiziellem 2D Tutorial
  - Mit Events werden Benutzerinteraktionen wie z. B. ein Mausklick erkannt und an den Script weitergegeben.
  - z.B. Klick auf Blob > starte Funktion die den Blob löscht und einen Punkt zum Score hinzufügt
  ==== Begriffe
  - HUD : Heads up Display, enthält z. B. den Punktestand und Text zum Programmierkenntnisse
  - Hitbox : in diesem Bereich wird die Kollision
  - Mob : Gegner
  - wrapper : Container, etwas das andere Elemente zusammenhält. Z. B. ein Node das andere Nodes enthält ist dann ein Wrapper.
]

= Mehr Informationen und Links

== Tutorials und Dokumentation
===== offizielle Godot Dokumentation
https://docs.godotengine.org/en/latest/
===== learn GDScript
https://gdquest.github.io/learn-gdscript/
// von hier gefunden: https://docs.godotengine.org/en/stable/getting_started/introduction/learn_to_code_with_gdscript.html
===== Weiteres Godot 2D Tutorial
https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html
===== Godot 3D Tutorial
https://docs.godotengine.org/en/latest/getting_started/first_3d_game/index.html
===== "Create A Platformer Game in 20 SECONDS! (Godot 4)"
https://www.youtube.com/watch?v=thgdTkxeNJY

== Pixelart oder andere Grafiken erstellen?

#grid(
  columns: (1fr, 30%),
  [
    ==== Gimp
    https://thegimptutorials.com/how-to-make-pixel-art/ \
    https://www.gimp.org/downloads/

    ==== weitere Programme (nicht alle Open Source)
    Affinity, Photopea, Penpot ...

  ],
  [
    #game-jam-jar-with-shadow()
  ],
)

#speaker-note[
  Weitere Game Engines
  - https://gamemaker.io/en (free, aber nicht open source?)
]

== Folien der Einführung

/ Folien auf dem Github der Game Jam: https://github.com/openost/game-jam

#ending-slide()
