#import "/typ/lib.typ": *

#show: game-jam-theme.with(
  title: "Welcome",
  subtitle: "",
  icon: pad(top: 15em, game-jam-jar-with-shadow(width: 15em)),
  authors: ("Georgiy Shevoroshkin",),
)

#title-slide()

= Intro

== Welcome

- First ever Game Jam organized by open\\OST!
- Topic: #h(2em) #text(baseline: .2em,size: 3em, font: fonts.game-jam.square-o, fill: colors.game-jam.tertiary)[OPEN]

== Sponsors and partners

#align(center + horizon, box(
  fill: colors.game-jam.secondary,
  inset: 2em,
  radius: 1em,
  grid(
    columns: (1.5fr, 1.5fr, 1fr),
    gutter: 1em,
    image("/web/img/hostpoint-logo.png", height: 2.6em - 0.5em),
    image("/web/img/sdj-logo.png", height: 3.7em - 0.5em),
    image("/web/img/ost-logo.svg", height: 4em - 0.5em),

    image("/web/img/impulsort-logo.png", height: 3em - 0.5em),
    image("/web/img/nine-logo.svg", height: 6em - 0.5em),
    image("/web/img/egswiss-logo.png", height: 4em - 0.5em),

    image("/web/img/open-circle-logo.svg", height: 2em - 0.5em),
  ),
))

== Nomnom

#align(center + horizon, box(
  // fill: colors.game-jam.secondary,
  inset: 2em,
  radius: 1em,
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 1em,
    image("./steiner.png"), image("./caterina.png"), image("./rappimomo.webp"),
  ),
))

= Schedule

#{
  let bx(t, d) = box(
    fill: colors.game-jam.secondary,
    width: 12em,
    inset: .25em,
    radius: 5pt,
  )[
    #text(.75em, t) #h(1fr) #d
  ]
  let stack = stack.with(spacing: .25em)
  grid(
    gutter: 1em,
    columns: 3,
    align: top,
    [Friday], [Saturday], [Sunday],
    stack(
      dir: ttb,
      bx[14:30 - 14:55][Arrival],
      bx[15:00 - 15:15][Intro],
      bx[15:15 - 16:00][Intro to Godot],
      bx[16:00 - 19:00][Planning / Hacking],
      bx[19:00 - 20:00][Dinner],
      bx[20:00 - Open End][Hacking],
    ),
    stack(
      dir: ttb,
      bx[08:00 - 09:00][Breakfast],
      bx[09:00 - 12:00][Hacking],
      bx[12:00 - 13:00][Lunch],
      bx[13:00 - 19:00][Hacking],
      bx[19:00 - 20:00][Dinner],
      bx[20:00 - Open End][Hacking],
    ),
    stack(
      dir: ttb,
      bx[08:00 - 09:00][Breakfast],
      bx[09:00 - 12:00][Hacking],
      bx[12:00 - 13:00][Lunch],
      bx[13:00 - 15:00][Hacking],
      bx[15:00 - 16:00][Upload to itch.io],
      bx[16:00 - 17:00][Playtesting],
      bx[17:00 - 18:00][Voting + prizes],
    ),
  )
}

#slide[
  - Right afterwards: Intro to Godot by Jasmin

  - Food will be delivered to the "chill space" below

  - Doors close after XXX

  - We can't let you stay here after 24:00 :(
]

== Sunday

- Upload to itch.io
  - TODO

- Playtesting
  - TODO

- Prizes
  - TODO

= Organizational

== Rooms

#grid(
  columns: (1fr, 1fr),
  align: horizon,
  gutter: 1em,
  [
    === 1.262
    main room (an organizer will always be here)

    === 1.207
    hacking room (we are here)

    === sofas
    food/hacking and chill-out space
  ],
  align(center, image("./lageplan.png")),
)

== Communication

#grid(
  columns: (1fr, 1fr),
  align: center + horizon,
  gutter: .5em,
  text(2em)[Matrix], text(2em)[Discord],
  link("matrix.to/#/#game-jam:open-ost.ch"), link("discord.gg/Ukagd8W3Fc"),

  align(center, qrcode(
    "matrix.to/#/#game-jam:open-ost.ch",
    width: 13em,
  )),
  align(center, qrcode(
    "discord.gg/Ukagd8W3Fc",
    width: 13em,
  )),
)


== WIFI

#{
  set text(size: 1.5em)
  grid(
    columns: (auto, 1fr),
    align: horizon,
    grid(
      columns: 2,
      gutter: 1em,
      [SSID], [gast-ost],
      [Password], [tn5g66i78u8k],
      text(size: .75em)[Auth], text(size: .75em)[WPA2-PSK],
    ),
    align(center, qrcode(
      "WIFI:S:gast-ost;T:WPA;P:tn5g66i78u8k;H:true;",
      width: 10em,
    )),
  )
}

== Photos

Who is OK with photos being taken?

(Will be posted on social media platforms and the game-jam website)

== Licenses

- Please make sure to use free-to-use licenses (CC0/Public Domain or with
  attribution)

- Open-source your code! :)

= Tips

== First game jam? No worries!

- In room 1.262 you'll always find someone to help you out
  - Ask us or other people to play-test the game when you have a prototype :)

- Make sure you plan conservatively! (scope creep)
  - Ask us for an opinion as soon as you have a plan

- Plan a schedule and check each day how far you've gotten
  - Back-up plan in case something fails

- Submit the game as soon as it's in a working state
  - You can re-submit as many times as you want

== Teams

For those who aren't in a team yet: now is your time to collab!

#ending-slide()
