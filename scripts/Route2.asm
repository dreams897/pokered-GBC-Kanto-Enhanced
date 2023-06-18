Route2_Script:
	jp EnableAutoTextBoxDrawing

Route2_TextPointers:
	dw Route2Tree1
	dw Route2Tree2
	dw Route2Tree3
	dw Route2Tree4
	dw Route2Text3
	dw Route2Text4
	
Route2Tree1:
	text_asm
	ld a, 2 ; Tree number
	ld [wWhichTrade],a
	callfar BerryTreeScript
	jp TextScriptEnd

Route2Tree2:
	text_asm
	ld a, 12 ; Tree number
	ld [wWhichTrade],a
	callfar BerryTreeScript
	jp TextScriptEnd
	
Route2Tree3:
	text_asm
	ld a, 2
	ld [wWhichTrade],a
	callfar BerryTreeScript
	jp TextScriptEnd
	
Route2Tree4:
	text_asm
	ld a, 3
	ld [wWhichTrade],a
	callfar BerryTreeScript
	jp TextScriptEnd
	
Route2Text3:
	text_far _Route2Text3
	text_end

Route2Text4:
	text_far _Route2Text4
	text_end
