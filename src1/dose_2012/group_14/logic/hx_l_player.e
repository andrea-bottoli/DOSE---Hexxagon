note
	description: "Summary description for {HX_L_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_PLAYER

inherit
	HX_L_IPLAYER

create
	make

feature

	make (a_board:HX_L_IBOARD; a_id: INTEGER; a_name: STRING; a_is_human: BOOLEAN)
		do
			player_board := a_board
			player_id := a_id
			name := a_name
			is_human := a_is_human
			pieces_count := 0
		ensure
			pieces_count_is_zero: pieces_count = 0
		end

feature {NONE} -- internal

	player_board: HX_L_IBOARD
	player_id: INTEGER

feature -- Access

	id: INTEGER
		-- Unique player id.
		do
			Result := player_id
		end

	is_active: BOOLEAN
		-- Is this player's turn now?
		do
			Result := player_board.active_player.is_equal(Current)
		end

	pieces_count: INTEGER

	inc_pieces_count()
		require
			is_non_negative: pieces_count >= 0
		do
			pieces_count := pieces_count + 1
		ensure
			is_positive: pieces_count > 0
		end

	dec_pieces_count()
		require
			is_positive: pieces_count > 0
		do
			pieces_count := pieces_count - 1
		ensure
			is_non_negative: pieces_count >= 0
		end

end
