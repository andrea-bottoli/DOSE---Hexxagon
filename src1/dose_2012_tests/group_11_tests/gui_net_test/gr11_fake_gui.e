note
	description: "Stub implementation class of GR11_GUI for testing purpose"
	author: "Milano4"
	date: "21/11/2012"
	revision: "0.1"

class
	GR11_FAKE_GUI

inherit
	GR11_GUI

feature --status access

	msg_received:GR11_MSG

feature

	create_game
	do
	end

	join_game(ipadr: STRING)
	do
	end

	recv_msg(m: GR11_MSG)
    do
    	msg_received := m
	end

	reveal_movement_card
	do
	end

	move_ship(s: GR11_SHIP)
    do
	end

	rotate_ship(s: GR11_SHIP; i: INTEGER)
	do
	end

	move_or_rotate_battleship(bs: GR11_BATTLESHIP; ma: GR11_MOVEMENT_ACTION)
	do
	end

	update_game_state(gsu: GR11_GAMESTATEUPDATE)
	do
	end

	display_error_msg(em: STRING)
	do
	end

end
