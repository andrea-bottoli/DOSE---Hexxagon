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
	make_AI (player_difficulty : INTEGER ; new_player_number : INTEGER)
			-- Initialization for `Current'.
		require else
			valid_player_difficulty : (player_difficulty > -1) and (player_difficulty < 3)
		do
			add_tile_set( new_player_number )
			player_id := new_player_number
			difficulty := player_difficulty
		ensure then
			valid_difficulty : (difficulty > -1) and (difficulty < 3)
		end

feature -- Access

	do_move(a_board: BS_BOARD):BS_MOVE --Can we return an empty movement?
	require else
		have_tiles: tiles.count>0
	do
		--This feature invokes the corresponding feature according to difficulty
	ensure then
		make_move: tiles.count <= old tiles.count
	end

feature -- Measurement

feature{ANY} -- Status report

	get_difficulty : INTEGER
	do
		Result := difficulty
	ensure
		Result = difficulty and difficulty = old difficulty
	end

feature{NONE} -- Status setting

	difficulty : INTEGER

feature{NONE} -- Auxiliar Methods

	calculate_move_value(board:BS_BOARD):INTEGER --used to estimate wich movement is the best
												--in order to decide the next movement (based of the space of board)
	do

	end

feature -- Element change

feature -- Removal

feature -- Resizing

feature -- Transformation

feature -- Conversion

feature -- Duplication

feature -- Miscellaneous

feature -- Basic operations

feature -- Obsolete

feature -- Inapplicable

feature {NONE} -- Implementation
	move_AI_easy():BS_MOVE --we do not know if this would be a move
	do

	end

	move_AI_medium():BS_MOVE
	do

	end

	move_AI_hard():BS_MOVE
	do

	end

invariant
	invariant_clause: True -- Your invariant here

end
