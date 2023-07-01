TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
	db MAROWAK,    HAUNTER,   TRADE_DIALOGSET_HAPPY,     "Shadow@@@@@" ; Route 11
	db ABRA,       MR_MIME,   TRADE_DIALOGSET_CASUAL,    "Marcel@@@@@" ; Route 2 House
	db PIKACHU,    STARYU,    TRADE_DIALOGSET_HAPPY,     "Sandy@@@@@@" ; Pewter Museum
	db HYPNO,      KADABRA,   TRADE_DIALOGSET_HAPPY,     "Ness@@@@@@@" ;
	db SPEAROW,    FARFETCHD, TRADE_DIALOGSET_HAPPY,     "Dux@@@@@@@@" ;
	db SLOWBRO,    LICKITUNG, TRADE_DIALOGSET_CASUAL,    "Marc@@@@@@@" ;
	db GLOOM,      BULBASAUR, TRADE_DIALOGSET_CASUAL,    "Bud@@@@@@@@" ; Cerulean Trade House
	db RHYHORN,    GRAVELER,  TRADE_DIALOGSET_EVOLUTION, "Rocky@@@@@@" ; Cinnabar Trade Room
	db PRIMEAPE,   MACHOKE,   TRADE_DIALOGSET_CASUAL,    "Manny@@@@@@" ;
	db NINETALES,  CHARMANDER, TRADE_DIALOGSET_HAPPY,    "Flame@@@@@@" ; Route 5 - Underground Gate
	assert_table_length NUM_NPC_TRADES
