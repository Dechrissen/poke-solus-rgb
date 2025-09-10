# Pokémon Solus RGB: Feature Log
This file details all the changes the Pokémon Solus RGB romhack makes to the vanilla Pokémon Red/Blue games. To compare previous releases of Solus RGB, check the [change log](CHANGELOG.md).

## Table of Contents
- [Motivation](#motivation)
- [Overview](#overview)
- [Justifications](#justifications)
- [Version differences](#version-differences)
- [Changes and fixes](#changes-and-fixes)
    - [Palette](#palette)
    - [Title screen](#title-screen)
    - [Battle sprites](#battle-sprites)
    - [Overworld sprites](#overworld-sprites)
    - [Type matchups](#type-matchups)
    - [Move typings](#move-typings)
    - [Wild encounters](#wild-encounters)
    - [Previously unobtainable Pokémon](#previously-unobtainable-pokémon)
    - [Learnsets](#learnsets)
    - [Catch rates](#catch-rates)
    - [Game Corner](#game-corner)
    - [Music](#music)
    - [Text](#text)
    - [Default player names](#names)
    - [Credits](#credits)
    - [Vanilla bugfixes](#vanilla-bugfixes)
- [New content](#new-content)
    - [New features](#new-features-that-were-not-in-the-vanilla-games)
    - [Restored content](#cut-content-that-has-been-restored)
- [FAQ](#faq)
    - [Things I don't plan to change](#things-i-dont-plan-to-change)
    - [Future plans](#future-plans)

## Motivation

This romhack is very much a purist's version of Gen 1. The decisions made were inspired by my idea of what an "enhanced" version of Gen 1 might look like. I wanted to make this romhack so that I could actually use it for my personal routine playthroughs of Gen 1. The general philosophy (and where the romhack gets its name) was that it should be "an enhancement of Gen 1 which focuses on improving the solo experience of the game" (i.e., the need for trading should be "mitigated", and some things should be backported from Yellow and Gen 2, since they can technically be taken advantage of with real cartridges). But all in all, it's a very minimal romhack.

The extra modifications beyond those mostly consist of logical changes to address some problems which most people would agree _are_ problems, with a sprinkling of my personal preferences on top (such as changing some battle sprites to ones from other Gen 1 games). I also didn't want to go overboard fixing bugs; a lot of the vanilla bugs can be seen as contributing to what makes Gen 1 special. All of this is to say: you might not agree with some of my decisions.

While working on this project, I tended to draw from later generations when making certain decisions that didn't have an answer in Gen 1. For example, if a Pokémon needed to be added somewhere in the wild, but there was no other Gen 1 release to draw from, I looked at what later games did (sometimes Gen 2, sometimes even Let's Go Pikachu/Eevee). I was conservative in my application of this strategy, and only resorted to it when I felt it was necessary to resolve some problem. Which brings me to the question ...

Q: What is this romhack trying to solve?

> This romhack hopes to solve the following general "issue" categories in vanilla Gen 1:
> 1. All 151 Pokémon are not obtainable in one game
> 2. Pokémon with the "trade" evolution method cannot be evolved except with a friend's help, or by using two cartridges
> 3. HMs compromise a Pokémon's potential by occupying its battle move slots
> 4. Some Pokémon are "unusable" in a vanilla playthrough (by certain definitions)
> 5. Some bugs exist which arguably detract from the developers' original vision for the games (those bugs in the codebase which change some gameplay element from what is very likely the intended behavior) 

## Overview

This section presents an overview of the changes made in Pokémon Solus RGB.

### All 151 Pokémon are obtainable through normal means

"Normal means" are one of the following:
 - the Pokémon can be caught in the wild
 - the Pokémon can be evolved into via an in-game method
 - the Pokémon can be found in a Poké Ball in the overworld
 - the Pokémon can be battled (and caught) via interacting with its sprite in the overworld
 - the Pokémon can be gifted to the player
 - the Pokémon can be purchased
 - the Pokémon can be restored from a fossil

### HMs can be taught to party Pokémon without using up one of their move slots

HMs, as well as TM28 (Dig), TM30 (Teleport), and TM41 (Softboiled), can be taught to a party Pokémon in a separate "Field Move" slot. When teaching one of these moves to a Pokémon, you will be prompted to choose whether it should be taught as its temporary Field Move (only one can be known at a time per Pokémon). Field Moves can be used like other HMs as normal, from a Pokémon's party sub-menu.

When a Pokémon with a temporary Field Move is deposited into the PC, its Field Move will be erased. Those three TMs which act as Field Moves (Dig, Teleport, and Softboiled) are now sold on the 2nd floor of Celadon Dept. Store (by a new TM Clerk), because they might be lost more easily if taught as a Field Move and then erased via PC deposit.

### Pokémon learnsets have been partially 'forward-patched'
Pokémon learnsets have been enhanced, looking only at "canonical" methods to do so. This includes first updating learnsets to those used in Yellow Version, and then applying certain updates via Gen 2 tradeback learnsets. Check [Learnsets](#learnsets) for more details.

### Some new content is added, and some visual content is changed

A _very small amount_ of new battles/signs/houses/NPCs were added. They are either added to restore cut content, or to support a newly implemented feature. To see them all, check the [new content](#new-content) section.

Additionally, _some_ visuals of the original games are changed, and sometimes in accordance with my own personal preferences (sprites, backsprites).

### Some bugs/oversights are fixed

A small subset of the bugs/oversights from the vanilla games are fixed. Check the [bug fix list](#vanilla-bugfixes) for details.

## Justifications

Here are some questions which might be asked about the decisions made for this romhack.

Q: Why is it called Solus?
> The definition of 'solus' is something like: 'By oneself; alone. Used as a stage direction to a male character.'
> I think it complements the philosophy of the romhack, in that it highlights the 'solo' aspect of the game. The game is meant to be
> played by yourself (without relying on friends to trade) and all elements of the game are accessible in one ROM, i.e., 
> you don't need to rely on multiple versions to accomplish anything. The 'stage direction' bit is also relevant; the Pokémon games can sort of
> be thought of like a play, I guess. The fact that 'solus' is usually used for male characters is a bonus, since the 
> protagonist of Red/Blue is a young boy.

Q: How did you decide where to put previously unobtainable Pokémon?
> If a Pokémon was version-exclusive, then its appearance was simply merged with the opposite game's counterpart Pokémon (Oddish vs. Bellsprout, for example — now both appear in the same locations where you'd previously only find one). For the cases where it wasn't this simple, you can find the justification for each decision in [this table](#previously-unobtainable-pokémon). Some Pokémon were added to the wild if their previous acquisition method was only in the Game Corner, or only via trade, or if only one existed and multiple are needed for Dex completion (like Eevee).

Q: Why did you change Pokémon learnsets, and how is it justifiable?
> There are a lot of Pokémon in Gen 1 which can arguably be considered "unusable" for one reason or another. One example is Rapidash, which can't learn Flamethrower in Gen 1. In any scenario, it's hard to make a case to use Rapidash over another Fire-type which gets Flamethrower.
>
> Originally, I wanted to keep Solus completely vanilla, aside from things which could be justified as necessary to make it more of a "solo" experience. But eventually, I decided that further changes are acceptable if they can at least be justified as "canonical". In this case, there are two things I did: updated the learnsets to Yellow Version's, and then updated them further via the mechanism of [Gen 2 tradeback learnsets][tradebacks].
>
> These changes give more Pokémon viability in Gen 1, and that's without me having taken any creative liberties when updating learnsets, like some other romhacks do (i.e., I didn't add a move to a Pokémon's learnset just because I thought it should learn it, or because it learns it in Gen 7, or something). Importantly, you can actually make these changes yourself technically, using a Yellow cartridge or a Gen 2 cartridge. In this way, it follows the Solus philosphy: if it can be done by normal means, it should be able to be done in-game without the need for another cartridge.

Q: Why did you think it was OK to change the Game Corner prize window Pokémon?
> Since all version-exclusive Pokémon appearances in the game were merged, I also removed the version-exclusives in the Game Corner. Their locations
> between both prize windows were swapped around a bit, and now the second window is identical to the one in Gold/Silver's Celadon Game Corner. I 
> thought this made sense thematically. Additionally, if a Pokémon appears in either prize window, its level/price are consistent with another
> occurrence of that same Pokémon in another game's prize window.
> 
> I also view obtaining Pokémon at the Game Corner as kind of an "extra" method (aside from Porygon in the original games). For that reason, I didn't think changing the layout of the prize windows was too detrimental to the Game Corner's role.

Q: Why did you change the battle sprites?
> I think the "best" battle sprite for some of the original 151 Pokémon exist in the other Gen 1 releases. For this reason, I looked at each sprite (from Red/Blue, Yellow, or JPN Red/Green) and chose my favorite sprite for each Pokémon. Those picks are the ones I decided to use for Solus RGB. So yes, this was subjective. If you disagree with some of the choices, feel free to clone the repo and change them for yourself. :)

## Version differences
The differences between the three versions of this romhack (_Solus Red_, _Solus Green_, _Solus Blue_) are solely cosmetic. Specifically, these things differ:
1. Title screen version text
2. Title screen Pokémon carousels (matches the [original releases' carousels][titlecarousels])
3. Game Boy Color "duochrome" palettes (matches the original releases' GBC palettes)
4. Super Game Boy palettes (the version-specific differences affect the title screen, SGB border graphics, and Game Corner slots)
5. End credits text: "RED/GREEN/BLUE VERSION STAFF" (depending on version)

## Changes and fixes
### Palette
- Solus Green's palette on Game Boy Color hardware (or an emulator running in GBC mode) matches that of the original Japanese release for Pokémon Green Version (green overworld, red sprites, blue accents).
- Green Version-specific border and palette were restored for Super Game Boy for Solus Green, to match those of the original Japanese release for Pokémon Green Version.
- Green Version-specific Super Game Boy palette for the Game Corner slots were restored for Solus Green.

### Title screen
- The "Red Version"/"Green Version"/"Blue Version" text on the title screens has been changed to reflect the name of the romhack. The "Version" text has been removed from each, and "Solus" has been added to the beginning. They now read "Solus Red"/"Solus Green"/"Solus Blue". 
- The title screen Pokémon carousel for Solus Red, Solus Green, and Solus Blue have all been changed so that the Pokémon that are cycled through match those of the original Japanese releases for Red/Green/Blue (carousel variants [here][titlecarousels] for reference).

<p align="center" style="margin-bottom: 0">
<img src="../screenshots/solus-red-gbc-title.png">
<img src="../screenshots/solus-green-gbc-title.png">
<img src="../screenshots/solus-blue-gbc-title.png">
</p>

<p align="center">
<img src="../screenshots/solus-red-sgb-title.bmp">
<img src="../screenshots/solus-green-sgb-title.bmp">
<img src="../screenshots/solus-blue-sgb-title.bmp">
</p>

### Battle sprites
- The in-battle back sprites (including the player and the catching tutorial old man) have been updated to display at a higher resolution of 48x48. Since this meant that new back sprites needed to be supplied for every Pokémon, they all now use the back sprites featured in the [Spaceworld 1997 Gold/Silver beta][spaceworld97].

- If a Pokémon is present in the below table, it means its original in-battle front sprite (from Red/Blue) was changed to either the one from Red/Green (JPN) or the one from Yellow. If it's not present in this table, it means it still uses its original Red/Blue sprite. These were changed according to my own personal preference (whichever ones I thought were the best).

Pokémon | Source for new sprite
--- | ---
Abra, Kadabra, Alakazam | Yellow
Aerodactyl | Red/Green (JPN)
Ekans, Arbok | Yellow
Growlithe, Arcanine | Yellow
Articuno, Zapdos, Moltres | Yellow
Weedle, Kakuna, Beedrill | Red/Green (JPN)
Bellsprout, Weepinbell, Victreebel | Yellow
Squirtle, Wartortle | Yellow
Blastoise | Red/Green (JPN)
Bulbasaur, Ivysaur, Venusaur | Yellow
Charmander, Charmeleon, Charizard | Yellow
Metapod | Red/Green (JPN)
Chansey | Red/Green (JPN)
Clefable | Red/Green (JPN)
Shellder | Yellow
Cloyster | Red/Green (JPN)
Cubone | Red/Green (JPN)
Marowak | Yellow
Seel | Red/Green (JPN)
Dewgong | Yellow
Diglett, Dugtrio | Red/Green (JPN)
Doduo, Dodrio | Red/Green (JPN)
Dratini | Red/Green (JPN)
Dragonair, Dragonite | Yellow
Drowzee, Hypno | Red/Green (JPN)
Eevee | Yellow
Electabuzz | Red/Green (JPN)
Magmar | Red/Green (JPN)
Electrode | Red/Green (JPN)
Exeggcute, Exeggutor | Red/Green (JPN)
Farfetch'd | Yellow
Spearow | Yellow
Fearow | Red/Green (JPN)
Flareon | Yellow
Jolteon | Red/Green (JPN)
Gastly, Haunter, Gengar | Yellow
Geodude, Golem, Graveler | Yellow
Oddish, Gloom | Yellow
Zubat, Golbat | Yellow
Goldeen, Seaking | Red/Green (JPN)
Golduck | Red/Green (JPN)
Magikarp | Red/Green (JPN)
Hitmonchan | Yellow
Hitmonlee | Red/Green (JPN)
Seadra | Yellow
Jigglypuff, Wigglytuff | Yellow
Jynx | Red/Green (JPN)
Kabuto, Kabutops | Yellow
Kangaskhan | Red/Green (JPN)
Krabby, Kingler | Red/Green (JPN)
Koffing, Weezing | Red/Green (JPN)
Lapras | Yellow
Lickitung | Red/Green (JPN)
Machop, Machoke, Machamp | Yellow
Mankey, Primeape | Yellow
Meowth, Persian | Yellow
Mew | Red/Green (JPN)
Mewtwo | Red/Green (JPN)
Mr. Mime | Red/Green (JPN)
Nidoran M, Nidoran F | Yellow
Nidorino, Nidorina | Red/Green (JPN)
Omanyte, Omastar | Yellow
Onix | Red/Green (JPN)
Paras, Parasect | Red/Green (JPN)
Pidgey, Pidgeotto, Pidgeot | Yellow
Pikachu | Red/Green (JPN)
Raichu | Yellow
Pinsir | Yellow
Poliwag, Poliwhirl, Poliwrath | Yellow
Rapidash | Yellow
Rattata, Raticate | Red/Green (JPN)
Rhyhorn, Rhydon | Red/Green (JPN)
Sandshrew, Sandslash | Yellow
Slowbro | Red/Green (JPN)
Snorlax | Yellow
Staryu, Starmie | Red/Green (JPN)
Tangela | Red/Green (JPN)
Tauros | Red/Green (JPN)
Tentacruel | Red/Green (JPN)
Venonat, Venomoth | Red/Green (JPN)
Vulpix, Ninetales | Yellow
Porygon | Red/Green (JPN)

### Overworld sprites
Blaine's sprite has been changed to the Silph President sprite (the same as the one used in Yellow Version).

### Type matchups
Ghost-type is now Super Effective (2x) against Psychic-type instead of No Effect (0x).

This is very likely what was originally intended, as a Youngster in Sabrina's Gym tells the player that "Psychic Pokémon fear only ghosts and bugs!". This is further substantiated in Gen 2, where this matchup is corrected.

In practice, the only move that benefits from this type advantage in Gen 1 is Lick, so it's not too consequential.

### Move typings
Move typings have been modified to match the Gen 2 updates to Gen 1 moves (excluding Bite, which becomes Dark).
- Karate Chop: `NORMAL` --> `FIGHTING`
- Gust: `NORMAL` --> `FLYING`
- Sand-Attack: `NORMAL` --> `GROUND`

### Wild encounters
- Maps which had version-exclusive Pokémon have been "merged", i.e., adjusted so that both (or all, if a map had multiple) version-exclusive Pokémon are available in that map. In these cases, occassionally, liberties needed to be taken to ensure a Pokémon could fit into the maps maximum encounter slots. I chose to prioritize keeping all of the Pokémon in that map rather than maintaining the encounter rates for certain Pokémon, so sometimes a Pokémon's encounter rate has been adjusted slightly.
- The number of wild encounters slots per route has been increased from 10 to 12, in order to make room for those maps which needed an extra slot to accommodate the opposite version's exclusive Pokémon. For the maps which didn't need any adjusting for version exclusives, I simply took the 3rd slot (previously 15%, but dropped by 5% to 10%) and copied that Pokémon into the new 2nd-to-last and 3rd-to-last slots
(4% and 1% respectively). This means the distributions are almost identical to the originals, +/- a fraction of a %.

### Previously unobtainable Pokémon
Pokémon | Solus location
--- | ---
Farfetch'd | Added to Routes 12 and 13 @ 5% (like in Yellow).
Lickitung | Added to Safari Zone (West) @ 1% (like in JPN Blue).
Mr. Mime | Added to Route 21 @ 5% (like in Gen 2).
Jynx | Added to Seafoam Islands B2F @ 4% and B4F @ 1% (similar to JPN Blue).
Hitmonchan/Hitmonlee | Added Hitmonchan to Victory Road 2F and Hitmonlee to Victory Road 3F (similar to LGPE).
Bulbasaur | Added to Viridian Forest @ 1% (similar to LGPE).
Squirtle | Added to Seafoam Islands B3F and B4F @ 1% (similar to LGPE) because those 2 maps are the ones with water.
Charmander | Added to both floors of Rock Tunnel @ 1% (similar to LGPE).
Omanyte/Kabuto | Added 2 additional fossils (1 Helix and 1 Dome) in Victory Road because it's late enough in the game that it would prevent you from using them in your main party.
Eevee | Added to Route 17 @ 5% (similar to LGPE).
Porygon | Added a scientist who works for Pokémon Lab on Cinnabar Island (this is where Porygon was originally created) who sells you one for 10000p "illegally". The price used is _around_ 10% (a bit less) of the Game Corner cost after doing coin conversion if you use the 6500c price from Blue Version (6500c @ 1000p per 50c = 130000p x 10% = 13000p). The idea here is that he's selling it to you at a discount, undercutting the "crooks" at the Game Corner.
Mew | Added a static encounter in a new room of Cinnabar Mansion basement (technically B2F); The thematic reasoning is a bit ambiguous... it could be interpreted as Mew "coming back" to the building where its DNA was used to create Mewtwo, in order to find Mewtwo... or it could be seen as the "original" Mew that was used for experimentation (whether Mew was ever present in this building or if DNA was taken from the jungle is not clear in the lore) now hiding somewhere in this building. The new room's entrance is surrounded by rocks as if a hole was broken in the floor by Mew. It's level 30 (like in Emerald) which is also an appropriate level for this point in the game.

### Learnsets
Learnsets (level-up moves and teachable TMs/HMs) for all Pokémon have been updated. They've undergone a few separate changes that come together for a unique and interesting (but arguably still very "canonical") end result.

First, learnsets were updated to match those used in Yellow version. (For a look at the full diff for this change, check [this commit](https://github.com/Dechrissen/poke-solus-rgb/commit/99459edfa1d797d72a273c8a412545fe85f08594).)

Notable changes at this point are:
- Charizard can learn HM Fly
- Diglett and Dugtrio can learn HM Cut
- Kabutops can learn HM Cut
- Venonat, Venomoth, and Butterfree can learn HM Flash
- Nidoran learns Double Kick at Level 12 instead of 43 (Nidorino/Nidorina as well)
- Mankey learns Low Kick at Level 9
- Venonat learns Confusion at Level 19
- Pikachu has an expanded learnset including Thunderbolt at Level 26
- The Eevee-lutions learn their damaging STAB moves at earlier levels

Second, [Gen 2 tradeback learnsets][tradebacks] were partially implemented. This change follows a cherry-picking approach when looking at the entirety of all the changes that could be implemented. Check [this table][tradebacks-table] I made to see _all_ the possible columns that could be implemented. The following list shows all the implementations under the "Gen 2 tradeback learnsets" umbrella that I chose to implement in Solus. Keep in mind that I used Crystal's data as opposed to Gold/Silver's when creating the data table, but it doesn't make much of a difference.

1. Moves learned via level-up in Gen 2, if those moves are also moves in Gen 1, have been added to level-up learnsets in Solus if they were not already in them.
2. Moves learned via machine in Gen 2, if that machine is also a machine in Gen 1, have been added to machine learnsets in Solus.
3. Some moves (which are moves in Gen 1, and TMs in Gen 2, but not TMs in Gen 1) have been added to machine learnsets in Solus. In this case, a brand new TM has been implemented. The three moves in this category are Fire Punch, Ice Punch, and Thunderpunch (I found these to be the most worthwhile to add in this category).
4. Moves learned via tutor in Gen 2, if those moves are not already in machines learnsets in Gen 1, have been added to machine learnsets in Solus. In the case of Flamethrower (which was not already a TM in Gen 1), it has been implemented as a brand new TM.
5. Level 1 moves from Gen 2, if not already level 1 moves in Gen 1 (but they are moves in Gen 1) have been added as level 1 moves in Solus if they fit in the list for that Pokémon. If they didn't, they were ignored. Occasionally level 1 moves were rearranged to prioritize the better ones, but 90% of the time these are inconsequential anyway.

At this point, learnsets are a bit more interesting. Pokémon have access to more STAB moves for their type, most notably Flamethrower and the elemental punches. This also addresses some of those Pokémon which some people might consider "unusable" in vanilla (an example I like to cite is Rapidash; it didn't get Flamethrower before this change was implemented).

For a look at the level-up learnsets in their final state, check [this file](../data/pokemon/evos_moves.asm) and search for the Pokémon of interest. For each Pokémon's machine learnset and level 1 moves, check [this directory](../data/pokemon/base_stats/) and find the file for the Pokémon of interest.


### Catch rates
Catch rates for all Pokémon have been updated to match those used in Yellow version.

### Game Corner
The Game Corner prize windows have been changed. The tables below reflect these changes.
#### Prize window 1
Pokémon | Level | Price
--- | --- | ---
Abra | 6 | 120
Clefairy | 12 | 750
Dratini | 18 | 2800

#### Prize window 2
Pokémon | Level | Price
--- | --- | ---
Mr. Mime | 15 | 3333
Eevee | 15 | 6666
Porygon | 20 | 9999

### Music
The Elite Four now all use the Gym Leader battle theme instead of using the default battle theme for the first three members (Lorelei, Bruno, Agatha).

### Text
- There is a game-related poster on 3F of Celadon Dept. Store which now reads "Red, Green, and Blue! All are Pokémon!" instead of "Red and Blue! Both are Pokémon!" to be consistent with the triad of versions.
- The TM pamphlet on the top floor of Celadon Mansion (the Eevee room) now mentions that there are 54 total TMs, not 50, to reflect the 4 new TMs.

### Names
The default set of names for the player and the rival have been changed. These are based on some of the original names used in the Japanese Red & Green versions, mixed with the English names Ash and Gary. (If you're curious to read more about the default names, check [this Bulbapedia article](https://bulbapedia.bulbagarden.net/wiki/Red_(game)#Optional_names).)

Player name | Justification for name | Rival name | Justification for name
--- | --- | --- | ---
RED | Player character's canonical name | GREEN | Rival's canonical name
SATOSHI | Pokémon creator Satoshi Tajiri's name | SHIGERU | Based on Satoshi Tajiri's friend and fellow developer Shigeru Miyamoto
ASH | Based on the anime character Satoshi | GARY | Based on the anime character Shigeru

### Credits
The ending credits have been appended to. They now feature two new sections, below. They scroll < 10% faster to ensure the end of the credits BGM still lines up with the 'THE END' screen.
```
GAME DISASSEMBLY
PRET
```
and
```
SOLUS DEVELOPER
DECHRISSEN
```

### Vanilla bugfixes

#### Battle engine bugfixes
- Transformed Pokémon are no longer assumed to be Ditto
- Focus Energy no longer quarters critical hit chance (it now quadruples it instead, as intended)
- Status-curing items no longer remove stat modifiers in battle
#### Graphical bugfixes
- Sliding of trainer and Pokémon graphics on screen no longer cause screen tearing
- The lower-right tile of Pokémon backsprites are no longer deleted when sliding offscreen
- Psychic/Psywave/Night Shade's animation now correctly wiggles the top 3 screen lines
#### Oversight / mistake fixes
- The Prof. Oak introduction movie no longer uses Nidorina's cry (it now uses Nidorino's, as intended)
- Koffing's sprite is reverted to the JPN R/G variant to fix incorrect skull pattern location

## New content

### New features that were not in the vanilla games
#### Field move slots

- HMs, as well as TM28 (Dig), TM30 (Teleport), and TM41 (Softboiled), can be taught to a party Pokémon in a separate "Field Move" slot.
- When teaching one of these moves to a Pokémon, you will be prompted to choose whether it should be taught as its temporary Field Move.
- Only one Field Move can be known at a time per Pokémon.
- Field Moves can be used like other HMs as normal, from a Pokémon's party sub-menu.
- When a Pokémon with a temporary Field Move is deposited into the PC, its Field Move will be erased.
- Those three TMs which act as Field Moves (Dig, Teleport, and Softboiled) are now sold by a new TM clerk on the 2nd floor of Celadon Dept. Store, because they might be lost more easily if taught as a Field Move and then erased via PC deposit.
    - TM28 (Dig): 2000p
    - TM30 (Teleport): 1000p
    - TM41 (Softboiled): 2000p
- A new sign on Route 14, east of Fuchsia City, advertises these three TMs for sale at Celadon Dept. Store. (Notably, there was already a trainer on this route who mentions TMs being on sale in Celadon.)
    
#### The Trader

- A new NPC who lives in a new house behind Celadon Dept. Store.
- He will trade you back any of your Pokémon, for the purpose of evolving any of the four trade evolutions.
- Only a single trade animation will play (not two back-to-back).
- Another new NPC, a boy in Pewter City, will hint at the Trader's location.
- A new sign on Route 8, just outside of Lavender Town, further advertises the Trader's services and location.

#### Porygon salesman

- A scientist in the lobby of Pokémon Lab on Cinnabar Island will offer to sell you a Porygon for 10000p. He shouldn't be selling it to you, so he does it in secrecy (even though he's being quite conspicuous in the lobby). 

#### Victory Road fossil room

- A new basement room of Victory Road (B1F) holds two more fossils: a Helix Fossil and a Dome Fossil.
- This allows you to get both fossils in the late game, so you can complete the Pokédex but you're still restricted to using only one of the two fossil Pokémon in your main (pre-Victory Road) party.

#### Mew battle

- Mew is battleable as a static sprite in a new basement room of Cinnabar Mansion (B2F).
- It's level 30.
- The entrance to its room is surrounded by rocks, as if Mew broke a hole in the floor.

#### Forward-patched learnsets
- Learnsets were first updated to match Yellow Version's learnsets.
- Learnsets were then partially 'forward-patched' via Gen 2 tradeback learnsets to enhance them further.
- This approach keeps learnsets arguably canonical.
- Check [Learnsets](#learnsets) for more details.
    
#### New TMs

- New TMs:
    - TM51 (Flamethrower); Location: Bill's father in Fuchsia City
    - TM52 (Fire Punch); Location: Celadon Dept. Store 2F (new Clerk)
    - TM53 (Ice Punch); Location: Celadon Dept. Store 2F (new Clerk)
    - TM54 (Thunderpunch); Location: Celadon Dept. Store 2F (new Clerk)
- The text in the TM pamphlet on the top floor of Celadon Mansion reflects the increased number of total TMs.
- The 3 elemental punch TMs each cost 3000p.

#### New TM clerk

- A new TM clerk has been added to Celadon Dept. Store 2F.
- He provides access to repeatable Field Move TM purchases (in case they are overwritten via PC deposit).
- He sells 6 TMs in total: Fire Punch, Ice Punch, Thunderpunch, Dig, Teleport, and Softboiled.

#### Bill's father

- A new NPC, Bill's father, is in Bill's grandfather's house in Fuchsia City.
- He will sell you TM51 Flamethrower (only once). This aligns with Gen 1's original philosphy of TMs being one-time-use. This way, you need to be intentional about which Pokémon you use it on.
- Flamethrower is the only of those three tutor moves without a dedicated TM in Gen 1. In Crystal Version, Bill's father is the Move Tutor outside Goldenrod Game Corner who teaches Flamethrower, Thunderbolt, and Ice Beam for 4000c each. Since the other two are already available as TMs in Gen 1, Flamethrower is the TM that he (fittingly) offers.
- He will sell the player TM51 for 8000p; the price was determined by taking 10% of his coin-converted price when tutoring the move (in Crystal). If he sold it to you at full price, that would be 80000p, which is far too much. I thought 8000p was appropriate, because it should still be a substantial amount without being unattainable.

#### Battle HUD updates

- An animated EXP bar (similar to Gen 2's implementation) has been added.
    - On Game Boy Color, its color uses the lighter shade of the version you're playing.
    - On Super Game Boy, its color matches the yellow used for the accent color in the Pokéball icons at the start of battle.
- An 'already caught' indicator (using the same small Pokéball icon as the one in Gen 2) has been added.


### Cut content that has been restored

#### Prof. Oak battle
- Prof. Oak acts as a very strong end game opponent (akin to Red in Mt. Silver at the end of GSC).
- His trainer data exists in the game's code, but goes unused in the vanilla games. Based on the player's starter Pokémon pick, Oak's party will vary (his party features the final, unpicked starter).
- Battle dialogue for Oak is not present in the original code; new dialogue was written by me.
- After beating the Pokémon League, talk to Oak in his lab and decline his Pokédex evaluation offer. He will then offer to battle you.
- You can battle him as many times as you'd like.


#### Porygon on Silph Co. computer monitor
- There is unused code/text in the game's files for Silph Co. that references a computer monitor and triggers a Pokédex popup for Porygon.
- On 11F of the Silph Co. building (the top floor), there is a computer monitor which now uses this code if you interact with it.

## FAQ
Q: Can this romhack trade/battle with vanilla ROMs/cartridges?
> A: Yes.

Q: Is this romhack compatible with trading via Time Capsule in Gen 2?
> A: Yes. If a Pokémon knowing a temporary Field Move is traded to Gen 2, it will lose its Field Move (this also means that if it's traded back to Solus R/G/B from Gen 2, it will no longer know the Field Move; you will have to re-teach it).

Q: Is this romhack compatible with the N64 transfer pak for Pokémon Stadium?
> A: Yes. It's been tested on an emulated N64 transfer pak (via Rosalie's MUPEN). It hasn't been tested with a real N64/transfer pak yet.

Q: Does this romhack work on real hardware (i.e. flash cartridges on a real Game Boy)?
> A: Yes. It's been tested on Game Boy Color and Game Boy Advance using an insideGadgets flash cartridge.

Q: Do GameShark/Game Genie codes work with this romhack?
> A: Evidently Game Shark codes work fine, but Game Genie codes do not. Your mileage may vary. Only one person reported that Game Shark codes worked, and that Game Genie codes did not. But I have not tested this myself.

Q: Will you add X feature or make Y change?
> A: Honestly, probably not; I consider this project to be 99% complete, barring any surge of inspiration I may get to make a change that allows the game to get closer to my initial vision. As of now, I'm happy to say that the vision is pretty much achieved. Check [Things I don't plan to change](#things-i-dont-plan-to-change) for some examples.

### Things I don't plan to change
There are some things I've been asked to implement which I don't think align with the philosophy for Solus RGB. They are listed here.
- _Updating Pokémon learnsets to something completely new._ I don't believe Pokémon learnsets should be changed if they can't be justified as somehow "canonical" (like, for example, learnsets in Yellow Version, or Gen 2 tradeback learnsets).
    - **Example 1**: Some people suggest that the learnsets of the stone evolutions (such as Nidoking) should be upgraded, since after evolving via stone their learnsets become quite sparse. But if you look even as late as Gen 2 or 3, Nidoking's learnset is basically the same as in Gen 1. Nothing suggests that its original learnset was a "mistake," which tells me it shouldn't be changed. I believe what was intended was needing to wait for the pre-evolution (Nidorino in this case) to learn its moves at certain levels before deciding to use a Moon Stone and evolve it. You have to be intentional, and upgrading Nidoking's learnset removes that element of intentionality.
    - **Example 2**: If some Pokémon, notably the Bug-types in Gen 1, have a learnset that totally lacks any STAB moves, I don't think that alone is enough to justify doing things like backporting newer Bug moves from a later generation.
    - **Example 3**: If some Pokémon of X-type is unable to learn the best moves of X-type (whether by level-up or TM), and the "canonically supported" solutions in Solus haven't addressed this, I don't think it's acceptable to take liberties and give that Pokémon better moves just because I think it should have them. A common example of this is Aerodactyl and its lack of Rock Slide; it doesn't learn it even after the introduction of Gen 2 tradeback learnsets, so unfortunately, there's no "canonical" justification.
- _Adding running shoes._ Having the ability to run via holding B changes the feel of the game. Gen 1 is kinda slow, and I think that's part of its charm. Slow down!
- _Adding shiny Pokémon._ I don't think it fits the philosophy. That's more of a technically-impressive-but-not-useful change. I think there's too much focus on shiny Pokémon these days.

### Future plans
Check [this document][planned] for changes/features planned for future releases.


[titlecarousels]: https://bulbapedia.bulbagarden.net/wiki/Game_intro#Pok%C3%A9mon_Red,_Green,_and_Blue
[spaceworld97]: https://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_Gold_and_Silver_Spaceworld_%2797_demo
[tradebacks]: https://www.smogon.com/rb/articles/rby_tradebacks
[tradebacks-table]: https://github.com/Dechrissen/tools/blob/master/pokemon-learnsets/data.csv
[planned]: PLANNED.md