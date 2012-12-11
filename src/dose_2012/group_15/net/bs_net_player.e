note
	description: "Summary description for {BS_NET_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_PLAYER

inherit
	BS_PLAYER
	rename make as make_noooooo
	redefine
		do_move
	end

inherit {NONE}
	BS_CONSTANTS
	export {NONE} all
	end

create
	make

feature -- Constructor

	make(player_number: INTEGER; color: INTEGER; a_name: STRING; pmt_machine: BS_NET_REMOTE_MACHINE)
	require
		valid_name: a_name /= Void and not a_name.is_empty
		valid_id: is_valid_player_range (player_number)
		valid_color: is_valid_color (color)
	do
		make_with_name (player_number, color, a_name)
		machine := pmt_machine
	ensure
		machine_assigned: machine = pmt_machine
	end

feature -- Redefined functions

	do_move (board: BS_BOARD): BS_MOVE
	do
		result := machine.get_move (player_color)
	end

	warn_bad_move( tile_played: BS_TILE )
	local
	do
		machine.warn_bad_move (player_id, player_color)
	end

	get_machine() : BS_NET_MACHINE
	do
		result := machine
	ensure
		result = machine
	end

feature {NONE} -- Locals

	machine: BS_NET_REMOTE_MACHINE

end
