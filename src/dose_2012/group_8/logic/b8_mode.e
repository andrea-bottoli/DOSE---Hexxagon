note
	description: "An interface for the handling of the game mode."
	author: "Stefano Di Palma"
	date: "08/12/2012"
	revision: "1.0"

deferred class
	B8_MODE

feature -- Constants

	four_player:INTEGER=0;

	two_player:INTEGER=1;

feature {NONE} -- Attribute

	logic:B8_LOGIC

feature --Access

	is_game_over: BOOLEAN
			-- returns if the game is over
		require
			game_is_started: logic.game_is_started
		deferred
		end

	the_player_has_this_color(id,color:INTEGER):BOOLEAN
			-- says if the player has the color
		require
			game_is_started: logic.game_is_started
		deferred
		end

	next_turn
			-- sets the next turn
		require
			game_is_started: logic.game_is_started
		deferred
		end
	get_score(a_turn:INTEGER):INTEGER
		require
			is_game_over: is_game_over
			valid_turn: a_turn>0 or a_turn <=get_num_players
		deferred
		end
	get_num_players:INTEGER
		deferred
		end
end
