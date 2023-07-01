Route4_Object:
	db $2c ; border block

	def_warp_events
	warp_event 11,  5, MT_MOON_POKECENTER, 1
	warp_event 18,  5, MT_MOON_1F, 1
	warp_event 24,  5, MT_MOON_B1F, 8

	def_bg_events
	bg_event 12,  5, 7 ; PokeCenterSignText
	bg_event 17,  7, 8 ; Route4Text5
	bg_event 27,  7, 9 ; Route4Text6

	def_object_events
	object_event  9,  8, SPRITE_COOLTRAINER_F, WALK, ANY_DIR, 1 ; person
	object_event 63,  2, SPRITE_COOLTRAINER_F, STAY, DOWN, 2, OPP_LASS, 4
	object_event 57,  3, SPRITE_POKE_BALL, STAY, NONE, 3, TM_WHIRLWIND
	object_event 62,  4, SPRITE_POKE_BALL, STAY, NONE, 4, SUPER_REPEL
	object_event  6,  5, SPRITE_BERRY_TREE, STAY, DOWN, 5 ; person
	object_event 41,  3, SPRITE_BERRY_TREE, STAY, DOWN, 6 ; person

	def_warps_to ROUTE_4
