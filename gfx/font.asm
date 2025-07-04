PokemonLogoGraphics: INCBIN "gfx/title/pokemon_logo.2bpp"
FontGraphics:: INCBIN "gfx/font/font.1bpp"
FontGraphicsEnd::

ABTiles: INCBIN "gfx/font/AB.2bpp"

HpBarAndStatusGraphics:: INCBIN "gfx/font/font_battle_extra_with_pokeball.2bpp" ; solusnote - for in-battle caught pokemon indicator (uses icon from Gen 2)
HpBarAndStatusGraphicsEnd::

BattleHudTiles1: INCBIN "gfx/battle/battle_hud_1.1bpp"
BattleHudTiles1End:
BattleHudTiles2: INCBIN "gfx/battle/battle_hud_2.1bpp"
BattleHudTiles3: INCBIN "gfx/battle/battle_hud_3_thicker.1bpp" ; solusnote - for EXP bar to look better
BattleHudTiles3End:

NintendoCopyrightLogoGraphics: INCBIN "gfx/splash/copyright.2bpp"

GameFreakLogoGraphics: INCBIN "gfx/title/gamefreak_inc.2bpp"
GameFreakLogoGraphicsEnd:

TextBoxGraphics:: INCBIN "gfx/font/font_extra.2bpp"
TextBoxGraphicsEnd::

PokedexTileGraphics: INCBIN "gfx/pokedex/pokedex.2bpp"
PokedexTileGraphicsEnd:

WorldMapTileGraphics: INCBIN "gfx/town_map/town_map.2bpp"
WorldMapTileGraphicsEnd:

PlayerCharacterTitleGraphics: INCBIN "gfx/title/player.2bpp"
PlayerCharacterTitleGraphicsEnd:

;EXPBarGraphics::  INCBIN "gfx/battle/exp_bar.2bpp" ; solusnote - for in-battle EXP bar
EXPBarGraphics::  INCBIN "gfx/battle/exp_bar_alt.2bpp" ; solusnote - for in-battle EXP bar with png updated to use secondary grey
    ; so we can utilize the accent yellow color from the GREENBAR, YELLOWBAR, REDBAR palettes
EXPBarGraphicsEnd::
