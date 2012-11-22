note
	description: "An interface for the handling of the game mode."
	author: "Stefano Di Palma"
	date: "8/11/2012"
	revision: "0.2"

deferred class
	B8_MODE

feature-- Attribute

	logic:B8_LOGIC

feature -- Constants

	four_player:INTEGER=0;

	two_player:INTEGER=1;

feature --Access

	is_game_over: BOOLEAN
			-- returns if the game is over
		require
			game_is_started: logic.game_is_started
		deferred
		end

	next_turn: BOOLEAN
			-- sets the next turn
		require
			game_is_started: logic.game_is_started
		deferred
		end

end
