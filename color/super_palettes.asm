; Note: after calling this, you may need to set W2_ForceBGPUpdate/ForceOBPUpdate to nonzero.
; d = palette to load (see constants/palette_constants.), e = palette index
LoadSGBPalette:
	ldh a, [rSVBK]
	ld b, a
	ld a, 2
	ldh [rSVBK], a
	push bc

	ld a, e
	ld l, d
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, SuperPalettes
	add hl, de

	ld de, W2_BgPaletteData
	jr startPaletteTransfer

LoadSGBPalette_Sprite:
	ldh a, [rSVBK]
	ld b, a
	ld a, 2
	ldh [rSVBK], a
	push bc

	ld a, e
	ld l, d
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, SuperPalettes
	add hl, de

	ld de, W2_BgPaletteData + $40

startPaletteTransfer:
	add a
	add a
	add a
	add e
	ld e, a
	ld b, 8

.palLoop
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .palLoop

	pop af
	ldh [rSVBK], a
	ret
	
LoadPokemonPalette:
	ld hl, PokemonPaletteTable
	jr LoadSGBPalette

LoadShinyPokemonPalette:
	ld hl, ShinyPokemonPaletteTable
	jr LoadSGBPalette

LoadTrainerPalette:
	ld hl, TrainerPaletteTable
	;jr LoadSGBPalette
	
LoadPokemonPalette_Sprite:
	ld hl, PokemonPaletteTable
	jr LoadSGBPalette_Sprite

LoadShinyPokemonPalette_Sprite:
	ld hl, ShinyPokemonPaletteTable
	jr LoadSGBPalette_Sprite

LoadTrainerPalette_Sprite:
	ld hl, TrainerPaletteTable
	;jr LoadSGBPalette_Sprite

INCLUDE "data/sgb/sgb_palettes.asm"
