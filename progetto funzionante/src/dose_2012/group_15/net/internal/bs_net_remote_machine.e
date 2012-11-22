note
	description: "Summary description for {BS_NET_CLIENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_REMOTE_MACHINE
inherit
	BS_NET_MACHINE

create
	make, make_fake

feature {NONE} -- Initialization
	make
		do
		end

feature -- Testing

	make_fake()
	do

	end

	set_fake_move (pmt_fake_move: BS_MOVE)
	do
		fake_move := pmt_fake_move
	end

	fake_move: BS_move


feature -- Game operations

	get_move (color_id: INTEGER; timeout_in_seconds: INTEGER): BS_MOVE
			-- timeout = 0 means no timeout
		do
			Result := fake_move
		end

feature -- Game status messages

	reset_game ()
		do

		end

	player_makes_move (player_id: INTEGER; color_id: INTEGER; move: BS_MOVE)
		do

		end

	remove_tile_from_player (player_id: INTEGER; color_id: INTEGER; tile_to_remove: BS_TILE)
		do

		end

	warn_bad_move (player_id: INTEGER; color_id: INTEGER)
		do

		end

	print_log_message (log_message: STRING)
		do

		end


	set_turn (player_id: INTEGER; color_id: INTEGER)
		do

		end

	announce_victory (player_id: INTEGER; total_scores: ARRAY [TUPLE [INTEGER, INTEGER]])
		do

		end




feature -- TODO...

	ip_address : INET4_ADDRESS

end
