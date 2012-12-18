note
	description: "[
					The G5_LAUNCHER is responsable of instantiate all needed components 
					correctly to perform a complete Dominion game.
					]"
	author: "Luca Falsina"
	date: "15.11.2012"
	revision: "1.2"

class
	G5_LAUNCHER

inherit
	LAUNCHER



feature {G5_LAUNCHER} -- Attributes

	gui_manager: G5_GUI
		-- the instance that receives commands from the net and update the GUI

	net_server: G5_NET_SERVER
		-- the instance of the network component and controller on server side

	board_table: G5_TABLE
		-- the instance of the componenet that has the state of the game and
		-- will keep it updated

	net_client: G5_NET_CONTROLLER_CLIENT
		-- the instance of the componenet that is used to notify information,
		-- received from the GUI to the server

	client_for_host_thread: G5_CLIENT_THREAD
		-- this thread is used to perform the initialization of the host as a
		-- client of the game he has just created

	creation_mutex: MUTEX
		-- A mutex object is needed to initialize the client_for_host_thread

feature -- Game Initialization

	launch (main_ui_window: MAIN_WINDOW)
			-- this feature launches the application by showing the main menù window and
			-- by initializing the correct components depending on player's choice.
		require else
			valid_ui_to_return: main_ui_window /= void
		--local
			 --window: G5_MAIN_MENU
			 --menu_window: G5_MAIN_MENU
			 --test: G5_HOST_WAITING_ROOM
		do
			-- LAUNCHER REALE
			create gui_manager.make(main_ui_window, current)
			-- \

			-- TEST THE WAITING ROOM
			-- create test.make
			-- test.show
			-- test.add_player_to_the_list("asd")
			-- test.add_player_to_the_list("prova")
			-- \

			--ROBA VECCHIA
			-- create and show the window used in menu and that destroyed
			--create menu_window.make (main_ui_window, current)
			--menu_window.show

			-- we inform the Main-UI about the game window; otherwise, the game window might get garbage collected
			--main_ui_window.add_reference_to_game (window)

		ensure then
			-- the correct components will be instanciated and will start to interact
			-- between themselves. At the end of the application, the main_ui_window
			-- will be restored.
		end

feature {G5_CLIENT_THREAD, G5_MAIN_MENU} -- Client components initialization

	submitting_as_a_client(server_IP_address, player_name: STRING; server_port_number: INTEGER)
			-- This feature is invoked to send to the launcher information needed to connect to a server.
			-- In particular it will be executed every time a player wants to create/join
			-- a game. All components on client side (G5_NET_CONTROLLER_CLIENT and G5_GUI) will
			-- be generated and connected each other.
			-- P.s. Please note that also the host will invoke this method after having performed
			-- the set_server_components() feature.
			require
				valid_server_port: server_port_number > 1024 and server_port_number < 5000
				valid_name: player_name /= void and
							not(player_name.is_empty) and
							not(player_name.is_equal ("SERVER"))

			do
				create net_client.make(gui_manager)

				-- The net client try to connect to the selected server..
				net_client.connect(player_name, server_ip_address, server_port_number)

				-- Until a valid connection is obtained or the back button is pressed, the system requires
				-- new inputs to the user and continues trying to connect.
--				from
--				until
--					net_client.has_a_valid_connection
--				loop
					-- Some features may affects directly the GUI part in order to obtain
					-- new inputs or return to the main menu.. IMPEMENTATION IS NOT PRESENT!!

--					net_client.connect(player_name, server_ip_address, server_port_number)
--				end

				-- If a valid connection is obtained, the system starts the game_phase.
				if net_client.has_a_valid_connection then
					net_client.game_phase
				end

			ensure
				-- A client can connect properly to the selected server and, if everything
				-- works fine, the client will be able to join the game.
			end

feature {G5_MAIN_MENU} -- launcher notifier about user choices as a host used by main menu

	submitting_as_a_host(port_number_on_server:INTEGER; players_number: INTEGER;
							host_name, game_type: STRING; set_kingdom_cards: ARRAY[STRING])
			-- This feature is invoked to let the launcher gain information needed to create a new game.
			-- This routine will be called every time a player completes correctly the
			-- GUI form related to the option "Create a new game". All components on Server Side
			-- (G5_NET_SERVER and G5_TABLE) will be created and linked.
		require
			valid_server_port: 		port_number_on_server > 1024 and port_number_on_server < 5000
			valid_players_number:	players_number >= 2 and players_number <= 4
			valid_player_name:		host_name /= void and not(host_name.is_empty)
									and not(host_name.is_equal ("SERVER"))

			correct_game_type_string:
				game_type.is_equal ("default") xor
				game_type.is_equal ("random") xor
				game_type.is_equal ("custom")

			valid_card_selection_on_default_and_random_mode:
				(game_type.is_equal ("default") xor game_type.is_equal ("random")) implies
					set_kingdom_cards = void

			valid_card_selection_on_personal_mode:
				game_type.is_equal ("custom") implies
					(set_kingdom_cards.count = 10 and
					set_kingdom_cards.for_all (agent (card: STRING): BOOLEAN do
					Result := (card /= void and card.starts_with("K")) end) )

		do
			-- In this extract a thread to manage the connection of the host to the game is instanciated.
			create creation_mutex.make
			create client_for_host_thread.make (creation_mutex, current, "127.0.0.1", host_name, port_number_on_server)

			-- Here the network component on server side is initialized.
			create net_server.make (port_number_on_server, players_number)
			net_server.set_host_thread_as_client(client_for_host_thread)

			-- Here the kingdom cards that will be used are chosen between
			-- three possibilities (default, random or custom) and the relative
			-- creation procedure of the main LOGIC component is invoked.
			if game_type.is_equal ("default") then
				create board_table.make_game_default (players_number, net_server)
			elseif game_type.is_equal ("random") then
				create board_table.make_game_randomize (players_number, net_server)
			elseif game_type.is_equal ("custom") then
				create board_table.make_game_personalized (players_number, set_kingdom_cards, net_server)
			end

			-- With this feature the net_server will start listening on its port looking for clients,
			-- who will join the Dominion game.
			net_server.start_accepting_clients

			-- After that all clients have been connected, the match can start properly.
			net_server.start_game(net_server.server_logic.get_player_names)

			-- Finally when a game is ended the thread created or managing the host as
			-- a client is terminated.
--			client_for_host_thread.join

		ensure
			-- The game is started: server is up and ready to receive and send messages to
			-- the clients. The user of this machine is also a player of this
			-- Dominion game and (s)he is registered as 'host_name'.
		end

end
