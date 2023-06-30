CeruleanBerryHouse_Script:
	ld a, TRUE
	ld [wAutoTextBoxDrawingControl], a
	dec a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ret

CeruleanBerryHouse_TextPointers:
	dw CeruleanBerryHouseText1

CeruleanBerryHouseText1:
	text_asm
	ld hl, CeruleanBerryHouseText_74e77
	call PrintText
	xor a
	ld [wCurrentMenuItem], a
	ld [wListScrollOffset], a
.asm_74e23
	ld hl, CeruleanBerryHouseText_74e7c
	call PrintText
	ld hl, BerryItemList
	call LoadItemList
	ld hl, wItemList
	ld a, l
	ld [wListPointer], a
	ld a, h
	ld [wListPointer + 1], a
	xor a
	ld [wPrintItemPrices], a
	ld [wMenuItemToSwap], a
	ld a, SPECIALLISTMENU
	ld [wListMenuID], a
	call DisplayListMenuID
	jr c, .asm_74e60
	ld hl, TextPointers_Berries
	ld a, [wcf91]
	sub ORAN_BERRY
	add a
	ld d, $0
	ld e, a
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	jr .asm_74e23
.asm_74e60
	xor a
	ld [wListScrollOffset], a
	ld hl, CeruleanBerryHouseText_74e81
	call PrintText
	jp TextScriptEnd

BerryItemList:
	db 10 ; #
	db ORAN_BERRY
	db SITRUS_BERRY
	db LEPPA_BERRY
	db PECHA_BERRY
	db RAWST_BERRY
	db ASPEAR_BERRY
	db CHESTO_BERRY
	db CHERI_BERRY
	db LUM_BERRY
	db ACAI_BERRY
	db -1 ; end


CeruleanBerryHouseText_74e77:
	text_far _CeruleanBerryHouseText_74e77
	text_end

CeruleanBerryHouseText_74e7c:
	text_far _CeruleanBerryHouseText_74e7c
	text_end

CeruleanBerryHouseText_74e81:
	text_far _CeruleanBerryHouseText_74e81
	text_end

TextPointers_Berries:
	dw OranBerryText
	dw SitrusBerryText
	dw LeppaBerryText
	dw PechaBerryText
	dw RawstBerryText
	dw AspearBerryText
	dw ChestoBerryText
	dw CheriBerryText
	dw LumBerryText
	dw AcaiBerryText

OranBerryText:
	text_far _OranBerryText
	text_end

SitrusBerryText:
	text_far _SitrusBerryText
	text_end

LeppaBerryText:
	text_far _LeppaBerryText
	text_end

PechaBerryText:
	text_far _PechaBerryText
	text_end

RawstBerryText:
	text_far _RawstBerryText
	text_end

AspearBerryText:
	text_far _AspearBerryText
	text_end

ChestoBerryText:
	text_far _ChestoBerryText
	text_end

CheriBerryText:
	text_far _CheriBerryText
	text_end
	
LumBerryText:
	text_far _LumBerryText
	text_end
	
AcaiBerryText:
	text_far _AcaiBerryText
	text_end
