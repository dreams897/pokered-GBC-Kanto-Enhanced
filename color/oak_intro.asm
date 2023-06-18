; Helper functions for oak intro

GetNidorinoPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_NIDORINO
ELSE
	ld a, PAL_PURPLEMON
ENDC
	jr GotPalID

GetRedPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, [wPlayerGender]
	and a
	jr z, .male
	cp a, $02
	jr z, .AreEnby
	ld a, PAL_GREEN
	jr .ContinueWithLoading
.AreEnby
	ld a, PAL_ORANGE
.male
	ld a, PAL_RED
ELSE
	ld a, PAL_REDMON
ENDC
.female
.ContinueWithLoading
	jr GotPalID

GetRivalPalID:
	call ClearScreen
IF GEN_2_GRAPHICS
	ld a, PAL_GARY1
ELSE
	ld a, PAL_MEWMON
ENDC
	jr GotPalID

GotPalID:
	ld e, 0
	ld d, a

	ld a, 2
	ldh [rSVBK], a
	CALL_INDIRECT LoadSGBPalette
	xor a
	ldh [rSVBK], a
	ret

