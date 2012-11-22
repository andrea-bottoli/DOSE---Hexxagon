note
	description: "Summary description for {G5_DECK}."
	author: "Team: Rio Cuarto 4"
	date: "$17/11/2012$"
	revision: "$0.1$"

deferred class
	G5_DECK [G]

inherit
	STACK [G]

feature -- Operations

	shuffle()
		-- Shuffles the cards the deck
		require
			(linear_representation /= VOID) and (not is_empty)
		do
		ensure
		end
end
