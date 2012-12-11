note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_HX_NET

inherit
	EQA_TEST_SET
	redefine
		on_prepare,
		on_clean
	end

feature {NONE} -- Events

	server: HX_N_SERVER

	client: HX_N_CLIENT

	on_prepare
		-- This routine is called before executing any test.
		do
			-- Creating server
			create server.server_create(10000)

			-- Creating client with ip address and port number.
			create client.connect("127.0.0.1", "player1", 10000)

		end

	on_clean
		-- Similar to "on_prepare", this routine is automatically called after
		-- all tests have been executed.
		do
			client.disconnect_client()
			server.close_server
		end

feature -- Test routines

	test_hx_net_connect
			-- Test if connection is established
		note
			testing: "covers/{HX_NET_CLIENT}.isconnected"
			testing: "user/HX"
		do
			assert("client_is_connected", client.isconnected)
		end

	test_hx_net_board
			-- Test if board can be sent
		note
			testing: "covers/{HX_NET_SERVER}.send_board"
			testing: "user/HX"
		do
			server.send_board ("test_board")
			assert("client_received_board", client.receive_board = "test_board")
		end

	test_hx_net_state_update
			-- Test if state updates can be sent
		note
			testing: "covers/{HX_NET_SERVER}.send_state_update"
			testing: "user/HX"
		do
			-- Seems there is an error in the definition of server.send_state_update
			server.send_state_update("test_state")
			assert("client_received_state_update", client.receive_state_update = "test_state")

		end

	test_hx_net_final_state
			-- Test if moves can be sent
		note
			testing: "covers/{HX_NET_SERVER}.send_final_state"
			testing: "user/HX"
		local
			state: TUPLE[winner_id: INTEGER; player1_pieces: INTEGER; player2_pieces: INTEGER]
		do
			-- Seems there is an error in the definition of client.receive_final_state
			server.send_final_state (1, 30, 20)
			state := client.receive_final_state()
			assert("client_received_final_state.winner_id",  state.winner_id = 1)
			assert("client_received_final_state.player1_pieces",  state.player1_pieces = 30)
			assert("client_received_final_state.player2_pieces",  state.player2_pieces = 20)
		end

	test_hx_net_move
			-- Test if moves can be sent
		note
			testing: "covers/{HX_NET_CLIENT}.send_move"
			testing: "user/HX"
		do
			client.send_move ("test_move")
			assert("server_received_move", server.receive_move = "test_move")
		end
end


