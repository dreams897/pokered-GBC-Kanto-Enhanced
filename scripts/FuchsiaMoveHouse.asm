FuchsiaMoveHouse_Script:
	call EnableAutoTextBoxDrawing
	ret

FuchsiaMoveHouse_TextPointers:
	dw FuchsiaMoveHouseText1
	dw FuchsiaMoveHouseText2

FuchsiaMoveHouseText1:
	text_far MoveDeleterText1
	text_end

FuchsiaMoveHouseText2:
	text_far MoveRelearnerText1
	text_end

