note
	description: "It's a useful class to simulate the implementation of the net"
	author: "Milano4"
	date: "0.1"
	revision: "0.1"

class
	GR11_FAKE_NET

inherit
	GR11_NET

feature {NONE}
	msg_is_a_join_game(msg:GR11_MSG)
	do
		msg_join_game := False
	end

	msg_is_a_move_ship(msg:GR11_MSG)
	do
		msg_move_ship := False
	end

	msg_is_a_rotate_ship(msg:GR11_MSG)
	do
		msg_rotate_ship := False
	end

	msg_is_a_move_or_rotate_battleship(msg:GR11_MSG)
	do
		msg_move_or_rotate_battleship := False
	end

feature --status

	msg_join_game:BOOLEAN

	msg_move_ship:BOOLEAN

	msg_rotate_ship:BOOLEAN

	msg_move_or_rotate_battleship:BOOLEAN

feature --command

	send_net_msg(msg:GR11_MSG)
    do
    	msg_is_a_join_game(msg)
    	msg_is_a_move_ship(msg)
    	msg_is_a_rotate_ship(msg)
    	msg_is_a_move_or_rotate_battleship(msg)
    end

    recv_net_msg(msg:GR11_MSG)
    do

    end

    send_gui_msg(msg:GR11_MSG)
    do

    end


end
