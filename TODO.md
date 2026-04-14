# TODO

- [x] implement separate field move slots
- [x] implement tradeback NPC
- [x] test if location is on town map correctly
    - needed to add newly created text/TraderHouse.asm to an INCLUDE line in text.asm
    - [ ] make tutorial for above step / add it to the preexisting one / document it somewhere
- [x] tradeback NPC's notes on his table: mention of the 4 pokemon that evolve via trade
- [x] move trader house to north of celadon and add a sign outside
- never mind [x] new NPC who gives you locations of mr mime, porygon, etc like the snorlax guy in ss anne / and the starters
- [x] new NPC somewhere: "I heard there is a guy in CELADON CITY who will trade your own pokemon back to you. I wonder why he would do that?" in Pewter
- [x] "Visit the TRADER!" sign Route 8
- [x] modify route encounters
- [x] change default player names/rival names: RED / GREEN, ASH / GARY, SATOSHI / SHIGERU
- [x] change battle sprites
    - add yellow sprite dir
    - change each filename in gfx/pics.asm to use the appropriate file path for front, front_rg, or front_yellow
    - see if backsprites are worth changing? 
- [x] add higher resolution back sprites
- [x] add oak battle in post-game
- [x] add unobtainable or optional miss-out pokemon
    - [x] farfetchd --> added routes 12 and 13 like in yellow @ 5%
    - [x] lickitung --> safari zone (jpn blue) and cerulean cave (yellow) - added to West @ 1% like jpn blue
    - [x] mr mime --> route 2 where u trade for it, or Celadon game corner like in gen 2, - added route 21 like in gen 2 @ 5%
    - [x] hitmons --> must be another set of pokeballs, or buy it from someone, or wild (or victory road like in LGP/E) - added chan to 2f, lee to 3f
    - [x] bulbasaur --> viridian forest (LGPE) or cerulean girl - added to viridian forest @ 1%
    - [x] squirtle --> Route 24, Route 25, Seafoam Islands (LGPE) or vermilion jenny - added to SEAFOAM B3F and B4F @ 1% because those 2 maps are the ones with water
    - [X] charmander --> Route 3, Route 4, Rock Tunnel (LGPE) or route 24 trainer (added to rock tunnel both floors @ 1%)
    - [x] fossils --> add 2 more fossils somewhere late game
    - [x] eevee --> Route 17 (LGPE) or Celadon game corner (like in gen 2) - added to route 17 @ 5% like LGPE
    - [x] Porygon --> pokeball in Silph / POKEMON LAB / have a scientist sell it to you?
        - if sell method, it could be 10% of the rate you'd have to buy Coins at 6500 coins @ 1000p per 50c = 130,000p x 10% = 13,000p? (or something like this)
        - [x] is level correct? 20?
    - [x] Mew --> static encounter somewhere, and perhaps secrets to tell you where it is
        - [x] see if the `ds 1` i removed for Mew script in wram is actually unused.... maybe move it somewhere else
- [x] compile list of bugs to fix
    - [x] fix all bugs from compiled list
- [x] go through recent commits so far and add "dereknote" to everything with some explanations
- [x] consolidate all other version differences
    - game corner prizes for example
- [x] look into why charmander is showing up at celadon. maybe remove town map entry for trader house
- [x] make sure enough moon stones
- [x] add town map entires properly for 3 new maps

## Solus specific
- [x] make custom Solus title screens
- [x] add Green version with appropriate palette / title screen (check Shin's Green, or other Green romhacks, like PureGreen etc.)
- [x] change output rom filename to "solus"-RGB ?
- [x] change repo name to solus-rgb

## other
- [x] make 'docs' dir in repo and move all md files to it and change links to them in readme
- [x] make INSTALL.md relevant to my project
- [x] note in changelog: added 12 slots to each wild route. for the ones which version exclusives didnt need merging for, i simply took the 3rd slot (previously 15%, but dropped by 5% to 10%) and copied it into the new 2nd and 3rd to last slots
(4% and 1% respectively). this redistributes the distributions so they're pretty much the same as before
- [x] add cut content rival win text
- [x] fix TMs thing
- [x] fix TMs explanation in docs
- [x] make sure dig and teleport are in shops
    - [x] add sign for celadon? "now sold at celadon mart!"
- [x] fix trainer "victory" text (revert commit)

## post-finishing
- [ ] ADD IMAGES to feature log: take screenshots of stuff to put in feature log
- [x] rename changelog to something else like features?
- [x] add whole thing to website projects list when done
- [x] make webpage (or maybe a link endpoint on my site)
- [x] make trailer
    - add "3 new maps!" somewhere in advertisement/video?...
    - "you can complete the pokedex by yourself!"
    - maybe make this easier by creating NPC post game who gives free ultra balls
- [x] youtube video of some sort (maybe a 'normal' YT vid explaining that i made the romhack)
- [x] maybe compile some of the compliments on the reddit post and make them into "testimonials" for the webpage or the trailer
- [x] make box art / [x] label
- [x] get "Solus red/green/blue" written in the boxart font
- [x] post on 
    - [x] reddit
    - [x] romhacking.net
    - [x] romhackplaza
    - [x] pokecommunity
- [x] post on ko-fi
- [x] write blog post about it
- [x] release 1.0 on github
- [ ] Stream a playthru after 1.3
- [ ] make new challenge ruleset or adapt the other one. debut it in the blog post as well maybe
- [x] still need to explain the super game boy palettes in the feature log better. and the GBC palettes. on readme too?
- [x] Look into patches?
    - [x] just test the patches the makefile has see if they work
- [x] test trade with vanilla 
- [x] add a markdown doc HOWTOCHANGE.md that details how to make some changes for features:
    - TM disposability (in engine/items/item_effects)
    - sprites
    - etc
    - [x] Link to this doc in the readme
- [x] make README major points numbers bigger or more defined
    - [x] change all -- to em dashes
- [x] mention in readme that it works on emulators (maybe test specific ones) and on flash cartridge on real hardware
- [x] explain default name changes in features log
- [x] add IPS patches
    - [x] maybe use blue version to patch blue and green and update the release with those
- [x] look into learnset differences (with yellow, and look at stone evos, maybe Gen 3 frlg?)
    - [x] growlithe level 50 flamethrower?
- [x] add a "What problems is this romhack trying to solve" section to readme/features list
- [x] make triple art title screen for romhackplaza
- [x] add changelog.md for version release differences?
- [x] add jsutification: even in gen 3, nidoking's learnset doesnt change
- [ ] finish HOW-TO-MOD.md
- [x] move explanation in feature log about catch rates to its own section
- [x] add an FAQ
- [x] better thumbnail for vid essay
- [x] make wiki on github with references to all changes, maybe just links to feature log sections
    - add gen 1 type chart image from pdb (or custom one if necessary)
    - link to csv in repo for changed learnsets (tradebacks)
- [x] add a "Screenshots" section to readme
- [x] make reamde more Lite; add the motivation of the core 4 changes to Features.md only
- [x] README 'Discussion/Feedback' section --> direct to romhackplaza probably (make a discord?)
- [x] TESTIMONIALS.md
- [x] make a discord server to add to the romhackplaza description? "feedback is welcome"
- [x] collect video of all new stuff for trailer
- [x] get pic of outside trader's house
- [x] add more testimonials from trailer
- [x] make a Short form trailer?
- [x] add trailer to readme
- [ ] add why i chose 3000 for the price for the punch TMs in the feature log 
    - i dont remember why
- [x] add to readme elevator pitch "ghost type effectiveness is 'fixed' "

- use this to autogenerate patches
    - https://github.com/persuaded9041/poke-solus-fr-rse-patcher
- [x] add more testimonials
- [ ] add Pokemon Solus logo to the readme, homepage

- [ ] make a 'Solus set' of back sprites? i.e. after Gen 2 high-res option is integrated for alternate back sprites, i could go through all Space World and Gen 2 back sprites and curate a Solus set, like I did for the front sprites. That can be an option in the config as well.
- [x] add discord invite to wiki

- [ ] add retroachievements
    - this person wanted it: https://www.facebook.com/100089492440104/posts/new-update-latest-versionpokemon-solus-rgb-completed-gbc-rom-hackcreator-dechris/801255632867511/
- [ ] remove 'Version' from all the instances in the repo, and elsewhere like site posts
- [x] remove the old vanilla boxes i made
- [ ] update screenshots to be ones from SGB palettes so they look better

- [ ] lower the level of wild eevee so the stab moves can be learned at 16
    - the one in game corner is 15; technically this is enough

- [ ] disable trade EXP so that u can trade from other games to use certain pokemon earlier (and add reasoning for this in feature log)
    - alternative is the command line flag option to build with other starters

- [ ] test ROM with randomizer GUI tool to see if it works, add findings to FEATURES.md

- [ ] change bottom of title screen to "Dechrissen 2024" ?
- [ ] Restore "1995 GAME FREAK" text?

- [x] Add Porygon Silph monitor text to feature log "cut content that has been restored"

- [x] get pic of Porygon on monitor for README screenshots

- [x] change FIELD MOVE wording to just "Teach as a field move?"
    - make sure when teaching a new move, it says "deposit in a PC to delete the old one"
    - replace instances of "FIELD MOVE" with lowercase (maybe)
    - [x] replace screenshots on readme with new wording

- [x] add title screens to 'screenshots' in README

- [ ] make a nicer Wiki
    - use the pokemon.asm files to pull from and generate a nice page for Learnsets, etc.

- [x] add to things i wont change 
    - why aerodactyl wont learn rock slide

- [x] ADD JYNX!
    - and add to "previously unobtainable pokemon" list in feature log

- [ ] Config option in command line flag to change starters

- [ ] implement black out before exiting battle if lose to Oak
    - is this a problem? what happens if u battle him again after losing
    - this is fine, you take a few steps then black out if party is all KOed

- [ ] guide.md for how to make physical box/cart after the assets are done
- [ ] a gif of solus being played on a gameboy for the readme/feature log? idk
- [ ] add the psd files from solus box art to the physical directory, include list of fonts (?)


- [ ] make 'bug report' issue template and link to it somewhere "Report a bug"
- [ ] issue template for feature requests?
- [x] add review link to romhacking.net page in README
- [ ] review template on github

- [x] add a LICENSE to repo? / "please don't sell"
- [x] add "please don't sell this software" to repo
- [ ] add github hook to discord server?
- [ ] clean up releases on github so it's less wordy, more to the point, maybe hide change log in each release in a show/hide dropdown list

- [ ] ask ppl in discord server to leave a review @everyone
- [ ] add solus emoji to discord server

- [x] decide on a simple icon for the project to use with discord server etc.
- Fix the badges to apply the correct stat boosts (swap Thunder and Soul badge boosts) to match dialog

- [ ] missingno bug mentioned on pokecommunity thread?

- [ ] add myself as a character to battle? trade with? DEREK or DECHRISSEN.
    - post-Prof. Oak battle might be cool, maybe with absolutely no mention of the battle anywhere in the docs. could eventually add a teaser/image of the battle screen on social media. secretly. or a secret hinting of this on my website.
    - maybe this can be a shadow-dropped update v1.6 or something


## v1.3

- [x] implement tradeback learnsets
    - https://www.smogon.com/rb/articles/rby_tradebacks
- [x] add additional TMs
- [x] add new clerk in Celadon Mart who sells the new garbage TMs and Dig/Teleport/Softboiled
- [x] place the 3 Punch TMs somewhere
- [x] change pamphlet text again
- [ ] figure out what to do with waterfall
- [x] exp bar [here](https://github.com/pret/pokered/commit/6ba3cb78b80f51a2dc320c1c97a8917ac86411f3)
- [x] move typings: karate chop, gust, sand attack
- [x] caught pokemon indicator 
- [x] change type effectiveness to Gen 2 (ghost 0x -> 2x -> psychic) 
- [x] BLAINE sprite
- [x] Flamethrower TM (maybe others too).
    - [x] Need to update notebook in Eevee guy house?
- [x] fix EXP bar color (currently matching the HP bar color even when orange and red) on SGB
    - search in pret for this, maybe someone already fixed it for SGB



## tradebacks
pokemon in gen 1 are "forward compatible"
i did not bring TM support from Gen 2 into Gen 1 (no new Tms except falmethrower to replace tutor)
but for Gen 2 TM support that are already TMs in Gen 1, compatability will be added for that pokemon
these "FIT THE SOLO PLAY PHILOSOPHY" for solus because you can technically do it yourself with Gen 2

TMs which would need to be added if doing the 'TM' tradeback moveset additions
- defense curl
- headbutt
- roar
- fire punch
- thunderpunch
- ice punch
- waterfall

Level-up tradebacks
- if a pokemon would learn a move in Gen 2 that exists in Gen 1, but no TM exists in Gen 1 for that move, it will be added to its Gen 1 learnsets (both Levelup and TM)


## Maybe these things?
- BIKE on SELECT
- running shoes (eh)
- item descriptions
- nah - menu option descriptions
- larger bag
- ??? (ice 1x -> 0.5x -> fire) (bug 2x -> 0.5x -> psn) (psn 2x -> 1x -> bug)
- location on save data screen?
- leaders, e4, champ ... better movesets? (hard mode)
- add one of the unused/beta sprites (soldier etc) as a special battle?
- maybe look into bugfixes to apply. look at PureRGB bugfixes list? badge boosts etc
- add unused Porygon Silph 11F text (cut content) [here](https://github.com/search?q=repo%3AVortyne%2FpureRGB%20SilphCo11FPorygonText&type=code)
- [ ] Makefile flags for sprites
- if looking to add more TMs, this is the bug to investigate:
    - (just comment it out in names2.asm?)
    ```
    error: home.asm(65) -> home/names2.asm(24):
        Assertion failed: A bug in GetName will get TM/HM names for Pokémon above $62.
    error: home.asm(65) -> home/names2.asm(26):
        Assertion failed: A bug in GetName will get TM/HM names for moves above $62.
    error: Assembly aborted (2 errors)!
    ```
    - because Mew has > 62 moves when adding all 8 new TMs, and there are more than 62 TMs total now
    - also comment out `const_next $C4` in item_constants.asm
- "Hard mode" command line flag option for `make` to make trainers harder
    - can be called "Solus plus" uses a new title screen for each game
    - makes Oak harder as well
- "In the Generation I games, the battles against Lorelei, Bruno, and Agatha use the standard Trainer battle theme, while the Gym Leader battle theme is played only against Lance. In Pokémon FireRed and LeafGreen, the Gym Leader battle theme plays during the battles against all four members of the Elite Four"
- Look into this regarding changing map constants order:
    - map_constants.asm, map_header_banks.asm, map_header_pointers.asm, songs.asm, hide_show_data.asm, grass_water.asm, town_map_entries.asm, and dungeon_maps.asm.


## Makefile for sprite sets code snippet ...
```
ifeq ($(SPRITES),)
RGBASMFLAGS += -D USE_S
else ifeq ($(SPRITES),rg)
RGBASMFLAGS += -D USE_RG
endif
```
then user will need to run `make clean && make SPRITES=rg` because make is dumb and doesnt know if flags will 
result in a changed output rom so it will not run (assumes no changes)





## Bug fixes to maybe do at some point?
- LT Surge says the Thunderbadge boosts speed, but in the code it actually boosted defence. Now it boosts speed as text indicated.
- Koga says the Soulbadge boosts defense, but in the code it actually boosted speed. Now it boosts defense as the text indicated.
- the cut content Giovanni theme will play when you encounter Giovanni (unused music from Pokemon Yellow)
- There is unused text in the game for when you lose to your rival 

## Prob not this stuff
### Multi-player battle engine
- Moves that have 100% accuracy will miss in 1/256 uses
- Moves that have a 100% chance to critical hit will not crit in 1/256 uses
- Focus Energy quarters the critical hit chance instead of quadrupling it when used (done)
- Substitute may leave the user with 0 HP after it's used
- Dual-type move effectiveness may be misreported
- HP draining moves and Dream Eater may hit when they shouldn't
- PP restoring items do not account for PP Ups when used
- Unexpected Counter damage
- Bide damage doesn't get cleared properly in link battles if you are the host
- Struggle may not function correctly if any move has at least one PP Up
- Psychic/Psywave/Night Shade's animation doesn't wiggle the top 3 screen lines (done)
- Psywave can desync a link battle
- Fly and Dig do not remove the invulnerable status when prevented from reaching their second stage by paralysis or confusion damage
- Healing moves will fail if max HP is 255 or 511 points higher than current HP
- Switch-out messages do not account for underflow
- Haze can prevent a Pokémon from attacking after curing freeze

### Single-player battle engine
- Transformed Pokémon are no longer assumed to be Ditto (done)
- The Pokémon behind the Ghost is identified as seen in the Pokédex even if you didn't use the Silph Scope on it
- Ghost Pokémon can be identified without the Silph Scope
- Move swap sound is played in the wrong bank
- Exp. All gives half of the EXP of one participant instead of all participants
- Status-curing items remove stat modifiers (done)
- AI trainer HUD does not update when it uses healing items
### Game engine
- Cinnabar Island's left-facing shore tiles point to invalid Pokémon
- Lt. Surge's gym trash cans do not use the proper trash cans for the locks
- A sign in Route 16 isn't readable at its front
- The player can jump a ledge to land on top of an NPC
- Falling through a hole on the Bicycle doesn't reset the music
- The Item Finder won't detect items at X or Y coordinate 0
- NPCs can treat the bottom row or the rightmost column of a map as offscreen
- NPC movement delay can be higher than it should be
- NPCs can randomly load at the corner of the screen when you first enter an area
- Trainers' end battle text 2 isn't read correctly
- Smoke puffs from Strength boulders don't show up correctly
- GetBattleTransitionID_IsDungeonMap fails to recognize some maps as dungeon maps
- The lucky slot machine in the Game Corner doesn't stop when it should if you get a 7
- The lucky slot machine in the Game Corner doesn't stop when it should if there are two 7s or BARs on the middle or bottom of the wheel
- The hidden 40-coin stash in the Game Corner only gives half
- The splash screen adds 2 more stars than it should
- The PC screen in the healing machine doesn't flash correctly
- NPCs can receive the wrong movement byte and behave incorrectly
### Graphics
- Sliding of trainer and Pokémon graphics can cause tearing (done)
- The lower-right tile of Pokémon backsprites are deleted when sliding offscreen (done)
- Minimize and Substitute can cause sprite glitches with enemy Pokémon
- Double Edge looks weird when the opponent uses it
### Audio
- The battle victory music can sometimes play at the wrong time
- Prof. Oak's lab music can sometimes play with a channel cut off
- The 'acquired an item' jingle can sometimes be cut off
- The audio engine may borrow from the high byte of the wrong frequency
- Articuno's cry may get distorted when you see it in the binoculars on Route 15/Fossils play their Pokémon's cry when they shouldn't in Pewter Museum
- The Prof. Oak introduction uses Nidorina's cry instead of Nidorino's (done)
### Text
- The text used by Prof. Oak when he gives you 5 Pokéballs overwrites the second line with the last line
- An in-game trade NPC talks about an 'evolving Raichu'
- The text used by one of the Route 8 battles has text cut off
### Scripted events
- The lucky slot machine in the Game Corner can be the nonexistent slot machine 255 (-1)
- Saving Mr. Fuji and warping to his house doesn't let you immediately leave


## Random notes
OAK BATTLE
----------
"generic text about visiting" = .come_see_me_sometimes (1d2e7)