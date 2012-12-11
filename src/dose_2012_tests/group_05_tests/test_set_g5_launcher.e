note
	description: "Summary description for {TEST_SET_G5_LAUNCHER}."
	author: "Team RioCuarto4"
	date: "$20/11/2012$"
	revision: "$Revision: 1 $"

class
	TEST_SET_G5_LAUNCHER

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	rescued: BOOLEAN

	a_launcher: G5_LAUNCHER

	port_number_on_server: INTEGER

	max_number_players: INTEGER

	game_name: STRING

	set_kingdom_cards: ARRAY [STRING]

	on_prepare
		local
			--i: INTEGER
		do
			port_number_on_server := 1050
			max_number_players := 4
			game_name := "game1"
			set_kingdom_cards := <<"K2", "K4", "K12", "K22", "K14", "K1", "K8", "K7", "K27", "K17">>
		end

feature -- Tests negative routines for feature launch

	test_launch_0
		note
			testing: "G5_LAUNCHER/launch"
			-- test negative for launch with valid_ui_to_return
		local
			main_ui_window: MAIN_WINDOW
		do
			create main_ui_window.make_and_launch
			if not rescued then
				a_launcher.launch (main_ui_window)
			end
			assert (" launch raised problem with valid_ui_to_return", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

feature -- Tests routines for feature launch

feature -- Tests negative routines for feature set_server_components

	test_set_server_components_0
		note
			testing: "G5_LAUNCHER/set_server_components"
			-- test negative for set_server_components with invalid server port
		do
			port_number_on_server := 1000
			if not rescued then
					--a_launcher.set_server_components(port_number_on_server; max_number_players;game_name; set_kingdom_cards)
			end
			assert (" set_server_components raised problem with invalid server port", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_set_server_components_1
		note
			testing: "G5_LAUNCHER/set_server_components"
			-- test negative for set_server_components with invalid server port
		do
			port_number_on_server := 5000
			if not rescued then
					--a_launcher.set_server_components(port_number_on_server; max_number_players;game_name; set_kingdom_cards)
			end
			assert (" set_server_components raised problem with invalid server port", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_set_server_components_2
		note
			testing: "G5_LAUNCHER/set_server_components"
			-- test negative for set_server_components with invalid numbers players
		do
			max_number_players := 1
			if not rescued then
					-- a_launcher.set_server_components(port_number_on_server; max_number_players;game_name; set_kingdom_cards)
			end
			assert (" set_server_components raised problem with  invalid numbers players", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_set_server_components_3
		note
			testing: "G5_LAUNCHER/set_server_components"
			-- test negative for set_server_components with invalid numbers players
		do
			max_number_players := 5
			if not rescued then
					-- a_launcher.set_server_components(port_number_on_server; max_number_players;game_name; set_kingdom_cards)
			end
			assert (" set_server_components raised problem with  invalid numbers players", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_set_server_components_4
		note
			testing: "G5_LAUNCHER/set_server_components"
			-- test negative for set_server_components with invalid card selection
		do
			set_kingdom_cards := <<"K2">>
			if not rescued then
					-- a_launcher.set_server_components(port_number_on_server; max_number_players;game_name; set_kingdom_cards)
			end
			assert (" set_server_components raised problem with  invalid card selection", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_set_server_components_5
		note
			testing: "G5_LAUNCHER/set_server_components"
			-- test negative for set_server_components with invalid card selection
		do
			set_kingdom_cards := <<"K2", "K4", "K12", "22", "K14", "K1", "K8", "K7", "K27", "K17">>
			if not rescued then
					-- a_launcher.set_server_components(port_number_on_server; max_number_players;game_name; set_kingdom_cards)
			end
			assert (" set_server_components raised problem with  invalid card selection", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

feature -- Tests routines for feature set_server_components

feature -- Tests negative routines for feature set_client_components

	test_set_client_components_0
		note
			testing: "G5_LAUNCHER/set_client_components"
			-- test negative for set_client_components with invalid server_IP_address
		local
			server_IP_address: STRING
			server_port_number: INTEGER
			player_name: STRING
		do
			server_IP_address := ""
			server_port_number := 1050
			player_name := "player1"
			if not rescued then
					--a_launcher.set_client_components(server_IP_address; server_port_number; player_name)
			end
			assert (" set_client_components raised problem with invalid server_IP_address", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_set_client_components_1
		note
			testing: "G5_LAUNCHER/set_client_components"
			-- test negative for set_client_components with invalid server port
		local
			server_IP_address: STRING
			server_port_number: INTEGER
			player_name: STRING
		do
			server_IP_address := "192.168.0.1"
			server_port_number := 1000
			player_name := "player1"
			if not rescued then
					--a_launcher.set_client_components(server_IP_address; server_port_number; player_name)
			end
			assert (" set_client_components raised problem with invalid server port", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_set_client_components_2
		note
			testing: "G5_LAUNCHER/set_client_components"
			-- test negative for set_client_components with invalid server port
		local
			server_IP_address: STRING
			server_port_number: INTEGER
			player_name: STRING
		do
			server_IP_address := "192.168.0.1"
			server_port_number := 5000
			player_name := "player1"
			if not rescued then
					--a_launcher.set_client_components(server_IP_address; server_port_number; player_name)
			end
			assert (" set_client_components raised problem with invalid server port", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_set_client_components_3
		note
			testing: "G5_LAUNCHER/set_client_components"
			-- test negative for set_client_components with invalid player_name
		local
			server_IP_address: STRING
			server_port_number: INTEGER
			player_name: STRING
		do
			server_IP_address := "192.168.0.1"
			server_port_number := 1050
			player_name := ""
			if not rescued then
					--a_launcher.set_client_components(server_IP_address; server_port_number; player_name)
			end
			assert (" set_client_components raised problem with invalid player_name", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

feature -- Tests routines for feature set_client_components

end
