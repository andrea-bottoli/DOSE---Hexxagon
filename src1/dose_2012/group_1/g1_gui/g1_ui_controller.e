note
	description: "Summary description for {G1_UI_CONTROLLER}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_UI_CONTROLLER

create
	make

feature

	make
		local
			request_ip: G1_IP_ADDRESS
			socket_in,socket_out: NETWORK_STREAM_SOCKET
		do
			create request_ip
			ip_address := request_ip.ip_address

			create request_ip.country_create
			country := request_ip.country_code
			port := 9190

			create socket_in.make_server_by_port (11000)
			socket_in.listen(1)
			socket_in.set_non_blocking
			socket_in.accept
			create socket_out.make_client_by_port (11000, "127.0.0.1")
			socket_out.connect
			intern_ip_address := socket_out.address.host_address.host_address
			socket_out.close_socket
			socket_in.close_socket

			create game.make_with_controller (Current,ip_address)
			-- l_player := game.get_player
			create l_player.make (999, "Player")

			is_server_started := FALSE
		end

feature {NONE}

	game: G1_LOGIC_CLIENT
	l_player: G1_PLAYER
	port: INTEGER
	ip_address: STRING
	country:STRING
	intern_ip_address: STRING
	server_ip: STRING
	match_name: STRING
	players_list: HASH_TABLE [STRING, INTEGER]
	gameboard: G1_UI_GAMEBOARD

feature {ANY} -- Initial operation
	--- The following feature are called to initialize the GUI

	set_match_name (matchname: STRING)
			--- The method sets the name of the joined match
			--- It is called by LOGIC subcomponent to set the selected match
		require
			matchname /= Void
		do
			match_name := matchname
		ensure
			match_name = matchname
		end

	get_player_name: STRING
			--- This feature is called by LOGIC subcomponent o by each GUI to get the name of the current player
			--- Player's name is useful to associate the idPlayer, saved on LOGIC subcomponent, with a human-readable identificator
		require
		do
			Result := l_player.get_name
		ensure
			Result /= Void
		end

	get_match_name: STRING
		require
		do
			Result := match_name
		ensure
			Result /= Void
		end

feature {ANY} -- Game operation
	--- These feature has called when the game is started

	set_players_list (playerlist: HASH_TABLE [STRING, INTEGER])
			--- This method is used to communicate to the current client all the player joined in the match
			--- It is called by LOGIC subcomponent when the game is starting.
			--- The matrix must contain at least for each player:
			--- 1. Player's ID
			--- 2. Player's Name
			--- 3. Player's country
			--- 4. Money
		require
			playerlist /= Void
		do
			players_list := playerlist
		ensure
			players_list = playerlist
		end

	update_state (message: G1_MESSAGE)
			--- The feature is called by LOGIC subcomponent every time there is changes of the client owner.
			--- This function is separated by the general message because the massage passed on the parameter must have personal information such as money, property, houses, hotels, etc...
		require
			message /= Void
		do
		ensure
		end

	set_turn (turn: G1_MESSAGE)
			--- This method is used to set the next turn player.
			--- The turn communicated should have the player's ID, to identify how is the next player.
		require
			turn /= Void
		do
		ensure
			players_list = old players_list
		end

	set_message (message: G1_MESSAGE)
			--- This procedure is used to receive information not catched by update_state and update_token.
			--- That information are natural language message or
		require
			message /= Void
		do
		ensure
		end

	update_token (token: G1_MESSAGE)
			--- update_token is used when a turn is finished. It's called by LOGIC to update all information of each player who has been modified in some way in the turn
			--- The message should have at least the player's ID and its money.
		require
			token /= Void
		do
		ensure
		end

	property_info (information: G1_MESSAGE)
			--- The method receives information on a specific property.
			--- This information has asked previously by the client, when the client owner has arrived on this property.
			--- The message will contain information about the owner and the possibility of buy house or home
		require
			information /= Void
		do
		ensure
			players_list = old players_list
		end

feature {G1_UI_MAIN}
	connect_to_server (IP: STRING; server_port: INTEGER)
		require
			IP /= "0"
			server_port > 1024
		do
			server_ip := IP
			port := server_port
			--game.set_server_info (IP, server_port)
			-- Leo. M not necessary, for the moment
			--game.join_game (player)
		ensure
			port = server_port
			server_ip = IP
		end

	get_server_ip: STRING
		do
			Result := server_ip
		ensure
			Result = server_ip
		end

	get_port: INTEGER
		do
			Result := port
		ensure
			Result = port
		end

	get_local_ip: STRING
		do
			Result := ip_address
		ensure
			Result = ip_address
		end

	get_internal_local_ip: STRING
		do
			Result := intern_ip_address
		ensure
			Result = intern_ip_address
		end

	get_country_code:STRING
		do
			Result := country
		end

	start_gameboard (main_ui: MAIN_WINDOW)
		do
			create gameboard.make (main_ui, Current)
			gameboard.show
			gameboard.maximize
		end

feature {G1_UI_MAIN} -- USED TO START SERVER

	server: G1_NET_SERVER_STARTER
	is_server_started: BOOLEAN

	start_server
		do
			create server.make_server(match_name)
			server.launch

			is_server_started := TRUE
		end

feature {ANY} -- Features called by other GUI classes

	get_player : G1_PLAYER
			-- This feature is used to get the G1_PLAYER associated at the user
		do
			Result := l_player
		ensure
			Result = l_player
		end

	get_players_list : HASH_TABLE [STRING, INTEGER]
		do
			Result := players_list
		end

	roll_dice : G1_CELL
		do
			Result := game.roll_dice (l_player)
		end

	buy_property(property : G1_DEED)
		do
			game.buy (l_player, property)
		end

	finish_turn
		do
			game.finish_turn (l_player)
		end

	mortgage(a_deed : G1_DEED)
		do
			game.mortgage (l_player, a_deed)
		end

	unmortgage(a_deed : G1_DEED)
		do
			game.unmortage (l_player, a_deed)
		end

	pay_rent
		do
			game.pay_rent_to_player(l_player)
		end

	build(a_street: G1_STREET)
		do
			game.build (l_player, a_street)
		end

	sell_property(property:G1_DEED)
		do
			--game.sell (l_player, property)
		end

	sell_hotel_house(a_street: G1_STREET)
		do
			game.sell_building (l_player, a_street)
		end

	get_card(type : INTEGER) : G1_CARD
		do
			if type = 1 then
				Result := game.board.get_next_card_community
			elseif type = 2 then
				Result := game.board.get_next_card_chance
			end
		end

	get_property(id : INTEGER) : G1_CELL
		do
			Result := game.board.cells[id]
		end
end
