RedsHouse1F_Script:
	jp EnableAutoTextBoxDrawing

RedsHouse1F_TextPointers:
	dw RedsHouse1FMomText
	dw RedsHouse1FTVText

RedsHouse1FMomText:
	text_asm
	ld a, [wd72e]
	bit 3, a ; received a Pokémon from Oak?
	jr nz, .heal
	ld a, [wPlayerGender]
	and a
	jr z, .boy
	cp 1
	jr z, .girl
	ld hl, MomWakeUpTextEnby
	call PrintText
	jr .done
.boy
	ld hl, MomWakeUpTextBoy
	call PrintText
	jr .done
.girl
	ld hl, MomWakeUpTextGirl
	call PrintText
	jr .done
.heal
	call MomHealPokemon
.done
	jp TextScriptEnd
	
	
MomWakeUpTextBoy:
	text_far _MomWakeUpTextBoy
	text_end
	
MomWakeUpTextGirl:
	text_far _MomWakeUpTextGirl
	text_end
	
MomWakeUpTextEnby:
	text_far _MomWakeUpTextEnby
	text_end

MomHealPokemon:
	ld hl, MomHealText1
	call PrintText
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
;	ld [wNewSoundID], a
	call PlayMusic

	call WaitForSongToFinish
;.next
;	ld a, [wChannelSoundIDs]
;	cp MUSIC_PKMN_HEALED
;	jr z, .next

	ld a, [wMapMusicSoundID]
;	ld [wNewSoundID], a
	call PlayMusic
	call GBFadeInFromWhite
	ld hl, MomHealText2
	jp PrintText

MomHealText1:
	text_far _MomHealText1
	text_end
MomHealText2:
	text_far _MomHealText2
	text_end

RedsHouse1FTVText:
	text_asm
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ld hl, TVWrongSideText
	jr nz,.done ; if player is not facing up
	ld a, [wPlayerGender]
	and a
	jr z, .boy
	cp 1
	jr z, .girl
	ld hl, VirctorVictoriaText
	jr .done
.boy
	ld hl,StandByMeText
	jr .done
.girl
	ld hl, WizardOfOzText
.done
	call PrintText
	jp TextScriptEnd
	

StandByMeText:
	text_far _StandByMeText
	text_end
	
WizardOfOzText:
	text_far _WizardOfOzText
	text_end

VirctorVictoriaText:
	text_far _VirctorVictoriaText
	text_end

TVWrongSideText:
	text_far _TVWrongSideText
	text_end
