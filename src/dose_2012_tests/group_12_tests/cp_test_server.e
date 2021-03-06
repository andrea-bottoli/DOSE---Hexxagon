note
	description: "[
		Group 12 server class test.
	]"
	author: "Alan"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	CP_TEST_SERVER

inherit
	EQA_TEST_SET

feature -- Test routines

	test_start_game
			-- Testing the game start
		note
			testing:  "covers/{CP_SERVER}.start_game"
		local
			l_server: CP_SERVER
		do
			l_server.start_game
			print ("server game start tested")
		end

	test_send_message
			-- Testing the server sending message
		note
			testing:  "covers/{CP_SERVER}.send_message"
		local
			l_server: CP_SERVER
			l_player: CP_PLAYER
		do
			-- Feature moved to chat_sender_receiver
		end

	test_send_move
			-- Testing the server sending move
		note
			testing:  "covers/{CP_SERVER}.send_move"
		local
			l_server: CP_SERVER
			l_player: CP_PLAYER
			l_move: CP_POSITION
			l_insect: CP_INSECT
		do
			-- Feature moved to CP_MOVE_SENDER_RECEIVER
		end

	test_post_message
			-- Testing the server post messaging
		note
			testing:  "covers/{CP_SERVER}.post_message"
		local
			l_server: CP_SERVER
			l_message:CP_MESSAGE
		do
			-- Feature moved to chat_sender_receiver
		end

	test_apply_move
			-- Testing the server applying move
		note
			testing:  "covers/{CP_SERVER}.apply_move"
		local
			l_server: CP_SERVER
			l_game_msg:CP_GAMEMESSAGE
			l_board:ARRAY[CP_INSECT]
		do
			-- Feature moved to CP_MOVE_SENDER_RECEIVER
		end

	test_abortServer
			-- Testing the abort server
		note
			testing:  "covers/{CP_SERVER}.abortServer"
		local
			l_server: CP_SERVER
		do
			l_server.abortServer
			print ("server abort tested")
		end

end
