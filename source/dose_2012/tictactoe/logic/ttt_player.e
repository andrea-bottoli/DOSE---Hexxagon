note
	description: "Deferred class for a player. A player takes the role of the controller in a MVC pattern (sort of)."
	author: "Christian Estler"
	date: "01.10.2011"
	revision: "1.0"

deferred class
	TTT_PLAYER


feature {TTT_PLAYER} -- Access

	process_opponent_move (a_row, a_column: INTEGER)
			-- the opponent has made a move
		deferred
			-- update the model with the opponent move
			-- update the view
		end

feature -- Procedures

	set_opponent (a_opponent: TTT_PLAYER)
			-- sets the opponent to "a_opponent"
		require
			arg_not_void: a_opponent /= Void
		do
			opponent := a_opponent
		ensure
			opponent_set: opponent = a_opponent
		end

	process_user_move (a_row, a_column: INTEGER)
			-- the user has made a move
		deferred
			-- inform the opponent about the move
			-- update the model with the user move
			-- update the view
		end

feature {NONE} -- Implemenation

	check_winner_loser_tie: BOOLEAN
			-- checks if the player has won, lost or tie
		deferred
		end



feature	-- Status

	opponent: TTT_PLAYER
			-- the opponent of the player "Current"

	model: TTT_MODEL
			-- the model (board model) of the player

invariant
	-- class invariant
	model_not_void: model /= Void

end
