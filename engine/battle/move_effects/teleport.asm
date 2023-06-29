_TeleportEffect::	
	ldh a, [hWhoseTurn]
	and a
	jr nz, .handleEnemy
	call CheckCanForceSwitch
	jp z, .failed
	xor a
	ld [wAnimationType], a
	ld a, [wPlayerMoveNum]
	ld hl, WithdrewFromBattle
	call .playAnimAndPrintText
	ret
.handleEnemy
	ld a, [wIsInBattle]
	dec a
	jr z, .wildBattle
	; not wild battle
	call CheckCanForceSwitch
	jr z, .failed
	xor a
	ld [wAnimationType], a
	ld a, [wEnemyMoveNum]
	ld hl, WithdrewFromBattle
	call .playAnimAndPrintText
	jpfar SwitchEnemyMonNoText
.wildBattle
	ld a, [wBattleMonLevel]
	ld b, a
	ld a, [wCurEnemyLVL]
	cp b
	jr nc, .runAwaySuccessful
	add b
	ld c, a
	inc c
	ld d, b
	ld e, c
	callfar TeleportWildPokemon
	jr c, .failed
.runAwaySuccessful
	callfar ReadPlayerMonCurHPAndStatus
	xor a
	ld [wAnimationType], a
	inc a
	ld [wEscapedFromBattle], a
	ld a, [wEnemyMoveNum]
	ld hl, TeleportedAwayText
.playAnimAndPrintText
	push hl
;;;;;;;;;; PureRGBnote: ADDED: set the flag that makes the animation code mark this move as seen in the movedex
	ld hl, wBattleFunctionalFlags
	set 0, [hl] ; teleport will be marked off on the movedex
;;;;;;;;;;
	ld [wAnimationID], a
	callfar PlayBattleAnimationGotID
	ld c, 20
	call DelayFrames
	; pop af
	pop hl
	jp PrintText
.failed
	ld c, 50
	call DelayFrames
	jp nz, PrintText
	jp PrintButItFailedText_

RanFromBattleText:
	text_far _RanFromBattleText
	text_end

TeleportedAwayText:
	text_far _TeleportedAway
	text_end
	
WithdrewFromBattle:
	text_far _WithdrewFromBattle
	text_end

; returns nz if the player/opponent can switch
CheckCanForceSwitch::
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPartyCount]
	ld hl, wPartyMon1HP
	ld bc, wPartyMon2 - wPartyMon1 - 1
	jr z, CheckCanForceSwitchEnemy.playerTurn
CheckCanForceSwitchEnemy::
	ld a, [wEnemyPartyCount]
	ld hl, wEnemyMon1HP
	ld bc, wEnemyMon2 - wEnemyMon1 - 1
.playerTurn
	ld e, a
	ld d, a
.partyMonsLoop
	xor a
	or [hl]
	inc hl
	or [hl]
	and a
	jr nz, .skipDec
	dec d
.skipDec
	add hl, bc
	dec e
	jr nz, .partyMonsLoop
	ld a, d
	dec a ; don't count current pokemon
	ret
