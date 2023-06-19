MtMoonB2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, MtMoon3TrainerHeaders
	ld de, MtMoonB2F_ScriptPointers
	ld a, [wMtMoonB2FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wMtMoonB2FCurScript], a
	ret

MtMoonB2F_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

MtMoonB2F_TextPointers:
	dw MtMoon3Text1
	dw MtMoon3Text2
	dw MtMoon3Text3
	dw MtMoon3Text4
	dw MtMoon3Text5
	dw MtMoon3Text6
	dw MtMoon3Text7
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText

MtMoon3TrainerHeaders:
	def_trainers
MtMoon3TrainerHeader0:
	trainer EVENT_BEAT_MT_MOON_3_TRAINER_0, 4, MtMoon3BattleText2, MtMoon3EndBattleText2, MtMoon3AfterBattleText2
MtMoon3TrainerHeader1:
	trainer EVENT_BEAT_MT_MOON_3_TRAINER_1, 4, MtMoon3BattleText3, MtMoon3EndBattleText3, MtMoon3AfterBattleText3
MtMoon3TrainerHeader2:
	trainer EVENT_BEAT_MT_MOON_3_TRAINER_2, 4, MtMoon3BattleText4, MtMoon3EndBattleText4, MtMoon3AfterBattleText4
MtMoon3TrainerHeader3:
	trainer EVENT_BEAT_MT_MOON_3_TRAINER_3, 4, MtMoon3BattleText5, MtMoon3EndBattleText5, MtMoon3AfterBattleText5
MtMoon3TrainerHeader4:
	trainer EVENT_BEAT_MT_MOON_EXIT_SUPER_NERD, 4, MtMoon3Text_49f85, MtMoon3Text_49f8a, MtMoon3Text_49f94
	db -1 ; end

MtMoon3Text1:
	text_asm
	ld hl, MtMoon3TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

MtMoon3Text2:
	text_asm
	ld hl, MtMoon3TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

MtMoon3Text3:
	text_asm
	ld hl, MtMoon3TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

MtMoon3Text4:
	text_asm
	ld hl, MtMoon3TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd
	
MtMoon3Text5:
	text_asm
	ld hl, MtMoon3TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

MtMoon3Text6:
	text_asm
	CheckEvent EVENT_GOT_DOME_FOSSIL
	lb bc, DOME_FOSSIL, 1
	call GiveItem
	jr nc, .bag_full
	ld a, HS_MT_MOON_B2F_FOSSIL_1
	ld [wMissableObjectIndex], a
	predef HideObject
	ld hl, MtMoon3DomeFossilText
	call PrintText
	SetEvent EVENT_GOT_DOME_FOSSIL
	jr .done
	
.bag_full
	ld hl, MtMoon3Text_49f7f
	call PrintText
.done
	jp TextScriptEnd

MtMoon3Text7:
	text_asm
	CheckEvent EVENT_GOT_HELIX_FOSSIL
	lb bc, HELIX_FOSSIL, 1
	call GiveItem
	jr nc, .bag_full
	ld a, HS_MT_MOON_B2F_FOSSIL_2
	ld [wMissableObjectIndex], a
	predef HideObject
	ld hl, MtMoon3HelixFossilText
	call PrintText
	SetEvent EVENT_GOT_HELIX_FOSSIL
	jr .done
	
.bag_full
	ld hl, MtMoon3Text_49f7f
	call PrintText
.done
	jp TextScriptEnd

MtMoon3DomeFossilText:
	text_far _MtMoon3DomeText
	sound_get_key_item
	text_end
	
MtMoon3HelixFossilText:
	text_far _MtMoon3HelixText
	sound_get_key_item
	text_end

MtMoon3Text_49f7f:
	text_far _MtMoon3Text_49f7f
	text_end

MtMoon3Text_49f85:
	text_far _MtMoon3Text_49f85
	text_end

MtMoon3Text_49f8a:
	text_far _MtMoon3Text_49f8a
	text_end

MtMoon3Text_49f94:
	text_far _MtMoon3Text_49f94
	text_end
	
MtMoon3Text_49f95:
	text_far _MtMoon3Text_49f95
	text_end

MtMoon3BattleText2:
	text_far _MtMoon3BattleText2
	text_end

MtMoon3EndBattleText2:
	text_far _MtMoon3EndBattleText2
	text_end

MtMoon3AfterBattleText2:
	text_far _MtMoon3AfterBattleText2
	text_end

MtMoon3BattleText3:
	text_far _MtMoon3BattleText3
	text_end

MtMoon3EndBattleText3:
	text_far _MtMoon3EndBattleText3
	text_end

MtMoon3AfterBattleText3:
	text_far _MtMoon3AfterBattleText3
	text_end

MtMoon3BattleText4:
	text_far _MtMoon3BattleText4
	text_end

MtMoon3EndBattleText4:
	text_far _MtMoon3EndBattleText4
	text_end

MtMoon3AfterBattleText4:
	text_far _MtMoon3AfterBattleText4
	text_end

MtMoon3BattleText5:
	text_far _MtMoon3BattleText5
	text_end

MtMoon3EndBattleText5:
	text_far _MtMoon3EndBattleText5
	text_end

MtMoon3AfterBattleText5:
	text_far _MtMoon3AfterBattleText5
	text_end
