note
	description: "Interface to the game board."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_IBOARD

feature -- Access

	height: INTEGER

	width: INTEGER

	player_1: HX_L_IPLAYER
		deferred
		ensure
			valid_id: Result.id = 1
		end

	player_2: HX_L_IPLAYER
		deferred
		ensure
			valid_id: Result.id = 2
		end

	max_height: INTEGER
			-- The max board height.
		once
			Result := 9
		end

	max_width: INTEGER
			-- The max board width.
		once
			Result := 9
		end

	place(x: INTEGER; y: INTEGER): HX_L_IPLACE
		-- Place at position (x, y).
		require
			-- It was proposed to drop this in Skype chat 2012-12-03.
			-- x_range: 1 <= x and x <= width
			-- y_range: 1 <= y and y <= height
		deferred
		ensure
			non_void: Result /= Void
		end

	active_player: HX_L_IPLAYER
		-- Currently active player.
		deferred
		ensure
			non_void: Result /= Void
		end

	legal_moves: LIST[HX_L_IMOVE]
		deferred
		ensure
			non_void: Result /= Void
		end

	is_end_ai(a_leaf: BOOLEAN): BOOLEAN
		-- Is it the end of the game? (Method for AI.)
		deferred
		ensure
		end

	is_end: BOOLEAN
		-- Is it the end of the game?
		deferred
		ensure
		end

	winner: HX_L_IPLAYER
		-- The winner of the game.
		require
			game_end: is_end
		deferred
		ensure
			non_void: Result /= Void
		end

	pieces_count(player: HX_L_IPLAYER): INTEGER
		-- Counts player's pieces.
		require
			non_void: player /= Void
		deferred
		ensure
			non_negative: Result >= 0
		end

	is_piece_selectable(x: INTEGER; y: INTEGER): BOOLEAN
		-- Can piece in this place be selected?
		require
			x_range: 1 <= x and x <= height
			y_range: 1 <= y and y <= width
		deferred
		ensure
			only_if_exists: Result implies place (x, y).exists
			only_if_non_empty: Result implies (not place (x, y).is_empty)
		end

	possible_moves(x: INTEGER; y: INTEGER): LIST[HX_L_IMOVE]
		-- Return possible moves.
		require
			selectable: is_piece_selectable (x, y)
		deferred
		ensure
			non_void: Result /= Void
		end

	is_piece_movable(from_x: INTEGER; from_y: INTEGER; to_x: INTEGER; to_y: INTEGER): BOOLEAN
		-- Is piece movable?
		require
			selectable: is_piece_selectable (from_x, from_y)
			x_range: 1 <= to_x and to_x <= height
			y_range: 1 <= to_y and to_y <= width
		deferred
		ensure
			only_if_exists: (not Result) or place (to_x, to_y).exists
			only_if_empty: (not Result) or place (to_x, to_y).is_empty
		end


	move_piece(a_move: HX_L_IMOVE)
		-- Move a piece to a new location.
		require
			movable: is_piece_movable (a_move.source.x, a_move.source.y, a_move.destination.x, a_move.destination.y)
		deferred
		end

	move_piece_and_continue(from_x: INTEGER; from_y: INTEGER; to_x: INTEGER; to_y: INTEGER)
		-- Move a piece to a new location.
		require
			movable: is_piece_movable (from_x, from_y, to_x, to_y)
		deferred
		end

	moves_count: INTEGER
		-- How many moves were made.

	last_move: HX_L_IMOVE
		-- Return last move
		require
			moves_exist: moves_count > 0
		deferred
		end


	clone_board(): HX_L_IBOARD
		-- Returns a copy of a board.
		deferred
		ensure
			non_void: Result /= Void
		end

	board_array: ARRAY2 [HX_L_IPLACE]

end
