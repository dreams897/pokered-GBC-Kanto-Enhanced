TreeMonPointerTable:
	dw TreeMons1  ; PALLET_TOWN
	dw TreeMons1  ; VIRIDIAN_CITY
	dw TreeMons2  ; PEWTER_CITY
	dw TreeMons2  ; CERULEAN_CITY
	dw TreeMons4  ; LAVENDER_TOWN
	dw TreeMons3  ; VERMILION_CITY
	dw TreeMons4  ; CELADON_CITY
	dw TreeMons5  ; FUCHSIA_CITY
	dw TreeMons7  ; CINNABAR_ISLAND
	dw TreeMons7  ; INDIGO_PLATEAU
	dw TreeMons4  ; SAFFRON_CITY
	dw TreeMons1  ; unused map
	dw TreeMons1  ; ROUTE_1
	dw TreeMons1  ; ROUTE_2
	dw TreeMons2  ; ROUTE_3
	dw TreeMons2  ; ROUTE_4
	dw TreeMons3  ; ROUTE_5
	dw TreeMons3  ; ROUTE_6
	dw TreeMons4  ; ROUTE_7
	dw TreeMons4  ; ROUTE_8
	dw TreeMons4  ; ROUTE_9
	dw TreeMons4  ; ROUTE_10
	dw TreeMons4  ; ROUTE_11
	dw TreeMons5  ; ROUTE_12
	dw TreeMons5  ; ROUTE_13
	dw TreeMons5  ; ROUTE_14
	dw TreeMons5  ; ROUTE_15
	dw TreeMons4  ; ROUTE_16
	dw TreeMons5  ; ROUTE_17
	dw TreeMons6  ; ROUTE_18
	dw TreeMons6  ; ROUTE_19
	dw TreeMons7  ; ROUTE_20
	dw TreeMons7  ; ROUTE_21
	dw TreeMons1  ; ROUTE_22
	dw TreeMons7  ; ROUTE_23
	dw TreeMons2  ; ROUTE_24
	dw TreeMons2  ; ROUTE_25
	; Any map not in this list defaults to TreeMons1

TreeMons1:
	db 10, CATERPIE
	db 12, CATERPIE
	db 10, WEEDLE
	db 11, WEEDLE
	db 10, KAKUNA
	db 10, METAPOD
	db 12, KAKUNA
	db 12, METAPOD
	db 11, SPEAROW
	db 12, SPEAROW

TreeMons2:
	db 10, PIDGEY
	db 12, PIDGEY
	db 10, SPEAROW
	db 11, SPEAROW
	db 10, VENONAT
	db 12, VENONAT
	db 10, EKANS
	db 12, EKANS
	db 10, SPEAROW
	db 11, SPEAROW

TreeMons3:
	db 13, VENONAT
	db 15, VENONAT
	db 14, SPEAROW
	db 14, MANKEY
	db 15, MANKEY
	db 13, SPEAROW
	db 15, SPEAROW
	db 13, EKANS
	db 14, EKANS
	db 15, EKANS

TreeMons4:
	db 13, EKANS
	db 14, EKANS
	db 15, EKANS
	db 12, SPEAROW
	db 13, SPEAROW
	db 14, PIDGEY
	db 13, PIDGEY
	db 15, SPEAROW
	db 13, MANKEY
	db 15, MANKEY

TreeMons5:
	db 20, SPEAROW
	db 21, SPEAROW
	db 20, VENONAT
	db 22, VENONAT
	db 22, SPEAROW
	db 25, SPEAROW
	db 20, EKANS
	db 25, VENOMOTH
	db 23, EKANS
	db 25, FEAROW

TreeMons6:
	db 20, VENONAT
	db 21, VENONAT
	db 23, SPEAROW
	db 24, SPEAROW
	db 22, VENONAT
	db 25, VENONAT
	db 21, SPEAROW
	db 24, SPEAROW
	db 22, MANKEY
	db 25, MANKEY

TreeMons7:
	db 28, VENONAT
	db 29, VENONAT
	db 25, KAKUNA
	db 28, BEEDRILL
	db 25, SPEAROW
	db 26, SPEAROW
	db 27, SPEAROW
	db 27, SPEAROW
	db 29, FEAROW
	db 30, FEAROW

TreeMons8: ; unused for now
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY

TreeMons9: ; unused for now
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY

TreeMons10: ; unused for now
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY

TreeMons11: ; unused for now
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY

TreeMons12: ; unused for now
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
	db 10, PIDGEY
