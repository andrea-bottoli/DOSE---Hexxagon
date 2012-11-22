note
	description: "Summary description for {CORRIDOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CORRIDOR

inherit
	CU_SQUARE
feature --Access
	player_on: CU_PLAYER
			-- Indicates the player who is currently on this square
		attribute
		end

	n: STRING
		attribute
		ensure
			valid_side: result="wall" or result="corridor" or result="door"
		end
	e: STRING
		attribute
		ensure
			valid_side: result="wall" or result="corridor" or result="door"
		end
	s: STRING
		attribute
		ensure
			valid_side: result="wall" or result="corridor" or result="door"
		end
	w: STRING
		attribute
		ensure
			valid_side: result="wall" or result="corridor" or result="door"
		end

feature {CU_GAME}--Actions
	player_moves_in(a_player: CU_PLAYER)
		require
			not_already_occupied: player_on = void
			valid_player: a_player /= void
		do
		ensure
			occupied_corridor: player_on = a_player
			structure_not_change: n = old n and s = old s and w = old w and e = old e
		end

	player_moves_out()
		require
			occupied_corridor: player_on /= void
		do
		ensure
			no_longer_occupied: player_on = void
		end
end
