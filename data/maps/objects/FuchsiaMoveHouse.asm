FuchsiaMoveHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 3
	warp_event  3,  7, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_BALDING_GUY, STAY, LEFT, 1 ; person
	object_event  2,  3, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, 2 ; person

	def_warps_to FUCHSIA_MOVE_HOUSE
