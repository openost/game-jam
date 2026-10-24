
== Godot Intro

== Ablauf
- Was ist Godot?
- Setup
  - Wlan?
  - Installation
    - Version mit Web Export ohne C# 

- Godot Demo
  - Programmierkenntnisse?  GD Script
  - Navigation / Menüs und Fenster
      - erstelle Projekt
      - speichern
      - Spiel testen
      - Projekt wieder öffnen
      - exportieren! (besser schon früh testen)

- itch.io zum veröffentlichen : Spiele mit anderen teilen

  // 0. Projektidee und einfache Version vom Spielablauf definieren
    // - überlegen was unbedingt nötig ist
  // 1. Projekt einrichten
    // - Ordnerstruktur : Unterordner für art/assets, fonts (Schriften), audio 
Bestandteile:
  + Scenes/Szenen
    - austauschbare Objekte in separaten Szenen (Spielfigur, Mobs/Gegner, Items, Buttons, HUD)
    - Im Tutorial wird Szene für Szene erstellt, es können auch zuerst alle leeren Szenen erstellt werden
  + Nodes 
    - können verschachtelt werden, also ein Node enthält einen anderen Node
    - Node : allgemeiner Node für Game Logik (Scripts), ohne 2D Funktionalität
    - RigidBody2D : "wrapper" für weitere Nodes, speichere Nodes darin
    - Area2D : erkennt overlap
    - AnimatedSprite2D : Bilder als Animation zu Area2D hinzufügen (z. B. zwei abwechselnde Bilder)
    - CollisionShap2D : Hitbox für Node, eigene Formen möglich
    - Timer : mache etwas nach XX Sekunden
    - CanvasLayer : HUD / UI, Text, Buttons, Einstellungsmenü
      - Label : Text
      - Button
      - ColorRect : Hintergrundfarbe
      - TextureRect : Hintergrundbild
    - AudioStreamPlayer : Musik und Soundeffekte
  + Scripts `sceneName.gd`
  + Events + Inputs erkennen
    - Mit Events werden Benutzerinteraktionen wie z. B. ein Mausklick erkannt und an den Script weitergegeben.
    - z.B. Klick auf Blob > starte Funktion die den Blob löscht und einen Punkt zum Score hinzufügt
  // + Musik am Schluss

- Begriffe
  - HUD : Heads up Display, enthält z. B. den Punktestand und Text zum Programmierkenntnisse
  - Hitbox : in diesem Bereich wird die Kollision
  - Mob : Gegner
  - wrapper : Container, etwas das andere Elemente zusammenhält. Z. B. ein Node das andere Nodes enthält ist dann ein Wrapper.


- Tutorial https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html
- 3D Game ist komplizierter und benötigt mehr Zeit für die Grafikelemente (3d-Modells)


Pixelart oder andere Grafiken erstellen?
- Gimp, Affinity, Photopea, Penpot ...



== Einfaches Beispiel
// Spieler der sich bewegt und bei Klick in andere Richtung bewegt
Mit Klick auf Blob wird dieser entfernt.

TODO

+ Blob erstellen 
+ Mausklick-Event erstellen
+ Im Script die Logik für Mausklick-Event programmieren
+ Spiel testen
+ Export

