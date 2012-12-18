note
	description: "Controller used to manage all the GUI interface"
	author: "MILANO7: Hossein Sedighizadeh, Cristina Vicini, Jiang Wu"
	date: "$16/12/2012$"
	revision: "$2.0$"

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
			create l_player.make (1, "")
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
	current_gui : EV_TITLED_WINDOW

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
			if attached {G1_MESSAGE_BUY} message as message_buy  then
				gameboard.update_buy_or_unmortgage_my_ui_player_information (message_buy.id)
			elseif attached {G1_MESSAGE_MORTGAGE} message as message_mortgage then
				if message_mortgage.mortgage then
					gameboard.update_mortgage_my_ui_player_information(message_mortgage.id_deed)
				else
					gameboard.update_buy_or_unmortgage_my_ui_player_information (message_mortgage.id_deed)
				end
			elseif attached {G1_MESSAGE_CASH} message as message_cash then
				gameboard.update_money_my_ui_player
			end
		ensure
		end

	set_turn (turn: G1_MESSAGE)
			--- This method is used to set the next turn player.
			--- The turn communicated should have the player's ID, to identify how is the next player.
		require
			turn /= Void
		do
			if attached {G1_MESSAGE_FINISH} turn as message_finish  then
--				gameboard.set_turn (players_list.item (message_finish.player_id), my_turn, i_am_in_jail)
			end
		ensure
			players_list = old players_list
		end

	set_message (message: G1_MESSAGE)
			--- This procedure is used to receive information not catched by update_state and update_token.
			--- That information are natural language message or
		require
			message /= Void
		do
			if attached {G1_MESSAGE_DICE} message as message_dice  then
				gameboard.update_dice(message_dice.dice_1,message_dice.dice_2)
			elseif attached {G1_MESSAGE_MOVE} message as message_move then
				gameboard.update_position_player(game.board.cells[message_move.position].name_cell,message_move.id_player)
				if message_move.id_player = l_player.id_player then
					gameboard.view_cell
				end
			end
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
			game.set_server_info (IP, server_port)
			game.add_player (l_player)
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

	get_gameboard : G1_UI_GAMEBOARD
		do
			Result := gameboard
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

	communicate_id_card(id : INTEGER)
		do
			game.action_card (id, l_player)
		end

	pay_ten_percent
		do
			game.pay_income_tax10 (l_player)
		end
	pay_two_hundred_dollars
		do
			game.pay_income_tax200 (l_player)
		end

	ask_player(id : INTEGER) : G1_PLAYER
		do
			Result := game.get_player_board (id)
		end

	trade_with_a_player(a_player1, a_p1_deed, a_p1_card, a_player2, a_p2_deed, a_p2_card : INTEGER)
		do
			game.trade (a_player1, a_p1_deed, a_p1_card, a_player2, a_p2_deed, a_p2_card)
		end

--- ERROR DIALOG FEATURES ---
feature {ANY}
	set_current_gui (gui: EV_TITLED_WINDOW)
	do
		current_gui := gui
	end

	error_dialog(text: STRING)
			-- The user wants to close the window
		local
			dialog: EV_INFORMATION_DIALOG
		do
			create dialog.make_with_text (text)
			dialog.show_modal_to_window (current_gui)
	end

end
