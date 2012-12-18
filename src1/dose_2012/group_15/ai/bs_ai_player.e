note
	description: "Summary description for {BS_AI_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_AI_PLAYER

inherit

	BS_PLAYER
		redefine
			do_move
		end
	BS_CONSTANTS
		undefine
			default_create
		end

create
	make_AI, make_ai_with_name

feature {NONE} -- Initialization
	--create a new virtual player, with player_number as turn number
	--and player_difficulty references the grade of difficulty of the virtual player

	make_AI (new_player_number: INTEGER; new_player_color: INTEGER; player_difficulty: INTEGER)
			-- Initialization for `Current'.
		require else
			valid_player_difficulty: (player_difficulty >= player_type_ai_easy) and (player_difficulty <= player_type_ai_difficult)
		do
			make_AI_with_name (new_player_number, new_player_color, "Default AI name", player_difficulty)
		ensure then
			valid_difficulty: (difficulty >= player_type_ai_easy) and (difficulty <= player_type_ai_difficult)
		end

	make_AI_with_name (new_player_number: INTEGER; new_player_color: INTEGER; new_player_name: STRING; player_difficulty: INTEGER)
			-- Initialization for `Current'.
		require else
			valid_player_difficulty: (player_difficulty >= player_type_ai_easy) and (player_difficulty <= player_type_ai_difficult)
		do
			make_with_name (new_player_number, new_player_color, new_player_name, player_difficulty)
				--			add_tile_set (new_player_number)
			create difficulty.default_create
			difficulty := player_difficulty
		ensure then
			valid_difficulty: (difficulty >= player_type_ai_easy) and (difficulty <= player_type_ai_difficult)
		end

feature -- Access

	do_move (a_board: BS_BOARD): BS_MOVE --Can we return an empty movement?
		require else
			--		have_tiles: tiles.count>0
		do
			if corner = 0 then
				chose_corner (a_board)
			end
			if (difficulty = player_type_ai_easy) then
				Result := move_ai_easy (a_board)
			else
				if (difficulty = player_type_ai_medium) then
					Result := move_ai_medium (a_board)
				else
					if (difficulty = player_type_ai_difficult) then
						Result := move_ai_hard (a_board)
					end
				end
			end
		ensure then
			make_move: tiles.count <= old tiles.count
		end

feature -- Measurement

feature {ANY} -- Status report

	get_difficulty: INTEGER
		do
			Result := difficulty
		ensure
			Result = difficulty and difficulty = old difficulty
		end

feature {NONE} -- Status setting

	difficulty: INTEGER

	update_max_x_y (a_move: BS_MOVE)
		do
			if corner = 1 then
				if (max_x < a_move.get_position.x + a_move.get_tile.get_state.width) then
					if a_move.get_position.x + a_move.get_tile.get_state.width > 20 then
						max_x := 20
					else
						max_x := a_move.get_position.x + a_move.get_tile.get_state.width
					end
				end
				if (max_y < a_move.get_position.y + a_move.get_tile.get_state.height) then
					if (a_move.get_position.y + a_move.get_tile.get_state.height > 20) then
						max_y := 20
					else
						max_y := a_move.get_position.y + a_move.get_tile.get_state.height
					end
				end
			end
			if corner = 2 then
				if (max_x > a_move.get_position.x - 1) then
					if a_move.get_position.x - 1 < 1 then
						max_x := 1
					else
						max_x := a_move.get_position.x - 1
					end
				end
				if (max_y < a_move.get_position.y + a_move.get_tile.get_state.height) then
					if (a_move.get_position.y + a_move.get_tile.get_state.height > 20) then
						max_y := 20
					else
						max_y := a_move.get_position.y + a_move.get_tile.get_state.height
					end
				end
			end
			if corner = 3 then
				if (max_x < a_move.get_position.x + a_move.get_tile.get_state.width) then
					if a_move.get_position.x + a_move.get_tile.get_state.width > 20 then
						max_x := 20
					else
						max_x := a_move.get_position.x + a_move.get_tile.get_state.width
					end
				end
				if (max_y > a_move.get_position.y - 1) then
					if a_move.get_position.y - 1 < 1 then
						max_y := 1
					else
						max_y := a_move.get_position.y - 1
					end
				end
			end
			if corner = 4 then
				if (max_x > a_move.get_position.x - 1) then
					if a_move.get_position.x - 1 < 1 then
						max_x := 1
					else
						max_x := a_move.get_position.x - 1
					end
				end
				if (max_y > a_move.get_position.y - 1) then
					if a_move.get_position.y - 1 < 1 then
						max_y := 1
					else
						max_y := a_move.get_position.y - 1
					end
				end
			end
		end

feature {NONE} -- Auxiliar Methods

	create_valid_moves_easy (board: BS_BOARD)
		local
			i, j, k, m: INTEGER
			pos, position2: BS_POSITION
			a_tile: BS_TILE
			pieces_used: LINKED_LIST [INTEGER]
			rand: BETTER_RANDOM
			flag: BOOLEAN
			mov: BS_MOVE
		do
			create pieces_used.make
			create valid_moves.make
			from
				i := 1
			until
				i > corners.count
			loop
				pos := corners.i_th (i)
				from
					create rand.make
					flag := False
				until
					flag or pieces_used.count >= tiles.count
				loop
					j := (rand.item \\ tiles.count) + 1
					if not pieces_used.has (j) then
						a_tile := tiles.i_th (j)
						pieces_used.put_front (j)
						from
							if (pos.x - a_tile.get_state.width > 1) then
								k := pos.x - a_tile.get_state.width + 1
							else
								k := 1
							end
						until
							k > pos.x
						loop
							from
								if (pos.y - a_tile.get_state.height > 1) then
									m := pos.y - a_tile.get_state.height + 1
								else
									m := 1
								end
							until
								m > pos.y
							loop
								create position2.make (k, m)
								if board.get_state.item (m, k) = 0 then
									create mov.make (a_tile, position2)
									if (not is_alredy_a_valid_move (mov)) then
										if (board.is_valid_move (player_id, mov)) then
											valid_moves.put_front (mov)
										end
									end
									a_tile.rotate_left
									create mov.make (a_tile, position2)
									if (not is_alredy_a_valid_move (mov)) then
										if (board.is_valid_move (player_id, mov)) then
											valid_moves.put_front (mov)
										end
									end
									a_tile.rotate_left
									create mov.make (a_tile, position2)
									if (not is_alredy_a_valid_move (mov)) then
										if (board.is_valid_move (player_id, mov)) then
											valid_moves.put_front (mov)
										end
									end
									a_tile.rotate_left
									create mov.make (a_tile, position2)
									if (not is_alredy_a_valid_move (mov)) then
										if (board.is_valid_move (player_id, mov)) then
											valid_moves.put_front (mov)
										end
									end
									a_tile.rotate_left
									a_tile.flip_horizontally
									create mov.make (a_tile, position2)
									if (not is_alredy_a_valid_move (mov)) then
										if (board.is_valid_move (player_id, mov)) then
											valid_moves.put_front (mov)
										end
									end
									a_tile.rotate_left
									create mov.make (a_tile, position2)
									if (not is_alredy_a_valid_move (mov)) then
										if (board.is_valid_move (player_id, mov)) then
											valid_moves.put_front (mov)
										end
									end
									a_tile.rotate_left
									create mov.make (a_tile, position2)
									if (not is_alredy_a_valid_move (mov)) then
										if (board.is_valid_move (player_id, mov)) then
											valid_moves.put_front (mov)
										end
									end
									a_tile.rotate_left
									create mov.make (a_tile, position2)
									if (not is_alredy_a_valid_move (mov)) then
										if (board.is_valid_move (player_id, mov)) then
											valid_moves.put_front (mov)
										end
									end
								end
								m := m + 1
							end
							k := k + 1
						end
					end
					if valid_moves.count > 0 then
						flag := True
					else
						rand.forth
					end
				end
				i := i + 1
			end
		end

	create_valid_moves_medium (board: BS_BOARD)
		local
			i, j, k, m: INTEGER
			pos, position2: BS_POSITION
			a_tile: BS_TILE
			pieces_used: LINKED_LIST [INTEGER]
			rand: BETTER_RANDOM
			flag: BOOLEAN
			mov: BS_MOVE
		do
			create pieces_used.make
			create valid_moves.make
			from
				i := 1
			until
				i > corners.count
			loop
				pos := corners.i_th (i)
				from
					j := tiles.count
				until
					(j < tiles.count - (tiles.count / 3) and flag) or j < 1
				loop
					a_tile := tiles.i_th (j)
					pieces_used.put_front (j)
					from
						if (pos.x - a_tile.get_state.width > 1) then
							k := pos.x - a_tile.get_state.width + 1
						else
							k := 1
						end
					until
						k > pos.x
					loop
						from
							if (pos.y - a_tile.get_state.height > 1) then
								m := pos.y - a_tile.get_state.height + 1
							else
								m := 1
							end
						until
							m > pos.y
						loop
							create position2.make (k, m)
							if board.get_state.item (m, k) = 0 then
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								a_tile.flip_horizontally
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
							end
							m := m + 1
						end
						k := k + 1
					end
					if valid_moves.count > 0 then
						flag := True
					end
					j := j - 1
				end
				i := i + 1
			end
		end

	find_corners (board: BS_BOARD)
		local
			i, j: INTEGER
			pos: BS_POSITION
			flag: BOOLEAN
		do
			create corners.make
			from
				i := 1
			until
				(i > 20)
			loop
				from
					j := 1
				until
					(j > 20)
				loop
					flag := False
					if (board.get_state.item (j, i) = 0) then
						if (j > 1 and i > 1) then
							if (board.get_state.item (j - 1, i - 1) = player_color) then
								flag := true
							end
						end
						if (j < 20 and i > 1) then
							if (board.get_state.item (j + 1, i - 1) = player_color) then
								flag := true
							end
						end
						if (j > 1 and i < 20) then
							if (board.get_state.item (j - 1, i + 1) = player_color) then
								flag := true
							end
						end
						if (j < 20 and i < 20) then
							if (board.get_state.item (j + 1, i + 1) = player_color) then
								flag := true
							end
						end
						if (j > 1) then
							if (board.get_state.item (j - 1, i) = player_color) then
								flag := False
							end
						end
						if (i > 1) then
							if (board.get_state.item (j, i - 1) = player_color) then
								flag := False
							end
						end
						if (j < 20) then
							if (board.get_state.item (j + 1, i) = player_color) then
								flag := False
							end
						end
						if (i < 20) then
							if (board.get_state.item (j, i + 1) = player_color) then
								flag := False
							end
						end
						if flag then
							create pos.make (i, j)
							corners.put_front (pos)
						end
						if i = 1 and j = 1 and corner = 1 then
							create pos.make (i, j)
							corners.put_front (pos)
						end
						if i = 20 and j = 1 and corner = 2 then
							create pos.make (i, j)
							corners.put_front (pos)
						end
						if i = 1 and j = 20 and corner = 3 then
							create pos.make (i, j)
							corners.put_front (pos)
						end
						if i = 20 and j = 20 and corner = 4 then
							create pos.make (i, j)
							corners.put_front (pos)
						end
					end
					j := j + 1
				end
				i := i + 1
			end
		end

	corners: LINKED_LIST [BS_POSITION]

	is_alredy_a_valid_move (a_move: BS_MOVE): BOOLEAN
		local
			i: INTEGER
			mov: BS_MOVE
			pos1, pos2: BS_POSITION
			tile1, tile2: BS_TILE
			return: BOOLEAN
		do
			create return.default_create
			create pos1.make (a_move.get_position.x, a_move.get_position.y)
			create tile1.make (a_move.get_tile.get_state, a_move.get_tile.get_color)
			return := False
			from
				i := 1
			until
				i > valid_moves.count or return
			loop
				mov := valid_moves.i_th (i)
				pos2 := mov.get_position
				tile2 := mov.get_tile
				if ((pos1.x = pos2.x) and (pos1.y = pos2.y) and (tile2.get_state.is_equal (tile1.get_state))) then
					return := True
				end
				i := i + 1
			end
			Result := return
		end

	create_valid_moves_hard (board: BS_BOARD)
		local
			i, j, k, m: INTEGER
			pos, position2: BS_POSITION
			a_tile: BS_TILE
			mov: BS_MOVE
			flag: BOOLEAN
		do
			create valid_moves.make
			from
				i := 1
			until
				i > corners.count
			loop
				pos := corners.at (i)
				from
					j := tiles.count
				until
					(j < (tiles.count / 2) and flag) or (j < 1)
				loop
					a_tile := tiles.at (j)
					flag := True
					from
						if (pos.x - a_tile.get_state.width > 1) then
							k := pos.x - a_tile.get_state.width + 1
						else
							k := 1
						end
					until
						k > pos.x
					loop
						from
							if (pos.y - a_tile.get_state.height > 1) then
								m := pos.y - a_tile.get_state.height + 1
							else
								m := 1
							end
						until
							m > pos.y
						loop
							create position2.make (k, m)
							if board.get_state.item (m, k) = 0 then
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								a_tile.flip_horizontally
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
								a_tile.rotate_left
								create mov.make (a_tile, position2)
								if (not is_alredy_a_valid_move (mov)) then
									if (board.is_valid_move (player_id, mov)) then
										valid_moves.put_front (mov)
									end
								end
							end
							m := m + 1
						end
						k := k + 1
					end
					if (valid_moves.count = 0) then
						flag := False
					end
					j := j - 1
				end
				i := i + 1
			end
		end

	calculate_move_value (board: BS_BOARD): INTEGER --used to estimate wich movement is the best
			--in order to decide the next movement (based of the space of board)
		do
		end

feature -- Element change

	chose_corner (a_board: BS_BOARD)
		do
			if (a_board.get_state.item (1, 1) = 0) then
				corner := 1
				max_x := 1
				max_y := 1
			else
				if (a_board.get_state.item (1, 20) = 0) then
					corner := 2
					max_x := 20
					max_y := 1
				else
					if (a_board.get_state.item (20, 1) = 0) then
						corner := 3
						max_x := 1
						max_y := 20
					else
						if (a_board.get_state.item (20, 20) = 0) then
							corner := 4
							max_x := 20
							max_y := 20
						end
					end
				end
			end
		end

feature -- Removal

feature -- Resizing

feature -- Transformation

	best_move1 (): BS_MOVE
		local
			i, value: INTEGER
			return, mov: BS_MOVE
		do
			value := 0
			from
				i := 1
			until
				i > valid_moves.count
			loop
				mov := valid_moves.i_th (i)
				if (value < move_value (mov)) then
					value := move_value (mov)
					create return.make (mov.get_tile, mov.get_position)
				else
					if value = mov.get_tile.squares_count then
						if (return.get_position.x < mov.get_position.x) and (return.get_position.y < mov.get_position.y) and (max_x < 10) and (max_y < 10)then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x = mov.get_position.x) and (return.get_position.y < mov.get_position.y) and (max_y < 10) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x < mov.get_position.x) and (return.get_position.y = mov.get_position.y) and (max_x < 10) then
							create return.make (mov.get_tile, mov.get_position)
						end
					end
				end
				i := i + 1
			end
			Result := return
		end

	best_move2 (): BS_MOVE
		local
			i, value: INTEGER
			return, mov: BS_MOVE
		do
			value := 0
			from
				i := 1
			until
				i > valid_moves.count
			loop
				mov := valid_moves.i_th (i)
				if (value < move_value (mov)) then
					value := move_value (mov)
					create return.make (mov.get_tile, mov.get_position)
				else
					if (value = move_value (mov)) then
						if (return.get_position.x > mov.get_position.x) and (return.get_position.y < mov.get_position.y) and (max_x > 10) and (max_y < 10) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x = mov.get_position.x) and (return.get_position.y < mov.get_position.y) and (max_y < 10) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x > mov.get_position.x) and (return.get_position.y = mov.get_position.y) and (max_x > 10) then
							create return.make (mov.get_tile, mov.get_position)
						end
					end
				end
				i := i + 1
			end
			Result := return
		end

	best_move3 (): BS_MOVE
		local
			i, value: INTEGER
			return, mov: BS_MOVE
		do
			value := 0
			from
				i := 1
			until
				i > valid_moves.count
			loop
				mov := valid_moves.i_th (i)
				if (value < move_value (mov)) then
					value := move_value (mov)
					create return.make (mov.get_tile, mov.get_position)
				else
					if (value = move_value (mov)) then
						if (return.get_position.x < mov.get_position.x) and (return.get_position.y > mov.get_position.y) and (max_x < 10) and (max_y > 10) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x < mov.get_position.x) and (return.get_position.y = mov.get_position.y) and (max_x < 10)  then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x = mov.get_position.x) and (return.get_position.y > mov.get_position.y) and (max_y > 10)then
							create return.make (mov.get_tile, mov.get_position)
						end
					end
				end
				i := i + 1
			end
			Result := return
		end

	best_move4 (): BS_MOVE
		local
			i, value: INTEGER
			return, mov: BS_MOVE
		do
			value := 0
			from
				i := 1
			until
				i > valid_moves.count
			loop
				mov := valid_moves.i_th (i)
				if (value < move_value (mov)) then
					value := move_value (mov)
					create return.make (mov.get_tile, mov.get_position)
				else
					if value = mov.get_tile.squares_count then
						if (return.get_position.x > mov.get_position.x) and (return.get_position.y > mov.get_position.y)  and (max_x > 10) and (max_y > 10) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x = mov.get_position.x) and (return.get_position.y > mov.get_position.y) and (max_y > 10) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x > mov.get_position.x) and (return.get_position.y = mov.get_position.y) and (max_x > 10)  then
							create return.make (mov.get_tile, mov.get_position)
						end
					end
				end
				i := i + 1
			end
			Result := return
		end

	best_move (): BS_MOVE
		do
			if corner = 1 then
				Result := best_move1 ()
			end
			if corner = 2 then
				Result := best_move2 ()
			end
			if corner = 3 then
				Result := best_move3 ()
			end
			if corner = 4 then
				Result := best_move4 ()
			end
		end

feature -- Conversion

feature -- Duplication

feature -- Miscellaneous

	valid_moves: LINKED_LIST [BS_MOVE]

	max_x: INTEGER

	max_y: INTEGER

	corner: INTEGER

feature -- Basic operations

feature -- Obsolete
	--This method should be implemented in the class BS_TILE.e

	compare_tiles (a_tile: BS_TILE; a_tile2: BS_TILE): BOOLEAN
		local
			return: BOOLEAN
		do
			if (a_tile.get_state.is_equal (a_tile2.get_state)) then
				return := True
			else
				a_tile2.rotate_left
				if (a_tile.get_state.is_equal (a_tile2.get_state)) then
					return := True
				else
					a_tile2.rotate_left
					if (a_tile.get_state.is_equal (a_tile2.get_state)) then
						return := True
					else
						a_tile2.rotate_left
						if (a_tile.get_state.is_equal (a_tile2.get_state)) then
							return := True
						else
							a_tile2.rotate_left
							a_tile2.flip_horizontally
							if (a_tile.get_state.is_equal (a_tile2.get_state)) then
								return := True
							else
								a_tile2.rotate_left
								if (a_tile.get_state.is_equal (a_tile2.get_state)) then
									return := True
								else
									a_tile2.rotate_left
									if (a_tile.get_state.is_equal (a_tile2.get_state)) then
										return := True
									else
										a_tile2.rotate_left
										if (a_tile.get_state.is_equal (a_tile2.get_state)) then
											return := True
										else
											return := False
										end
									end
								end
							end
						end
					end
				end
			end
			Result := return
		end

feature -- Inapplicable

feature {NONE} -- Implementation

	move_value (a_move: BS_MOVE): INTEGER
		local
			i, j, value: INTEGER
		do
			from
				i := 1
			until
				i > a_move.get_tile.get_state.width
			loop
				from
					j := 1
				until
					j > a_move.get_tile.get_state.height
				loop
					value := value + a_move.get_tile.get_state.item (j, i)
					j := j + 1
				end
				i := 1 + i
			end
			Result := value
		end

	tile_value (a_tile: BS_TILE): INTEGER
		local
			i, j, return: INTEGER
		do
			from
				i := 1
			until
				i > a_tile.get_state.width
			loop
				from
					j := 1
				until
					j > a_tile.get_state.height
				loop
					return := return + a_tile.get_state.item (j, i)
					j := j + 1
				end
				i := i + 1
			end
			Result := return
		end

	move_AI_easy (a_board: BS_BOARD): BS_MOVE
		local
			return: BS_MOVE
			piece: BS_TILE
			rand: BETTER_RANDOM
			flag: BOOLEAN
			i: INTEGER
		do
			create rand.make
			find_corners (a_board)
			create_valid_moves_easy (a_board)
			if valid_moves.count > 0 then
				return := valid_moves.i_th ((rand.item \\ valid_moves.count) + 1)
				from
					i := 1
				until
					i > tiles.count or flag
				loop
					piece := tiles.i_th (i)
					if compare_tiles (return.get_tile, piece) then
						flag := True
						tiles.go_i_th (i)
					end
					i := i + 1
				end
				tiles.remove
				update_max_x_y (return)
			else
				create return.make_with_action (2, Void, Void)
			end
			Result := return
		end

	move_AI_medium (a_board: BS_BOARD): BS_MOVE
		local
			return: BS_MOVE
			piece: BS_TILE
			rand: BETTER_RANDOM
			flag: BOOLEAN
			i: INTEGER
		do
			create rand.make
			find_corners (a_board)
			create_valid_moves_medium (a_board)
			if valid_moves.count > 0 then
				return := valid_moves.i_th ((rand.item \\ valid_moves.count) + 1)
				from
					i := 1
				until
					i > tiles.count or flag
				loop
					piece := tiles.i_th (i)
					if compare_tiles (return.get_tile, piece) then
						flag := True
						tiles.go_i_th (i)
					end
					i := i + 1
				end
				tiles.remove
				update_max_x_y (return)
			else
				create return.make_with_action (2, Void, Void)
			end
			Result := return
		end

	move_AI_hard (a_board: BS_BOARD): BS_MOVE
		local
			return: BS_MOVE
			value, i: INTEGER
			piece: BS_TILE
			flag: BOOLEAN
		do
				--select the valid movement with the best value
			find_corners (a_board)
			create_valid_moves_hard (a_board)
			value := 0
			if valid_moves.count /= 0 then
				return := best_move ()
					--remove the movement from the tile set
				from
					i := 1
				until
					i > tiles.count or flag
				loop
					piece := tiles.i_th (i)
					if compare_tiles (return.get_tile, piece) then
						flag := True
						tiles.go_i_th (i)
					end
					i := i + 1
				end
				tiles.remove
				update_max_x_y (return)
				Result := return
			else
				create return.make_with_action (2, Void, Void)
			end
			Result := return
		end

invariant
	invariant_clause: True -- Your invariant here

end
