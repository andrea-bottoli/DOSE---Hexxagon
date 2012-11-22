note
	description: "The G5_LAUNCHER is responsable of instantiate all needed components correctly to perform a complete Dominion game."
	author: "Luca Falsina"
	date: "15.11.2012"
	revision: "1.1"

class
	G5_LAUNCHER

inherit
	LAUNCHER

feature -- Status Report

	initial_GUI: G5_IGUI_TO_NET
			-- This GUI component will be responsable of showing the main menù of the application.
			-- After the G5_NET_CLIENT creation, it will be linked with this class and manage
			-- all the game screen visualization and interaction with the user.

feature -- Game Initialization

	launch (main_ui_window: MAIN_WINDOW)
			-- this feature launches the application by showing the main menù window and
			-- by initializing the correct components depending on player's choice.
		require else
			valid_ui_to_return: main_ui_window /= void
		do
		ensure then
			-- the correct components will be instanciated and will start to interact
			-- between themselves. At the end of the application, the main_ui_window
			-- will be restored.
		end

feature {G5_LAUNCHER} -- Auxiliary feature for components'instanciation

	set_server_components(port_number_on_server: INTEGER; max_number_players: INTEGER;
						  game_name: STRING; set_kingdom_cards: ARRAY [STRING])
			-- This internal routine will be called every time a player completes correctly the
			-- GUI form related to the option "Create a new game". All components on Server Side
			-- (G5_NET_SERVER and G5_TABLE) will be created and linked.
		require
			valid_server_port: port_number_on_server > 1024 and port_number_on_server < 5000
			valid_max_players: max_number_players >= 2 and max_number_players <= 4
			not_void_game_name: game_name /= void
			valid_card_selection:
				(set_kingdom_cards.count = 1 implies
				( set_kingdom_cards.item (1).is_equal ("DEFAULT") xor
				  set_kingdom_cards.item (1).is_equal ("RANDOM") ) )
				 xor
				(set_kingdom_cards.count = 10 implies
				  set_kingdom_cards.for_all (agent (card: STRING): BOOLEAN do Result := (card /= void and card.starts_with("K")) end) )

		do
		ensure
			-- Server side is ready to manage incoming clients requests.
		end


	set_client_components(server_IP_address: STRING; server_port_number: INTEGER; player_name: STRING)
			-- This internal procedure will be executed every time a player wants to create/join
			-- a game. All components on client side (G5_NET_CLIENT and G5_GUI) will be generated
			-- and connected each other.
			-- P.s. Please note that also the host will invoke this method after having performed
			-- the set_server_components() feature.
		require
			valid_server_port: server_port_number > 1024 and server_port_number < 5000
			not_void_name: player_name /= void
		do
		ensure
			-- A client will be ready to connect properly to the selected server and, if everything
			-- works fine, the client will be able to join a complete Dominion Game.
		end

end
