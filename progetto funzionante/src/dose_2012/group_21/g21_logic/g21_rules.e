note
	description: "Summary description for {G21_RULES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	G21_RULES

	feature{G21_BOARD}
		isOpen:BOOLEAN
		isElemental:BOOLEAN
		isSuddenDeath:BOOLEAN
		isOn:BOOLEAN
		elementalBoard:ARRAY[G21_CELL]
		do

			-- ensure newBoard have elements in random positions
		end
	feature
		board:G21_BOARD -- may be board in ai or board in logic

		getIsOpen:BOOLEAN
		do
			Result := isOpen

		end
		getIsElemental:BOOLEAN
		do
			Result := isElemental
		end
		getIsOn:BOOLEAN
		do
			Result := isOn
		end
		getIsSuddenDeath:BOOLEAN
		do

		end

		PLUS:G21_RULE_PLUS
		SAME:G21_RULE_SAME
		SAMEWALL:G21_RULE_SAMEWALL

		isMakeChange:BOOLEAN
		deferred end

		makeChangeAndUpdate(pos_X:INTEGER_32 ; pos_Y:INTEGER_32 ; card:G21_CARD)
		require
			validPositionX:pos_X < 3
			validPositionX:pos_Y < 3

		deferred
		end



end
