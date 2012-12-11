note
	description: "[
					This class represents the model of TicTacToe game.
					We use a integer value of 1 to represnt the player and a value of 2 for the opponent.
					The board model is represented by a 2d array.

									 Columnns
							     _____ _____ _____
							 	| 1,1 | 1,2 | 1,3 |
								|_____|_____|_____|
						Rows	| 2,1 | 2,2 | 1,3 |
								|_____|_____|_____|
								| 3,1 | 3,2 | 3,3 |
								|_____|_____|_____|
					]"

	author: "Christian Estler"
	date: "2.10.2011"
	revision: "1.0"

class
	TTT_MODEL

inherit
	ANY
	redefine
		default_create
	end

create
	default_create


feature {NONE} -- Initialization

	default_create
			-- initializes the model with a board size of 3
		local
			row, column: INTEGER
		do
				-- create the board with size 3x3
			create board.make_filled (Default_value, 3, 3)
		end

	make_with_board_size (a_board_size: NATURAL)
			-- initilializes a model with board size "a_board_size"
			-- not defined as a creation procedure for now (see create clause) but maybe used in the future
		do
			create board.make_filled (Default_value, a_board_size.as_integer_32, a_board_size.as_integer_32)
		ensure
			board_height: board.height = a_board_size.as_integer_32
			board_width: board.width = a_board_size.as_integer_32
		end


feature -- Access

	update_with_opponent_move (a_row, a_column: INTEGER)
			-- the opponent made a move
		require
			row_valid: 1 <= a_row and a_row <= num_of_board_rows
			col_valid: 1 <= a_column and a_column <= num_of_board_columns
		do
			board.put (opponent_value, a_row, a_column)
		ensure
			updated: board.item (a_row, a_column) = 2
		end

	update_with_user_move (a_row, a_column: INTEGER)
			-- the user made a move
		require
			row_valid: 1 <= a_row and a_row <= num_of_board_rows
			col_valid: 1 <= a_column and a_column <= num_of_board_columns
		do
			board.put (user_value, a_row, a_column)
		ensure
			updated: board.item (a_row, a_column) = 1
		end

	has_user_won: BOOLEAN
			-- returns true if the user has won
		do
			Result := check_all_rows (user_value) or check_all_columns (user_value) or check_all_diagonals (user_value)
		end

	has_opponent_won: BOOLEAN
			-- returns true if the user has won
		do
			Result := check_all_rows (opponent_value) or check_all_columns (opponent_value) or check_all_diagonals (opponent_value)
		end

	has_game_tie: BOOLEAN
			-- returns true if the game is a tie
		do
			if all_fields_occupied and (not (has_user_won or has_opponent_won)) then
				Result := True
			else
				Result := False
			end
		end

	get_copy_of_board : ARRAY2 [INTEGER]
			-- returns a copy of the board model
		do
			Result := create {ARRAY2 [INTEGER]}.make_filled (default_value, board.height, board.width)
			Result.copy (board)
		ensure
			Result_not_org_board: Result /= board
		end

feature {NONE} -- Implementation

	check_all_rows (a_check_for_value: INTEGER): BOOLEAN
			-- checks in all rows if one of them is filled with "a_check_for_value"
			-- returns true if that's the case
		local
			i: INTEGER
		do
			Result := false

			from
				i := 1
			until
			 	i > num_of_board_rows
			loop
				Result := Result or check_row (i, a_check_for_value)
				i := i + 1
			end
		end

	check_all_columns (a_check_for_value: INTEGER): BOOLEAN
			-- checks in columns if one of them is filled with "a_check_for_value"
			-- return true if that's the case
		local
			i: INTEGER
		do
			Result := false

			from
				i := 1
			until
			 	i > num_of_board_columns
			loop
				Result := Result or check_column (i, a_check_for_value)
				i := i + 1
			end
		end

	check_all_diagonals (a_check_for_value: INTEGER): BOOLEAN
			-- check for diagonal starting at "a_row_index" & "a_col_index" if its filled with "a_check_for_value".
			-- returns true if that's the case	
		local
			i, j: INTEGER
			l_result_for_diagonal: BOOLEAN
		do
			Result := False
			l_result_for_diagonal := True

				-- this loop checks the diagonale starting at position 1,1
			from
				i := 1
				j := 1
			until
				i > num_of_board_rows or j > num_of_board_columns
			loop
				if board.item (i, j) = a_check_for_value then
					l_result_for_diagonal := l_result_for_diagonal and True
				else
					l_result_for_diagonal := l_result_for_diagonal and False
				end
				i := i + 1
				j := j + 1
			end
				-- update the result with the outcome for the first diagonale
			Result := Result or l_result_for_diagonal


				-- this loop checks the diagonale starting at position 3,1
			l_result_for_diagonal := True
			from
				i := num_of_board_rows
				j := 1
			until
				i < 1 and j > num_of_board_columns
			loop
				if board.item (i, j) = a_check_for_value then
					l_result_for_diagonal := l_result_for_diagonal and True
				else
					l_result_for_diagonal := l_result_for_diagonal and False
				end

				i := i - 1
				j := j + 1
			end
				-- update the result with the outcome for the second diagonale
			Result := Result or l_result_for_diagonal

		end

	check_row (a_row_index: INTEGER; a_check_for_value: INTEGER): BOOLEAN
			-- check for row with "a_row_index" if its filled with "a_check_for_value".
			-- returns true if that's the case
		local
			i: INTEGER
		do
			Result := True

			from
				i := 1
			until
				i > num_of_board_columns
			loop
				if board.item(a_row_index, i) = a_check_for_value then
					Result := Result and True
				else
					Result := False
				end
					-- increase loop counter
				i := i + 1
			end
		ensure
			-- TODO: this postcond. only works for a 3x3 board
			Result = True implies (board.item (a_row_index, 1) = a_check_for_value and board.item (a_row_index, 2) = a_check_for_value and board.item (a_row_index, 3) = a_check_for_value)
		end

	check_column (a_col_index: INTEGER; a_check_for_value: INTEGER): BOOLEAN
			-- check for column with "a_col_index" if its filled with "a_check_for_value".
			-- returns true if that's the case
		local
			i: INTEGER
		do
			Result := True

			from
				i := 1
			until
				i > num_of_board_rows
			loop
				if board.item(i, a_col_index) = a_check_for_value then
					Result := Result and True
				else
					Result := False
				end
					-- increase loop counter
				i := i + 1
			end
		end

	all_fields_occupied: BOOLEAN
			-- returns true if all fields are set with user_value or opponent_value
		local
			i, j: INTEGER
		do
			Result := True

				-- loop over all rows
			from
				i := 1
			until
				i > num_of_board_rows
			loop
						-- inner loop over all columns
					from
						j := 1
					until
						j > num_of_board_columns
					loop
						if board.item (i, j) = Default_value then
							Result := False
						end
						j := j + 1
					end
						-- end of inner loop
				i := i + 1
			end

		end

feature -- Status
	num_of_board_rows: INTEGER
			-- the number of rows on the board
		once
			Result := board.height
		end

	num_of_board_columns: INTEGER
			-- the number of columns on the board
		once
			Result := board.width
		end

	user_occupied_fields: LINKED_LIST [TUPLE [row: INTEGER; column: INTEGER]]
			-- returns a list of tuples where a tuple has row and column index of a tile occupied by the user
		do
			Result := tuples_with_values (User_value)
		end

	opponent_occupied_fields: LINKED_LIST [TUPLE [row: INTEGER; column: INTEGER]]
			-- returns a list of tuples where a tuple has row and column index of a tile occupied by the opponent
		do
			Result := tuples_with_values (Opponent_value)
		end

	empty_fields: LINKED_LIST [TUPLE[ row: INTEGER; column: INTEGER]]
			-- returns a list of tuples where a tuple has row and column index of a tile currently not occupied (by user or opponent)
		do
			Result := tuples_with_values (Default_value)
		end

	Default_value: INTEGER = 0
			-- the value that is used when a tile is not occupied by user or opponent
	User_value: INTEGER = 1
			-- the value that is used when a tile is occupied by the user
	Opponent_value: INTEGER = 2
			-- the value that is used when a tile is occupied by the opponent

feature {NONE} -- Attributes

	board: ARRAY2[INTEGER]

	tuples_with_values (a_value: like Default_value): LINKED_LIST [TUPLE [row: INTEGER; column: INTEGER]]
			--
		require
			arg_is_valid: (a_value = Default_value) or (a_value = User_value) or (a_value = Opponent_value)
		local
			row, col: INTEGER
		do
			create Result.make

			from
				row := 1
			until
				row > board.height
			loop
				from
					col := 1
				until
					col > board.width
				loop
					if board.item (row, col) = a_value then
						Result.extend([row, col])
					end
					col := col + 1
				end
				row := row + 1
			end
		end



invariant	-- class invariant
	user_has_won: has_user_won implies not (has_opponent_won or has_game_tie)
	opponent_has_won: has_opponent_won implies not (has_user_won or has_game_tie)
	game_is_tie: has_game_tie implies not (has_user_won or has_opponent_won)

	values_are_different: Opponent_value /= User_value and Opponent_value /= Default_value and User_value /= Default_value
end
