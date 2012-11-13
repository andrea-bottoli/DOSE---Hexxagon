note
	description: "Implementation of the game board."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_IBOARD

feature -- Access

	height: INTEGER
	width: INTEGER

	place(x: INTEGER; y: INTEGER): HX_L_IPLACE
		-- Place at position (x, y).
		require
			x_range: 1 <= x and x <= height
			y_range: 1 <= y and y <= width
		deferred
		end

	active_player: HX_L_IPLAYER
		-- Currently active player.
		deferred
		end

	legal_moves: LIST[HX_L_IMOVE]
		deferred
		end

	is_end: BOOLEAN
		-- Is it the end of the game?
		deferred
		end

	winner: HX_L_IPLAYER
		-- The winner of the game.
		require
			game_end: is_end
		deferred
		end

	pieces_count(player: HX_L_IPLAYER): INTEGER
		-- Counts player's pieces.
		deferred
		end

	is_piece_selectable(x: INTEGER; y: INTEGER): BOOLEAN
		-- Can piece in this place be selected?
		require
			x_range: 1 <= x and x <= height
			y_range: 1 <= y and y <= width
		deferred
		ensure
			only_if_exists: (not Result) or place (x, y).exists
			only_if_non_empty: (not Result) or (not place (x, y).is_empty)
		end

	possible_moves(x: INTEGER; y: INTEGER): LIST[HX_L_IMOVE]
		-- Return possible moves.
		require
			selectable: is_piece_selectable (x, y)
		deferred
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


	move_piece(from_x: INTEGER; from_y: INTEGER; to_x: INTEGER; to_y: INTEGER)
		-- Move a piece to a new location.
		require
			movable: is_piece_movable (from_x, from_y, to_x, to_y)
		deferred
		end

	moves_count: INTEGER
		-- How many moves were made.

	revert
		-- Undo last move.
		require
			not_first: moves_count > 0
		deferred
		end

	serialized(): STRING
		-- Serialized game state.
		deferred
		end

	deserialize(state: STRING)
		-- Initializes board from serialized state.
		deferred
		end

end
