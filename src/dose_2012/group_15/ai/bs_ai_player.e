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

create
	make_AI

feature {NONE} -- Initialization
	--create a new virtual player, with player_number as turn number
	--and player_difficulty references the grade of difficulty of the virtual player

	make_AI (player_difficulty: INTEGER; new_player_number: INTEGER)
			-- Initialization for `Current'.
		require else
			valid_player_difficulty: (player_difficulty > -1) and (player_difficulty < 3)
		do
			add_tile_set (new_player_number)
			create player_id.default_create
			create difficulty.default_create
			player_id := new_player_number
			difficulty := player_difficulty
		ensure then
			valid_difficulty: (difficulty > -1) and (difficulty < 3)
		end

feature -- Access

	do_move (a_board: BS_BOARD): BS_MOVE --Can we return an empty movement?
		require else
			--		have_tiles: tiles.count>0
		do
			if corner = 0 then
				chose_corner (a_board)
			end
			if (difficulty = 0) then
				Result := move_ai_easy (a_board)
			else
				if (difficulty = 1) then
					Result := move_ai_medium (a_board)
				else
					if (difficulty = 2) then
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
--			if corner = 4 then
--				if (max_x > a_move.get_position.x - a_move.get_tile.get_state.width) then
--					if a_move.get_position.x - a_move.get_tile.get_state.width < 1 then
--						max_x := 1
--					else
--						max_x := a_move.get_position.x - a_move.get_tile.get_state.width
--					end
--				end
--				if (max_y > a_move.get_position.y - a_move.get_tile.get_state.height) then
--					if a_move.get_position.y - a_move.get_tile.get_state.height < 1 then
--						max_y := 1
--					else
--						max_y := a_move.get_position.y - a_move.get_tile.get_state.height
--					end
--				end
--			end
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

		--	create_valid_moves (board: BS_BOARD)
		--		local
		--			i, j, k: INTEGER
		--			a_tile: BS_TILE
		--			pos: BS_POSITION
		--			mov: BS_MOVE
		--			flag : BOOLEAN
		--		do
		--			create valid_moves.make
		--			flag := True
		--			from
		--				i := tiles.count
		--			until
		--				(i < tiles.count / 2 and flag) or (i < 1)
		--			loop
		--				flag := True
		--				a_tile := tiles.i_th (i)
		--				from
		--					j := 1
		--				until
		--					j > board.get_state.width
		--				loop
		--					from
		--						k := 1
		--					until
		--						k > board.get_state.height
		--					loop
		--						create pos.make (j, k)
		--						create mov.make (a_tile, pos)
		--						if (not is_alredy_a_valid_move (mov)) then
		--							if board.is_valid_move (player_id, mov) then
		--								valid_moves.put_front (mov)
		--							end
		--						end
		--						a_tile.rotate_left
		--						create mov.make (a_tile, pos)
		--						if (not is_alredy_a_valid_move (mov)) then
		--							if board.is_valid_move (player_id, mov) then
		--								valid_moves.put_front (mov)
		--							end
		--						end
		--						a_tile.rotate_left
		--						create mov.make (a_tile, pos)
		--						if (not is_alredy_a_valid_move (mov)) then
		--							if board.is_valid_move (player_id, mov) then
		--								valid_moves.put_front (mov)
		--							end
		--						end
		--						a_tile.rotate_left
		--						create mov.make (a_tile, pos)
		--						if (not is_alredy_a_valid_move (mov)) then
		--							if board.is_valid_move (player_id, mov) then
		--								valid_moves.put_front (mov)
		--							end
		--						end
		--						a_tile.rotate_left
		--						a_tile.flip_horizontally
		--						create mov.make (a_tile, pos)
		--						if (not is_alredy_a_valid_move (mov)) then
		--							if board.is_valid_move (player_id, mov) then
		--								valid_moves.put_front (mov)
		--							end
		--						end
		--						a_tile.rotate_left
		--						create mov.make (a_tile, pos)
		--						if (not is_alredy_a_valid_move (mov)) then
		--							if board.is_valid_move (player_id, mov) then
		--								valid_moves.put_front (mov)
		--							end
		--						end
		--						a_tile.rotate_left
		--						create mov.make (a_tile, pos)
		--						if (not is_alredy_a_valid_move (mov)) then
		--							if board.is_valid_move (player_id, mov) then
		--								valid_moves.put_front (mov)
		--							end
		--						end
		--						a_tile.rotate_left
		--						create mov.make (a_tile, pos)
		--						if (not is_alredy_a_valid_move (mov)) then
		--							if board.is_valid_move (player_id, mov) then
		--								valid_moves.put_front (mov)
		--							end
		--						end
		--						k := k + 1
		--					end
		--					j := j + 1
		--				end
		--				if (valid_moves.count = 0) then
		--					flag := False
		--				end
		--				i := i - 1
		--			end
		--		end

	create_valid_moves1 (board: BS_BOARD)
		local
			i, j, k: INTEGER
			a_tile: BS_TILE
			pos: BS_POSITION
			mov: BS_MOVE
			flag: BOOLEAN
		do
			flag := True
			from
				i := tiles.count
			until
				(i < tiles.count / 2 and flag) or (i < 1)
			loop
				flag := True
				create a_tile.make (tiles.i_th (i).get_state, tiles.i_th (i).get_color)
				from
					j := 1
				until
					j > max_x
				loop
					from
						k := 1
					until
						k > max_y
					loop
						create pos.make (j, k)
						if board.get_state.item (k, j) = 0 then
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							a_tile.flip_horizontally
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									if j = 11 and k = 8 then
										-- mov.show
									end
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
						end
						k := k + 1
					end
					j := j + 1
				end
				if (valid_moves.count = 0) then
					flag := False
				end
				i := i - 1
			end
			io.put_string (valid_moves.count.out + "%N")
		end

	create_valid_moves2 (board: BS_BOARD)
		local
			i, j, k: INTEGER
			a_tile: BS_TILE
			pos: BS_POSITION
			mov: BS_MOVE
			flag: BOOLEAN
		do
			flag := True
			from
				i := tiles.count
			until
				(i < tiles.count / 2 and flag) or (i < 1)
--				i<1
			loop
				flag := True
				create a_tile.make (tiles.i_th (i).get_state, tiles.i_th (i).get_color)
				from
					if a_tile.get_state.width > a_tile.get_state.height then
						if max_x - a_tile.get_state.width > 1 then
							j := max_x - a_tile.get_state.width
						else
							j := 1
						end

					else
						if max_x - a_tile.get_state.height > 1 then
							j := max_x - a_tile.get_state.height
						else
							j := 1
						end
					end
				until
					j > board.get_state.width
				loop
					from
						k := 1
					until
						k > max_y
					loop
						create pos.make (j, k)
						if board.get_state.item (k, j) = 0 then
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							a_tile.flip_horizontally
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									if j = 11 and k = 8 then
										-- mov.show
									end
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
						end
						k := k + 1
					end
					j := j + 1
				end
				if (valid_moves.count = 0) then
					flag := False
				end
				i := i - 1
			end
			io.put_string (valid_moves.count.out + "%N")
		end

	create_valid_moves3 (board: BS_BOARD)
		local
			i, j, k: INTEGER
			a_tile: BS_TILE
			pos: BS_POSITION
			mov: BS_MOVE
			flag: BOOLEAN
		do
			flag := True
			from
				i := tiles.count
			until
				(i < tiles.count / 2 and flag) or (i < 1)
--				i<1
			loop
				flag := True
				create a_tile.make (tiles.i_th (i).get_state, tiles.i_th (i).get_color)
				from
					j := 1
				until
					j > max_x
				loop
					from
						if a_tile.get_state.width > a_tile.get_state.height then
						if max_y - a_tile.get_state.width > 1 then
							k := max_y - a_tile.get_state.width
						else
							k := 1
						end

					else
						if max_y - a_tile.get_state.height > 1 then
							k := max_y - a_tile.get_state.height
						else
							k := 1
						end
					end
					until
						k > board.get_state.height
					loop
						create pos.make (j, k)
						if board.get_state.item (k, j) = 0 then
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							a_tile.flip_horizontally
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									if j = 11 and k = 8 then
										-- mov.show
									end
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
						end
						k := k + 1
					end
					j := j + 1
				end
				if (valid_moves.count = 0) then
					flag := False
				end
				i := i - 1
			end
			io.put_string (valid_moves.count.out + "%N")
		end

	create_valid_moves4 (board: BS_BOARD)
	local
			i, j, k: INTEGER
			a_tile: BS_TILE
			pos: BS_POSITION
			mov: BS_MOVE
			flag: BOOLEAN
		do
			flag := True
			from
				i := tiles.count
			until
				(i < tiles.count / 2 and flag) or (i < 1)
--				i<1
			loop
				flag := True
				create a_tile.make (tiles.i_th (i).get_state, tiles.i_th (i).get_color)
				from
					if a_tile.get_state.width > a_tile.get_state.height then
						if max_x - a_tile.get_state.width > 1 then
							j := max_x - a_tile.get_state.width
						else
							j := 1
						end
					else
						if max_x - a_tile.get_state.height > 1 then
							j := max_x - a_tile.get_state.height
						else
							j := 1
						end
					end
				until
					j > board.get_state.width
				loop
					from
						if a_tile.get_state.width > a_tile.get_state.height then
						if max_y - a_tile.get_state.width > 1 then
							k := max_y - a_tile.get_state.width
						else
							k := 1
						end

					else
						if max_y - a_tile.get_state.height > 1 then
							k := max_y - a_tile.get_state.height
						else
							k := 1
						end
					end
					until
						k > board.get_state.height
					loop
						create pos.make (j, k)
						if board.get_state.item (k, j) = 0 then
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							a_tile.flip_horizontally
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									if j = 11 and k = 8 then
										-- mov.show
									end
									valid_moves.put_front (mov)
								end
							end
							a_tile.rotate_left
							create mov.make (a_tile, pos)
							if (not is_alredy_a_valid_move (mov)) then
								if (board.is_valid_move (player_id, mov)) then
									valid_moves.put_front (mov)
								end
							end
						end
						k := k + 1
					end
					j := j + 1
				end
				if (valid_moves.count = 0) then
					flag := False
				end
				i := i - 1
			end
			io.put_string (valid_moves.count.out + "%N")
		end

	create_valid_moves (a_board: BS_BOARD)
		do
			create valid_moves.make
			if corner = 1 then
				create_valid_moves1 (a_board)
			end
			if corner = 2 then
				create_valid_moves2 (a_board)
			end
			if corner = 3 then
				create_valid_moves3 (a_board)
			end
			if corner = 4 then
				create_valid_moves4 (a_board)
			end
		end

	calculate_move_value (board: BS_BOARD): INTEGER --used to estimate wich movement is the best
			--in order to decide the next movement (based of the space of board)
		do
		end

feature -- Element change

	chose_corner (a_board: BS_BOARD)
		local
			i, j: INTEGER
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
					if (value = move_value(mov)) then
						if (return.get_position.x > mov.get_position.x) and (return.get_position.y < mov.get_position.y) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x = mov.get_position.x) and (return.get_position.y < mov.get_position.y) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x > mov.get_position.x) and (return.get_position.y = mov.get_position.y) then
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
					if (value = move_value(mov)) then
						if (return.get_position.x < mov.get_position.x) and (return.get_position.y > mov.get_position.y) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x = mov.get_position.x) and (return.get_position.y > mov.get_position.y) then
							create return.make (mov.get_tile, mov.get_position)
						end
						if (return.get_position.x < mov.get_position.x) and (return.get_position.y = mov.get_position.y) then
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
				if (value <= move_value (mov)) then
					value := move_value (mov)
					create return.make (mov.get_tile, mov.get_position)
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

	move_AI_easy (a_board: BS_BOARD): BS_MOVE --we do not know if this would be a move
		local
			return, mov: BS_MOVE
			value, i: INTEGER
			piece: BS_TILE
			flag: BOOLEAN
		do
				--select the valid movement with the best value
			create_valid_moves (a_board)
			value := 0
				--			from
				--				i := 1
				--			until
				--				i > valid_moves.count
				--			loop
				--				mov := valid_moves.i_th (i)
				--				if (value <= move_value (mov)) then
				--					value := move_value (mov)
				--					create return.make (mov.get_tile, mov.get_position)
				--				end
				--				i := i + 1
				--			end
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
		end

	move_AI_medium (a_board: BS_BOARD): BS_MOVE
		do
		end

	move_AI_hard (a_board: BS_BOARD): BS_MOVE
		do
		end

invariant
	invariant_clause: True -- Your invariant here

end
