Route2_Object:
	db $f ; border block

	def_warp_events
	warp_event 12,  9, DIGLETTS_CAVE_ROUTE_2, 1
	warp_event  3, 11, VIRIDIAN_FOREST_NORTH_GATE, 2
	warp_event 15, 19, ROUTE_2_TRADE_HOUSE, 1
	warp_event 16, 35, ROUTE_2_GATE, 2
	warp_event 15, 39, ROUTE_2_GATE, 3
	warp_event  3, 43, VIRIDIAN_FOREST_SOUTH_GATE, 3

	def_bg_events
	bg_event  5, 65, 5 ; Route2Text3
	bg_event 11, 11, 6 ; Route2Text4

	def_object_events
	object_event 14, 55, SPRITE_BERRY_TREE, STAY, DOWN, 1 ; person
	object_event 14, 46, SPRITE_BERRY_TREE, STAY, DOWN, 2 ; person
	object_event 16, 16, SPRITE_BERRY_TREE, STAY, DOWN, 3 ; person
	object_event 8, 40, SPRITE_BERRY_TREE, STAY, DOWN, 4 ; person

	def_warps_to ROUTE_2

	; unused
	warp_to 2, 7, 4
	db $12, $c7, $9, $7
	warp_to 2, 7, 4
	warp_to 2, 7, 4
	warp_to 2, 7, 4
