_MoveDeleterGreetingText::
	text "Uh..."
	line "Er, yes, I'm"
	cont "the Move Deleter."

	para "I can make"
	line "#mon forget"
	cont "their moves."

	para "Would you like"
	line "me to do that?"
	done

_MoveDeleterSaidYesText::
	text "Which #MON"
	line "should forget a"
	cont "move?"
	prompt

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget, then?"
	done

_MoveDeleterConfirmText::
	text "Make it forget"
	line "@"
	text_ram wStringBuffer
	text "?"
	prompt

_MoveDeleterForgotText::
	text "@"
	text_ram wStringBuffer
	text " was"
	line "forgotten!"
	prompt

_MoveDeleterByeText::
	text "Come again if"
	line "there are other"
	cont "moves to be"
	cont "forgotten."
	done

_MoveDeleterOneMoveText::
	text "That #MON"
	line "knows only one"
	cont "move."
	cont "Pick another?"
	done
