MACRO overworld_sprite
	dw \1
	db \2 tiles
	db BANK(\1)
ENDM

SpriteSheetPointerTable:
	table_width 4, SpriteSheetPointerTable
	; graphics, tile count
	overworld_sprite RedSprite, 12              ; SPRITE_RED   	        ; $01
	overworld_sprite GreenSprite, 12            ; SPRITE_GREEN		; $43
	overworld_sprite PurpleSprite, 12           ; SPRITE_PURPLE		; $49
	overworld_sprite BlueSprite, 12             ; SPRITE_BLUE  	        ; $02
	overworld_sprite OakSprite, 12              ; SPRITE_OAK    		; $03
	overworld_sprite YoungsterSprite, 12        ; SPRITE_YOUNGSTER  	; $04
	overworld_sprite CooltrainerFSprite, 12     ; SPRITE_COOLTRAINER_F	; $06
	overworld_sprite CooltrainerMSprite, 12     ; SPRITE_COOLTRAINER_M	; $07
	overworld_sprite LittleGirlSprite, 12       ; SPRITE_LITTLE_GIRL 	; $08
	overworld_sprite BirdSprite, 12             ; SPRITE_BIRD	 	; $09
	overworld_sprite MiddleAgedManSprite, 12    ; SPRITE_MIDDLE_AGED_MAN	; $0a
	overworld_sprite GamblerSprite, 12          ; SPRITE_GAMBLER		; $0b
	overworld_sprite SuperNerdSprite, 12        ; SPRITE_SUPER_NERD		; $0c
	overworld_sprite GirlSprite, 12             ; SPRITE_GIRL		; $0d
	overworld_sprite HikerSprite, 12            ; SPRITE_HIKER		; $0e
	overworld_sprite BeautySprite, 12           ; SPRITE_BEAUTY		; $0f
	overworld_sprite GentlemanSprite, 12        ; SPRITE_GENTLEMAN		; $10
	overworld_sprite DaisySprite, 12            ; SPRITE_DAISY		; $11
	overworld_sprite BikerSprite, 12            ; SPRITE_BIKER		; $12
	overworld_sprite SailorSprite, 12           ; SPRITE_SAILOR		; $13
	overworld_sprite CookSprite, 12             ; SPRITE_COOK		; $14
	overworld_sprite BikeShopClerkSprite, 12    ; SPRITE_BIKE_SHOP_CLERK	; $15
	overworld_sprite MrFujiSprite, 12           ; SPRITE_MR_FUJI		; $16
	overworld_sprite GiovanniSprite, 12         ; SPRITE_GIOVANNI		; $17
	overworld_sprite RocketSprite, 12           ; SPRITE_ROCKET		; $18
	overworld_sprite ChannelerSprite, 12        ; SPRITE_CHANNELER		; $19
	overworld_sprite WaiterSprite, 12           ; SPRITE_WAITER		; $1a
	overworld_sprite ErikaSprite, 12            ; SPRITE_ERIKA		; $1b
	overworld_sprite MiddleAgedWomanSprite, 12  ; SPRITE_MIDDLE_AGED_WOMAN  ; $1c
	overworld_sprite BrunetteGirlSprite, 12     ; SPRITE_BRUNETTE_GIRL	; $1d
	overworld_sprite LanceSprite, 12            ; SPRITE_LANCE		; $1e
	overworld_sprite ScientistSprite, 12        ; SPRITE_UNUSED_SCIENTIST	; $1f
	overworld_sprite ScientistSprite, 12        ; SPRITE_SCIENTIST		; $20
	overworld_sprite RockerSprite, 12           ; SPRITE_ROCKER		; $21
	overworld_sprite SwimmerSprite, 12          ; SPRITE_SWIMMER		; $22
	overworld_sprite SafariZoneWorkerSprite, 12 ; SPRITE_SAFARI_ZONE_WORKER ; $23
	overworld_sprite GymGuideSprite, 12         ; SPRITE_GYM_GUIDE		; $24
	overworld_sprite GrampsSprite, 12           ; SPRITE_GRAMPS		; $25
	overworld_sprite ClerkSprite, 12            ; SPRITE_CLERK		; $26
	overworld_sprite FishingGuruSprite, 12      ; SPRITE_FISHING_GURU	; $27
	overworld_sprite GrannySprite, 12           ; SPRITE_GRANNY		; $28
	overworld_sprite NurseSprite, 12            ; SPRITE_NURSE		; $29
	overworld_sprite LinkReceptionistSprite, 12 ; SPRITE_LINK_RECEPTIONIST	; $2a
	overworld_sprite SilphPresidentSprite, 12   ; SPRITE_SILPH_PRESIDENT	; $2b
	overworld_sprite SilphWorkerSprite, 12      ; SPRITE_SILPH_WORKER	; $2c
	overworld_sprite WardenSprite, 12           ; SPRITE_WARDEN		; $2d
	overworld_sprite CaptainSprite, 12          ; SPRITE_CAPTAIN		; $2e
	overworld_sprite FisherSprite, 12           ; SPRITE_FISHER		; $2f
	overworld_sprite KogaSprite, 12             ; SPRITE_KOGA		; $30
	overworld_sprite GuardSprite, 12            ; SPRITE_GUARD		; $31
	overworld_sprite BlackbeltSprite, 12        ; SPRITE_BLACKBELT		; $32
	overworld_sprite MomSprite, 12              ; SPRITE_MOM		; $33
	overworld_sprite BaldingGuySprite, 12       ; SPRITE_BALDING_GUY	; $34
	overworld_sprite LittleBoySprite, 12        ; SPRITE_LITTLE_BOY		; $35
	overworld_sprite GameboyKidSprite, 12       ; SPRITE_UNUSED_GAMEBOY_KID ; $36
	overworld_sprite GameboyKidSprite, 12       ; SPRITE_GAMEBOY_KID	; $36
	overworld_sprite AgathaSprite, 12           ; SPRITE_AGATHA		; $38
	overworld_sprite BrunoSprite, 12            ; SPRITE_BRUNO		; $39
	overworld_sprite LoreleiSprite, 12          ; SPRITE_LORELEI		; $3a
	overworld_sprite BillSprite, 12             ; SPRITE_BILL		; $3c
	overworld_sprite BlaineSprite, 12           ; SPRITE_BLAINE		; $3d
	overworld_sprite BrockSprite, 12            ; SPRITE_BROCK		; $3f
	overworld_sprite BulbasaurSprite, 12        ; SPRITE_BULBASAUR		; $40
	overworld_sprite ChanseySprite, 12          ; SPRITE_CHANSEY		; $41
	overworld_sprite DittoSprite, 12            ; SPRITE_DITTO		; $42
	overworld_sprite FairySprite, 12            ; SPRITE_FAIRY		; $37
	overworld_sprite JamesSprite, 12            ; SPRITE_JAMES		; $44
	overworld_sprite JessieSprite, 12           ; SPRITE_JESSIE		; $45
	overworld_sprite JigglypuffSprite, 12       ; SPRITE_JIGGLYPUFF		; $48
        overworld_sprite LaprasSprite, 12           ; SPRITE_LAPRAS		; $46
        overworld_sprite MonsterSprite, 12          ; SPRITE_MONSTER    	; $05
        overworld_sprite MistySprite, 12            ; SPRITE_MISTY		; $47
	overworld_sprite SabrinaSprite, 12          ; SPRITE_SABRINA		; $4a
	overworld_sprite SeelSprite, 12             ; SPRITE_SEEL		; $3b
	overworld_sprite SurgeSprite, 12            ; SPRITE_SURGE		; $4b
	overworld_sprite SwimmerFemaleSprite, 12    ; SPRITE_SWIMMER_F		; 
	overworld_sprite PokeBallSprite, 4          ; SPRITE_POKE_BALL		; $4c
	overworld_sprite PokeBall2Sprite, 4         ; SPRITE_POKE_BALL2		; $4d
	overworld_sprite TruckSprite, 4             ; SPRITE_TRUCK		; $4e
	overworld_sprite BerryTreeSprite, 4         ; SPRITE_BERRY_TREE		; $4f
	overworld_sprite FossilSprite, 4            ; SPRITE_FOSSIL		; $50
	overworld_sprite BoulderSprite, 4           ; SPRITE_BOULDER		; $51
	overworld_sprite PaperSprite, 4             ; SPRITE_PAPER		; $52
	overworld_sprite PokedexSprite, 4           ; SPRITE_POKEDEX		; $53
	overworld_sprite TownMapSprite, 4           ; SPRITE_TOWNMAP		; $54
	overworld_sprite ClipboardSprite, 4         ; SPRITE_CLIPBOARD		; $55
	overworld_sprite SnorlaxSprite, 4           ; SPRITE_SNORLAX		; $56
	overworld_sprite OldAmberSprite, 4          ; SPRITE_OLD_AMBER		; $57
	overworld_sprite GamblerAsleepSprite, 4     ; SPRITE_GAMBLER_ASLEEP	; $60
	assert_table_length NUM_SPRITES
