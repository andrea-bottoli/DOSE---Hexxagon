note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "18/11/2012"
	revision: "0.1"
	testing: "type/manual"

class
	GR11_GUI_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	recv_msg_test
			--test to check if the message are received in the right way
		note
			testing:  "covers/{GR11_GUI}.recv_msg"
			testing:  "user/GR11"

		local
			msg_update : GR11_MSG --has to be an update message
		    msg_error  : GR11_MSG --has to be an error message	
		    -- l_gui : GR11_GUI
		    -- l_fake_screen: FAKE_SCREEN

		do
			create msg_update
			create msg_error
			--create l_gui(l_fake_screen)
			--l_gui.recv_msg(msg_update)
			--assert("an update message is checked", l_fake_screen.update_message)
			--l_gui.recv_msg(msg_error)
			--assert("an error message is checked", l_fake_screen.error_message)
		end

	test_join_game
			--test to check if a correct message is sended to the net
		note
			testing:  "covers/{GR11_GUI}.join_game"
			testing:  "user/GR11"

		local
			l_ip :STRING
			l_fake_net : GR11_FAKE_NET
			--l_gui : GR11_GUI

		do
			l_ip := "127.0.0.1"
			create l_fake_net
			--create l_gui ( l_fake_net)
			--l_gui.join_game(l_ip)
			--assert("check if a correct message is sended", l_fake_net.join_game);
		end

	test_move_ship
			--test to check if a correct message is sended to the net
		note
			testing:  "covers/{GR11_GUI}.move_ship"
			testing:  "user/GR11"

		local
			--l_ship : GR11_SHIP
			l_fake_net : GR11_FAKE_NET
			--l_gui : GR11_GUI

		do
			--create l_ship
			create l_fake_net
			--create l_gui ( l_fake_net)
			--l_gui.move_ship(l_ship)
			--assert("check if the correct message of moved ship is sended", l_fake_net.move_ship);
		end

	test_rotate_ship
			--test to check if a correct message is sended to the net
		note
			testing:  "covers/{GR11_GUI}.rotate_ship"
			testing:  "user/GR11"

		local
			l_int : INTEGER
			--l_ship : GR11_SHIP
			l_fake_net : GR11_FAKE_NET
			--l_gui : GR11_GUI

		do
			l_int := 2
			create l_fake_net
			--create l_ship
			--create l_gui ( l_fake_net)
			--l_gui.rotate_ship(l_ship, l_int)
			--assert("check if a correct message of rotated ship is sended", l_fake_net.rotate_ship);
		end

	test_move_or_rotate_battleship
			--test to check if a correct message is sended to the net
		note
			testing:  "covers/{GR11_GUI}.move_or_rotate_battleship"
			testing:  "user/GR11"

		local
			--l_movement_action :GR11_MOVEMENT_ACTION
			--l_battleship : GR11_BATTLESHIP
			l_fake_net : GR11_FAKE_NET
			--l_gui : GR11_GUI

		do
			--create l_movement_action
			--create l_battleship
			create l_fake_net
			--create l_gui ( l_fake_net)
			--l_gui.move_or_rotate_battleship(l_battleship, l_movement_action)
			--assert("check if a correct message is sended", l_fake_net.move_or_rotate_battleship);
		end



end


