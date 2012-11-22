note
	description: "An AI Player for TicTacToe."
	author: "Christian Estler"
	date: "01.10.2011"
	revision: "1.0"

class
	TTT_PLAYER_AI

inherit
	TTT_PLAYER

create
	make_with_opponent

feature -- Initialization

	make_with_opponent (a_opponent: TTT_PLAYER)
		require
			arg_not_void: a_opponent /= Void
		do
			opponent := a_opponent
			create model
		ensure
			opponent_is_set: opponent = a_opponent
		end


feature -- Features called by the opponent

	process_opponent_move (a_row, a_column: INTEGER)
		do
				-- update the model to account for the move of the opponent
			model.update_with_opponent_move (a_row, a_column)
				-- check for winner / loser / tie
			if not check_winner_loser_tie then
					-- if game not ended, then call process_user_move to make a move
				process_user_move (-1, -1) -- arguments don't matter, will be overriden
			end
		end

feature -- Features called by the view

	process_user_move (a_row, a_column: INTEGER)
		require else
			opponent_not_void: opponent /= Void
		local
			l_move: TUPLE [row: INTEGER; column: INTEGER]
		do

			l_move := decide_a_move

				-- inform the opponent about the move
			opponent.process_opponent_move (l_move.row, l_move.column)
				-- update the model with the user move
			model.update_with_user_move (l_move.row, l_move.column)
				-- check for winner / loser / tie
			if check_winner_loser_tie then
				-- nothing to do in an AI player
			end
		end

feature {NONE} -- Implemenation

	check_winner_loser_tie: BOOLEAN
			-- checks if the user has won, lost or tie
			-- returns flase if none of that happend, otherwise true
		do
			if model.has_user_won or model.has_opponent_won or model.has_game_tie then
				Result := True
			else
				Result := False
			end
		end

	decide_a_move: TUPLE[INTEGER, INTEGER]
			-- makes an AI move (at the moment just picks a random tile)
		local
			i, j: INTEGER
			l_random: RANDOM
			l_time: TIME
			l_value: INTEGER
			l_board: ARRAY2[INTEGER]
			empty_tiles: LINKED_LIST [ TUPLE [row: INTEGER; column: INTEGER]]
		do
			empty_tiles := model.empty_fields

			if empty_tiles.count > 0 then
					-- crate a random number
				create l_random.make
				create l_time.make_now
				l_random.set_seed (l_time.compact_time)
					-- get a random number that is within the bounds of the list
				l_value := l_random.item \\ empty_tiles.count
					-- l-value coud be 0, then we have to add 1
				if l_value = 0 then
					l_value := 1
				end

				Result := empty_tiles.i_th (l_value)
			else
					-- return some default
				Result := [1,1]
			end
		end

end
