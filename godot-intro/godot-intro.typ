#import "@preview/touying:0.8.0": *
// https://touying-typ.github.io/docs/tutorials/build-your-own-theme

#import "theme/fruchtig.typ": *
#show: fruchtig-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: "Godot Einführung für die Game Jam 2026",
    author: "Jasmin",
    // logo: [#image("./assets/logo.png")],
  ),
  header: (
    self => utils.display-current-heading(
      setting: utils.fit-to-width.with(grow: false, 100%),
      depth: self.slide-level,
    )
  ),
)


= Godot Einführung

== Ablauf
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

== Wieso Godot?

*Open Source!*

"Godot is completely free and open source under the very permissive MIT license. No strings attached, no royalties, nothing. The users' games are theirs, down to the last line of engine code. Godot's development is fully independent and community-driven, empowering users to help shape their engine to match their expectations. It is supported by the Software Freedom Conservancy not-for-profit."

== Setup
// - Wlan TODO??

- Installation
  - Download Godot (Version 4 ohne .NET empfohlen)
  - es wird nicht installiert, sondern einfach die `.exe` Datei öffnen.
/*
== Einfaches Beispiel
// Spieler der sich bewegt und bei Klick in andere Richtung bewegt
Mit Klick auf Blob wird dieser entfernt.

+ Blob erstellen
+ Mausklick-Event erstellen
+ Im Script die Logik für Mausklick-Event programmieren
+ Spiel testen
+ Export
*/

== User Interface
-> bitte öffnen
#image("./assets/godot-ui.png", height: 70%)

#grid(
  columns: (20%, 1fr),
  [
    #image("assets/image-4.png")
  ],
  [
    === Linke Seite
    Szenenansicht, \
    Nodes für die Szene auswählen und umordnen. \

    Script zu Node hinzufügen.\

    `FileSystem` mit Icon Datei von Godot.
  ],
)
#grid(
  columns: 1fr,
  [
    #image("assets/image-6.png", height: 50%)
    #v(20pt)
  ],
  [
    === Mitte
    2D, 3D oder Skript Ansicht. Bei 2D Ansicht können die Elemente verschoben und in der Grösse angepasst werden. Es gibt einige Maus-Modi und Einstellungen.
    - Tipp zur Navigation: Leertaste halten und dann mit Maus bewegen
  ],
)
#grid(
  columns: (1fr, 25%),

  [
    === Rechte Seite
    Einstellungen für ausgewähltes Node
    - (Bild hinzufügen, Deckkraft ändern und mehr).
    `Signals` : Events wie Mausklicks steuern.
  ],
  [
    #image("assets/image-7.png")
  ],
)

// = Einfaches Jump and Run

== Einfaches Jump and Run
Idee von #link("https://www.youtube.com/watch?v=thgdTkxeNJY")["Create A Platformer Game in 20 SECONDS! (Godot 4)"]
#image("./assets/yt-platformer-game.png")

=== Projekt erstellen
#grid(
  columns: (1fr, 1fr),
  [
    Empfehlung: *Compatibility* \
    #text(size: 0.8em)[damit es auch für "Web" exportiert werden kann]
  ],
  [
    #image("./assets/create-game.png", height: 90%)

  ],
)



=== 2D Szene
\
2D Scene auswählen (`Node2D`)

-> hier werden die Plattform und der Spieler erstellt
#image("assets/image.png", height: 50%)

---

=== Plattform
+ `StaticBody2D`
  + `Sprite2D` + Icon hinzufügen als Textur
  + `CollisionShape2D` mit `New RectangleShape2D`
  + Nodes gruppieren um das verschieben einfacher zu machen #box(image("./assets/group.png"))
  + Grösse ändern #box(image("./assets/resize.png"))

---
=== Spieler
+ `CharacterBody2D`
  + `Sprite2D` + Icon hinzufügen als Textur
  + `CollisionShape2D` mit `NewRectangleShape2D`
  + Script erstellen mit "Basic Movement" aktiv + \ dort die
    `JUMP_VELOCITY` anpassen #box(image("./assets/add-script.png"))

---

=== Was fehlt?
- Ton
- Bilder und Animationen
- mehr Inhalt
- 3D? 3D ist komplizierter und benötigt mehr Zeit für die Grafikelemente (3d-Modells)
  \ > Tutorial verlinkt am Ende

== Spiel testen und speichern

Zurück zur 2D-Ansicht hier navigieren\
#box(image("./assets/tabs-2d-scripts.png"))

==== Testen
Mit `F6` oder über das Menü \
#box(image("./assets/test-game-f6.png"))

==== Speichern
Speichern mit `ctrl + s` und Szene benennen z. B. als "index".

#block(breakable: false)[
  ==== Exportieren
  Bei "Project" > "Export" ein Preset auswählen bei "Add". Ich wähle "Web" aus.
  ===== Presets fehlen?
  #image("assets/image-3.png")
]

===== Export Einstellungen
#image("./assets/export-web.png", width: 50%)
Wähle "Export Project..." erstelle einen neuen Ordner z. B. "Export" und speichere es dort als `index.html`.

==== itch.io Veröffentlichung (optional)
#grid(
  columns: (1fr, 1fr),
  [
    Auf itch.io hochladen und direkt im Browser spielbar machen.\
    + Benutzer erstellen
    + neues Spiel
    + "Export" Ordner in Zip komprimieren und hochladen. \ Hier ist wichtig, dass die Datei `index.html` benannt wird beim Export von Godot.
  ],
  [
    #image("./assets/itch-io-upload.png", height: 90%)
  ],
)



// https://jasmin-f.itch.io/easy-platformer-game

= Zusammenfassung Godot
// // bei anderem Tutorial:
// === Scenes/Szenen
// - austauschbare Objekte in separaten Szenen
//   - (Spielfigur, Mobs/Gegner, Items, Buttons, HUD)
// - Im Tutorial wird Szene für Szene erstellt, es können auch zuerst alle leeren Szenen erstellt werden
#block(breakable: false)[
  === Nodes
  Nodes können verschachtelt werden (ein Node enthält weitere Nodes).
  // - Node : allgemeiner Node für Game Logik (Scripts), ohne 2D Funktionalität
  \
  / RigidBody2D: "wrapper" für weitere Nodes, speichere Nodes darin

  // / Area2D : erkennt overlap
  // / AnimatedSprite2D: Bilder als Animation zu Area2D hinzufügen \ (z. B. zwei abwechselnde Bilder)
  / CollisionShape2D: Hitbox für Node, eigene Formen möglich
  / Timer: mache etwas nach XX Sekunden
  / CanvasLayer: HUD / UI, Text, Buttons, Einstellungsmenü
  // / Label : Text
  // / Button
  // / ColorRect : Hintergrundfarbe
  // / TextureRect : Hintergrundbild
  / AudioStreamPlayer: Musik und Soundeffekte
]

#block(breakable: false)[

  === Scripts + Signale (Events)
  `sceneName.gd` #image("assets/image-1.png")

  In unserem Beispiel automatisch erstellt: #image("assets/image-2.png")


  // - Mit Events werden Benutzerinteraktionen wie z. B. ein Mausklick erkannt und an den Script weitergegeben.
  // - z.B. Klick auf Blob > starte Funktion die den Blob löscht und einen Punkt zum Score hinzufügt

  // == Begriffe
  // - HUD : Heads up Display, enthält z. B. den Punktestand und Text zum Programmierkenntnisse
  // - Hitbox : in diesem Bereich wird die Kollision
  // - Mob : Gegner
  // - wrapper : Container, etwas das andere Elemente zusammenhält. Z. B. ein Node das andere Nodes enthält ist dann ein Wrapper.
]

= Mehr Informationen

=== Dokumentation
/ offizielle Godot Dokumentation: https://docs.godotengine.org/en/latest/

=== Tutorials
// - #link("https://www.youtube.com/watch?v=thgdTkxeNJY")["Create A Platformer Game in 20 SECONDS! (Godot 4)"]
/ "Create A Platformer Game in 20 SECONDS! (Godot 4)": https://www.youtube.com/watch?v=thgdTkxeNJY
/ Weiteres Godot 2D Tutorial: https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html
/ Godot 3D Tutorial: https://docs.godotengine.org/en/latest/getting_started/first_3d_game/index.html

=== Pixelart oder andere Grafiken erstellen?

/ Gimp Tutorial: https://thegimptutorials.com/how-to-make-pixel-art/

/ Gimp: https://www.gimp.org/downloads/
/ weitere Programme (nicht alle Open Source): Affinity, Photopea, Penpot ...

=== diese Folien

Auf dem Github der Game Jam https://github.com/openost/game-jam
