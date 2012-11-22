note
	description: "Summary description for {G3_TABLE}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_TABLE

feature
	clear_stack
		-- Clears the stack of plays.
	do
	ensure
		stack_of_play.is_empty
	end

	add_move(play: G3_COMBINATION)
		-- Adds a new play to the stack of plays.
	require
		valid_arg: play /= Void
		valid_move: play.is_valid = True
	do
	end

feature
	hand_over: BOOLEAN
		-- Is the hand over?

	turn : G3_PLAYER_ID

	last_killer: G3_PLAYER_ID

	stack_of_play : STACK [G3_COMBINATION]
		-- Stack of moves in the current hand.

end
