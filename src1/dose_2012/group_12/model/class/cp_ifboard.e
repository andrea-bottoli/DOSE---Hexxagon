note
	description: "Summary description for {CP_IFBOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CP_IFBOARD

feature -- Access

	width: INTEGER
	height: INTEGER

	firstplayer: CP_PLAYER
	secondplayer: CP_PLAYER

	place(xx: INTEGER; yy: INTEGER): CP_IFPLACE
		-- Place at position (x, y).
		require
			x: 1 <= xx and xx <= width
			y: 1 <= yy and yy <= height
		deferred
		ensure
			not_void: Result /= Void
		end

	active_player: CP_IFPLAYER
		-- Currently active player.
		deferred
		ensure
			not_void: Result /= Void
		end

	valid_moves: LIST[CP_IFMOVE]
		deferred
		ensure
			not_void: Result /= Void
		end





	-- TODO BE IMPLEMENTED
	--possible_moves(x: INTEGER; y: INTEGER): LIST[CP_IFMOVE]

    -- TO BE IMPLEMENTED
	--piece_can_move(from_x: INTEGER; from_y: INTEGER; to_x: INTEGER; to_y: INTEGER): BOOLEAN
	-- can the piece move ?


    -- TO BE IMPLEMENTED
	--move_piece(a_move: CP_IFMOVE)


end

