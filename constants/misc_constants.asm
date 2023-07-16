; Boolean checks
DEF FALSE EQU 0
DEF TRUE  EQU 1

; flag operations
	const_def
	const FLAG_RESET ; 0
	const FLAG_SET   ; 1
	const FLAG_TEST  ; 2

; wOptions
DEF TEXT_DELAY_FAST   EQU %000 ; 0
DEF TEXT_DELAY_MEDIUM EQU %001 ; 1
DEF TEXT_DELAY_SLOW   EQU %011 ; 3

	const_def 6
	const BIT_BATTLE_SHIFT     ; 6
	const BIT_BATTLE_ANIMATION ; 7
	
; Shiny DV constants
ATKDEFDV_SHINY EQU $FB
SPDSPCDV_SHINY EQU $DF
ATKDEFDV_SHINY_FEMALE EQU $7B
	
; Used  to define gender ratios
MALE_ONLY         EQU $00
MALE_88_PERCENT   EQU $1F
MALE_75_PERCENT   EQU $3F
SAME_BOTH_GENDERS EQU $7F
FEMALE_75_PERCENT EQU $BF
FEMALE_ONLY       EQU $FE
NO_GENDER         EQU $FF

; used when returning a Pokemon's gender
GENDERLESS EQU $00
MALE       EQU $01
FEMALE     EQU $02
