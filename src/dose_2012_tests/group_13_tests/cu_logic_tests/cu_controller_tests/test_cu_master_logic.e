note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_MASTER_LOGIC class of the Cluedo game.
	]"
	author: "German Lopez"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_MASTER_LOGIC

inherit
	EQA_TEST_SET

feature
	master_controller: CU_MASTER_LOGIC

feature -- Test routines

	--	REPAIR (Make implmentation)
	test_make
			-- New test routine
		note
			testing: "covers/{CU_MASTER_LOGIC}.make"
			testing: "user/CU"
		do
			create master_controller.make
			assert ("Instance not void:", master_controller.incoming_clients.count /= 0)
		end

	test_new_client_0
			-- New test routine
		note
			testing: "covers/{CU_MASTER_LOGIC}.new_client"
			testing: "user/CU"
		local
			name: STRING
			clients_list: INTEGER
		do
			create master_controller.make
			clients_list := master_controller.incoming_clients.count
			master_controller.new_client (name)
			assert ("New client in the list:", (master_controller.incoming_clients.count = clients_list + 1) and (master_controller.incoming_clients.has (name)))
		end

	test_new_client_1
			-- New test routine
		note
			testing: "covers/{CU_MASTER_LOGIC}.new_client"
			testing: "user/CU"
		local
			name: STRING
			exist_client: BOOLEAN
			clients_list: INTEGER
		do
			create master_controller.make
			clients_list := master_controller.incoming_clients.count
			exist_client := master_controller.incoming_clients.has (name)
			master_controller.new_client (name)
			assert ("The client exists in the list:", master_controller.incoming_clients.count = clients_list)
		end

	test_deny_client_0
			-- New test routine
		note
			testing: "covers/{CU_MASTER_LOGIC}.deny_client"
			testing: "user/CU"
		local
			name: STRING
			game_players: INTEGER
			player_in_list: BOOLEAN
		do
			create master_controller.make
			game_players := master_controller.game.active_players.count
			if master_controller.incoming_clients.has (name) then
				master_controller.deny_client (name)
				player_in_list := True
			end
			assert ("List of players accepted not change:", (game_players = master_controller.game.active_players.count) and player_in_list)
		end

	test_accept_player
			-- New test routine
		note
			testing: "covers/{CU_MASTER_LOGIC}.accept_player"
			testing: "user/CU"
		local
			name: STRING
			pawn: INTEGER
			connection: SOCKET
			game_players: INTEGER
		do
			create master_controller.make
			game_players := master_controller.game.active_players.count
			if (master_controller.incoming_clients.has (name)) and ((pawn >= 0) and (pawn <= 5)) and (connection /= Void) then
				master_controller.accept_player (name, pawn)
			end
			assert ("The player was accepted to the game list:", (game_players + 1 = master_controller.game.active_players.count) and not master_controller.incoming_clients.has (name))
		end

	test_start_game
			-- New test routine
		note
			testing: "covers/{CU_MASTER_LOGIC}.start_game"
			testing: "user/CU"
		do
			create master_controller.make
			master_controller.start_game
			assert ("The game was started", (master_controller.game.current_player = master_controller.game.active_players [0]) and master_controller.game.active_players.count <= 6)
		end

	test_move
			-- New test routine
		note
			testing: "covers/{CU_MASTER_LOGIC}.move"
			testing: "user/CU"
		local
			direction: STRING
		do
			create master_controller.make
			direction := "up"
			master_controller.move (direction)
			assert ("Move in the valid direction", (direction = "up" or direction = "down" or direction = "left" or direction = "right"))
		end

end -- class TEST_CU_MASTER_LOGIC

