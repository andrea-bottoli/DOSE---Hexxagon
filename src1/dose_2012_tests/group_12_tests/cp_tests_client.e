note
	description: "[
		Group 12 client class test.
	]"
	author: "Silvio"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	CP_TESTS_CLIENT

	inherit

	EQA_TEST_SET

feature

	test_make
		note
			testing: "covers/{CP_CLIENT}.make"
		local
			l_ip_adress: STRING
			l_port: INTEGER_32
			l_client: CP_CLIENT
		do
			l_client.make(l_ip_adress, l_port)
			print ("tested client make")
		end

	test_start_game
		note
			testing: "covers/{CP_CLIENT}.start_game"
		local
			l_client:CP_CLIENT
		do
			l_client.start_game()
			print ("tested client start game")
		end


	test_send_message
		note
			testing: "covers/{CP_CLIENT}.send_message"
		local
			l_client:CP_CLIENT
			l_player:CP_PLAYER
			l_message:STRING
		do
			-- Feature moved to chat_sender_receiver
		end


	test_send_move
		note
			testing: "covers/{CP_CLIENT}.send_move"
		local
			l_client:CP_CLIENT
			l_player: CP_PLAYER
			l_insect: CP_INSECT
			l_position: CP_POSITION
		do
			l_client.send_move (l_player, l_insect, l_position)
			print ("tested client send move")
		end

	test_post_message
		note
			testing: "covers/{CP_CLIENT}.post_message"
		local
			l_message:CP_MESSAGE
			l_client:CP_CLIENT
		do
			-- Feature moved to chat_sender_receiver
		end


	test_apply_move
		note
			testing: "covers/{CP_CLIENT}.apply_move"
		local
			l_game_msg:CP_GAMEMESSAGE;
			l_board:ARRAY[CP_INSECT]
			l_client:CP_CLIENT
		do
			l_client.apply_move (l_game_msg,l_board)
			print ("tested client apply move")
		end

test_disconnect
	note
		testing: "covers/{CP_CLIENT}.disconnect"
	local
		l_client:CP_CLIENT
	do
		l_client.disconnect
		print ("tested client disconnect")
	end




end





