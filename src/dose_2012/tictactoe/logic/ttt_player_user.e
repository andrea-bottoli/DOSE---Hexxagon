note
	description: "Summary description for {TTT_PLAYER_USER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TTT_PLAYER_USER

inherit
	TTT_PLAYER

create
	make,
	make_with_opponent

feature {NONE} -- Initialization

	make (a_view: TTT_MAIN_WINDOW)
		-- sets the user player's view to "a_view"
		require
			arg_not_void: a_view /= Void
		do
			view := a_view
			create model
		ensure
			view_is_set: view = a_view
			model_is_set: model /= Void
		end

	make_with_opponent (a_view: TTT_MAIN_WINDOW; a_opponent: TTT_PLAYER)
		-- sets the user player's view to "a_view" and the user's opponent to "a_opponent"
		require
			args_not_void: a_view /= Void and a_opponent /= Void
		do
			make (a_view)
			opponent := a_opponent
		ensure
			opponent_is_set: opponent = a_opponent
			view_is_set: view = a_view
			model_is_set: model /= Void
		end

feature -- Procedures

	process_opponent_move (a_row, a_column: INTEGER)
		do
				-- update the model to account for the move of the opponent
			model.update_with_opponent_move (a_row, a_column)
				-- update the view to account for the move of the opponent
			view.display_opponent_move (a_row, a_column)
				-- check for winner / loser / tie
			if check_winner_loser_tie then
					--block the view
			end
		end


	process_user_move (a_row, a_column: INTEGER)
		require else
			opponent_not_void: opponent /= Void
		do
				-- inform the opponent about the move
			opponent.process_opponent_move (a_row, a_column)
				-- update the model with the user move
			model.update_with_user_move (a_row, a_column)
				-- update the view with the user move
			view.display_user_move (a_row, a_column)
				-- check for winner / loser / tie
			if check_winner_loser_tie then
					-- block the view
			end
		end

feature {NONE} -- Implemenation

	check_winner_loser_tie: BOOLEAN
			-- checks if the user has won, lost or tie
			-- and updates the view accordingly
		do
			Result := True
			if model.has_user_won then
				view.display_won
			elseif model.has_opponent_won then
				view.display_lose
			elseif model.has_game_tie then
				view.display_tie
			else
				Result := False
			end
		end


feature -- Status

	view: TTT_MAIN_WINDOW
			-- the view of the player

end
