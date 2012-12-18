note
	description: "Main window for this application"
	author: "Team Rio Cuarto9"
	date: "26/11/12"
	revision: "1.1.0"

class
	DO_BOARD

inherit

	EV_TITLED_WINDOW
		export
			{EQA_TEST_SET} is_initialized
		redefine
			initialize,
			is_in_default_state
		end

	DO_INTERFACE_NAMES
		export
			{NONE} all
		undefine
			default_create,
			copy
		end

	DO_MAIN_WINDOW
		undefine
			initialize,
			is_in_default_state,
			request_close_window
		redefine
			request_new_game
		end

create
	 make_board

feature {EQA_TEST_SET} -- make and Initialize

	make_board(window: DO_MAIN_WINDOW; a_client: DO_CLIENT; a_server: DO_SERVER; game: DO_GAME)
	do
		main_window := window
		client:=a_client
		server:=a_server
		game_reference:= game
		default_create
	end

	initialize
			-- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}

				-- Create and add the menu bar.
			build_standard_menu_bar
			set_menu_bar (standard_menu_bar)

				--Create the main container
			build_board
			extend (main_board)

				-- Execute `request_close_window' when the user clicks
				-- on the cross in the title bar.
			close_request_actions.extend (agent request_close_window)

			-- Set the title of the window
			set_title (Board_title)

				-- Set the initial size of the window
			set_size (Board_width, Board_height)

				-- The user can't resize the window, it's predefined
			disable_user_resize

		end

feature -- Status report

	is_in_default_state: BOOLEAN
			-- Is the window in its default state
		do
			Result := ( (Board_title.is_equal("Dominion-Playing")) and (Board_width=1000) and (Board_height=700))
		end

feature {ANY} -- Implementation, Redefines features

	request_close_window
		require else
			not_destroyed: not is_destroyed
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Exit_message)
			question_dialog.show_modal_to_window (Current)
			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Destroy the window
				destroy
				main_window.restore
			end
		end

	request_new_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		do
				create board.make_board(Main_window, client, server, game_reference)
				board.show
				Current.destroy
		end

feature {ANY}  -- Notification, on lose or win the game

	on_lose
		local
			lose_dialog: USER_INFO_DIALOG
			image_path: STRING
		do
			create image_path.make_from_string (Files_path+"wallpapers/lose.png")
			create lose_dialog.make (image_path, "LOSE", "")
			lose_dialog.show_modal_to_window (current)
		end

	on_win
		local
			lose_dialog: USER_INFO_DIALOG
			image_path: STRING
		do
			create image_path.make_from_string (Files_path+"wallpapers/win.png")
			create lose_dialog.make (image_path, "WIN", "")
			lose_dialog.show_modal_to_window (current)
		end

	on_tie
		local
			lose_dialog: USER_INFO_DIALOG
			image_path: STRING
		do
			create image_path.make_from_string (Files_path+"wallpapers/draw.png")
			create lose_dialog.make (image_path, "DRAW", "")
			lose_dialog.show_modal_to_window (current)
		end

	ask_win(victory_points: STRING)
		local
			status: STRING
			status_message: DO_OUR_MESSAGE
		do
			create status_message.make
			status_message.extend ("status")
			if (client/=Void) then
				status:=client.ask_win(status_message)
			elseif (server/=Void) then
				status:=server.ask_win(status_message)
			end
			if (status.is_equal ("yes")) then
				on_win
			elseif (status.is_equal ("no")) then
				on_lose
			else
				on_tie
			end
		end

feature {EQA_TEST_SET, DO_GRAPHIC_CARD} -- Implementation

	main_board: EV_FIXED
			-- Main container (contains all widgets displayed in this window)

	build_board
			-- Fill the board with cards, buttons and info
		local
			image: EV_PIXMAP
		do
			create main_board
			create image.default_create
			image.set_with_named_file (Files_path+"wallpapers\Castle.png")
			main_board.set_background_pixmap (image)

			create deck_area
			create image_deck.default_create
			image_deck.set_with_named_file (Files_path+"big_cards\graphic_deck.png")
			deck_area.set_background_pixmap (image_deck)
			main_board.extend_with_position_and_size (deck_area, 0, 0, 211, 330)

			create end_button.make_with_text ("End Action Phase")
			end_button.set_minimum_size (150, 40)
			end_button.select_actions.extend (agent end_button_pressed)

			create actions_left.make_with_text("Actions: 0")
			create buys_left.make_with_text("Buys: 0")
			create coins_left.make_with_text("Coins: 0")
			main_board.extend_with_position_and_size (actions_left, 15, 550, 120, 24)
			main_board.extend_with_position_and_size (buys_left, 15, 570, 120, 24)
			main_board.extend_with_position_and_size (coins_left, 15, 590, 120, 24)

			main_board.extend_with_position_and_size (end_button, 10, 500, 150, 40)
			create net_message.make
			create board_cards.make
			paint_buy_zone(12,15)

			create log_text_area
			create message_log.make_from_string ("DOMINION%N")
			log_text_area.set_minimum_size (200, 200)
			log_text_area.disable_edit
			main_board.extend_with_position_and_size (log_text_area, 750, 20, 200, 200)
			start
		end

	start
		do
			create game_phase.make_from_string("play")
			create Played_cards.make
			on_update(game_reference.notifygamestate ("init"),Void)
		end

	end_button_pressed
		do
			if game_phase.is_equal ("play") then
				end_button.set_text("Done buys")
				game_phase:= "buy"
			elseif game_phase.is_equal ("buy")  then
				end_button.set_text("Done Clean phase")
				game_phase:= "clean"
			elseif game_phase.is_equal ("clean") then
				end_button.set_text("Done Action phase")
				game_phase:= "play"
				send_message
				send_turn
			end
		end

	-- the pointer is entering the area used as a button
	pointer_enter_card_area(name:STRING)
		do
			card_pixmap_pointer_in.set_with_named_file (Files_path+name)--name_big_card)	
			deck_area.set_background_pixmap(card_pixmap_pointer_in)
		end

	-- the pointer is leaving the area used as a button
	pointer_leave_card_area
		do
			deck_area.set_background_pixmap (image_deck)
		end

feature {EQA_TEST_SET, DO_GRAPHIC_CARD, DO_CLIENT,DO_SERVER} -- Board variables

	message: DO_OUR_MESSAGE
			-- Message that will be sended to the oponent

	game_reference: DO_GAME
			-- Reference the logic part of the Game

	log_text_area: EV_RICH_TEXT
		-- log text, to inform the progress of the game

	message_log: STRING
		-- Message for the log text

	end_button: EV_BUTTON
		-- Button used to end a fase, and begin the next one

	game_phase: STRING
		-- Which fase of the game is the current (action, buy, clean)	

	net_message: LINKED_LIST[STRING]
		-- Fill the message for the oponent

	Played_cards: LINKED_LIST[STRING]
		-- have every card played

	board_cards:LINKED_LIST[EV_FIXED]
		-- Every card painted on the board

	-- Information Variables, to know how many actions, buys and coins rests
		actions_left: EV_LABEL
		buys_left: EV_LABEL
		coins_left: EV_LABEL
	--

	-- Variables needed to paint every card in the board
		-- Position Variables,
		pos_card_x:INTEGER
		pos_card_y:INTEGER
		pos_buy_zone_x:INTEGER
		pos_buy_zone_y:INTEGER
		-- Picture Variables
		new_card: EV_FIXED
		new_card_pixmap: EV_PIXMAP
		buy_zone: EV_FIXED
		buy_zone_pixmap: EV_PIXMAP
		-- Variables we use to paint a pointed card on the top_left of the board
		image_deck: EV_PIXMAP
		deck_area: EV_FIXED
		card_pixmap_pointer_in: EV_PIXMAP
	--

		end_first_turn: BOOLEAN



feature {EQA_TEST_SET,DO_GRAPHIC_CARD, DO_CLIENT, DO_SERVER} -- Methods that print the window.

	paint_Card (card:DO_GRAPHIC_CARD)
		-- Paint a Card
		do
			create new_card
			create new_card_pixmap
			new_card_pixmap.set_with_named_file (Files_path+"small_cards\"+card.small_card_name) --cambiar la imagen
			new_card.set_background_pixmap (new_card_pixmap)
			create card_pixmap_pointer_in
			new_card.pointer_enter_actions.extend (agent pointer_enter_card_area("big_cards\"+card.big_card_name))
			new_card.pointer_leave_actions.extend (agent pointer_leave_card_area)
			new_card.pointer_button_release_actions.extend (agent card.on_click)
			main_board.extend_with_position_and_size (new_card, pos_card_x, pos_card_y, 120, 187)

			board_cards.extend (new_card)

			pos_card_x:=pos_card_x+50

		end

	paint_buy (card:DO_GRAPHIC_CARD; x,y:INTEGER)
		-- Paint a supply bar, that contains a buyable card
		do
			create buy_zone.default_create
			create buy_zone_pixmap
			buy_zone_pixmap.set_with_named_file (Files_path+"buy_stuff\"+card.small_card_name) --cambiar la imagen
			buy_zone.set_background_pixmap (buy_zone_pixmap)
			create card_pixmap_pointer_in
			buy_zone.pointer_enter_actions.extend (agent pointer_enter_card_area("big_cards\"+card.big_card_name))
			buy_zone.pointer_leave_actions.extend (agent pointer_leave_card_area)
			buy_zone.pointer_button_release_actions.extend (agent card.on_click)
			card.set_card_pos_x_y (x, y)
			card.set_buy_pos_x_y(pos_buy_zone_x+150,pos_buy_zone_y+3)
			main_board.extend_with_position_and_size (buy_zone, card.pos_x, card.pos_y, 172, 25)
			refresh_buy_number(card)

		end

	paint_buy_zone(nr_of_each_card:INTEGER; nr_of_each_vp_card:INTEGER)
		-- Paint the buy zone, completely
		local
			card:DO_GRAPHIC_CARD
		do
			pos_buy_zone_x:=215
			pos_buy_zone_y:=20
			create card.make_supply("Chapel",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Oasis",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Village",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_y:=pos_buy_zone_y+30
			pos_buy_zone_x:=215
			create card.make_supply("Woodcutter",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Salvager",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Smithy",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_y:=pos_buy_zone_y+30
			pos_buy_zone_x:=215
			create card.make_supply("Laboratory",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Market",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Stables",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_y:=pos_buy_zone_y+30
			pos_buy_zone_x:=215
			create card.make_supply("Festival",nr_of_each_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_y:=pos_buy_zone_y+30
			pos_buy_zone_x:=215
			create card.make_supply("Copper",45,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Silver",40,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Gold",30,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_y:=pos_buy_zone_y+30
			pos_buy_zone_x:=215
			create card.make_supply("Estate",nr_of_each_vp_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Duchy",nr_of_each_vp_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_x:=pos_buy_zone_x+175
			create card.make_supply("Province",nr_of_each_vp_card,current)
			paint_buy(card,pos_buy_zone_x,pos_buy_zone_y)
			pos_buy_zone_y:=pos_buy_zone_y+30
			pos_buy_zone_x:=215
		end

	refresh_hand (cards: LINKED_LIST[STRING])
		-- paint the cards in your hand
		local
			card:DO_GRAPHIC_CARD
		do
			pos_card_x:= 215
			pos_card_y:= 430
			-- go over the linked_list and add every card
			from
				cards.start
			until
				cards.after
			loop
				create card.make_card (cards.item,current)
				paint_Card (card)
				cards.forth
			end
		end

	refresh_board_cards	(cards: LINKED_LIST[STRING])
		-- paint the played cards
		local
			card:DO_GRAPHIC_CARD
		do

			pos_card_x:= 215
			pos_card_y:= 230
				-- go over the linked_list and add every card
			from
				cards.start
			until
				cards.after
			loop
				create card.make_played (cards.item,current)
				paint_Card (card)
				cards.forth
			end
		end

	refresh_buy_number (card:DO_GRAPHIC_CARD)
		-- Refresh the buys left of a buyable card
		do
			card.create_buy
			main_board.extend_with_position_and_size (card.number_of_buys, card.buy_number_zone_x, card.buy_number_zone_y, 18, 18)
		end

	refresh_oponent_buy (msg: STRING)
		local
			buy_num_zone_x: INTEGER
			buy_num_zone_y: INTEGER
			card_name: STRING
			new_supply_card: DO_GRAPHIC_CARD
			color: EV_COLOR
			num_of_buys: EV_LABEL
		do
			create color.make_with_8_bit_rgb (232, 0, 99)
			create num_of_buys.make_with_text (msg.substring (1, msg.index_of ('/', 1) -1))
			num_of_buys.set_background_color(color)
			card_name:= msg.substring (msg.index_of ('_', 1) +1, msg.count)
			buy_num_zone_x:= msg.substring (msg.index_of ('/', 1) +1, msg.last_index_of ('/', msg.count) -1).to_integer
			buy_num_zone_y:= msg.substring (msg.last_index_of ('/', msg.count) +1, msg.index_of ('-', 1) -1).to_integer
			create new_supply_card.make_supply(card_name,msg.substring (1, msg.index_of ('/', 1) -1).to_integer,current)
			paint_buy(new_supply_card,pos_buy_zone_x,pos_buy_zone_y)
			--paint_buy
		end

	refresh_actions	(actions: NATURAL; buys: NATURAL; coins: NATURAL)
		-- paint the actions left zone
			do
				actions_left.set_text("Actions: "+actions.out)
				buys_left.set_text("Buys: "+buys.out)
				coins_left.set_text("Coins: "+coins.out)
			end

	refresh_log_text
		-- Refresh the log text
		do
			log_text_area.set_text (message_log)
		end

	clean_all
		-- Clean all the board, erasing the hand and board cards
		do
			from
				board_cards.start
			until
				board_cards.off
			loop
				board_cards.item.destroy
				board_cards.forth
			end
		end

	on_update (m:STRING; clicked_card:DO_GRAPHIC_CARD )
		-- Implementation of feature inherited of ABSTRACT_OBSERVER
		-- This method reflects changes of the model to the window.
		local
			actions: NATURAL
			buys: NATURAL
			coins: NATURAL
			i: INTEGER
			hand_cards: LINKED_LIST[STRING]
			aux_card: STRING
			victory_points: STRING
		do
			if (game_reference.is_end_game) then
				victory_points:=game_reference.get_winner
			else
				if (m.item (m.last_index_of ('_', m.count) + 1).is_equal ('N')) or (m.item (m.last_index_of ('_', m.count) + 1).is_equal ('C')) then
					message_log:= message_log + m.substring ((m.index_of ('N', 1)) , m.count) + "%N"
				else
					clean_all
					create hand_cards.make
					create aux_card.make (20)
					from
						i:=1
					until
						i >= m.index_of ('_', 1)
					loop
						aux_card:= m.substring(i, m.index_of (' ', i)-1)
						hand_cards.extend (aux_card)
						i := m.index_of (' ', i)+1
					end
					refresh_hand(hand_cards)
					if (m.item (m.last_index_of ('_', m.count) + 1).is_equal ('A')) then
						Played_cards.extend (clicked_card.card_name)
						print("%N"+Played_cards.item+"%N")
						refresh_board_cards(Played_cards)
						message_log:= message_log + m.substring ((m.index_of ('A', 1)) , m.count) + "%N"
					elseif (m.item (m.last_index_of ('_', m.count) + 1).is_equal ('B')) then
						clicked_card.buy_card
						message_log:= message_log + m.substring ((m.index_of ('B', 1)) , m.count) + "%N"
					end
					actions:= m.substring ((m.index_of ('_', 1) + 1) , (m.index_of ('/', 1) - 1)).to_natural
					buys:= m.substring ((m.index_of ('/', 1) + 1), (m.last_index_of ('/', m.count) - 1)).to_natural
					coins:= m.substring ((m.last_index_of ('/', m.count) + 1), (m.last_index_of ('_', m.count) - 1)).to_natural
					refresh_actions (actions, buys, coins)
					refresh_board_cards(Played_cards)
					if clicked_card/=Void then
						net_message.extend (clicked_card.card_buys.out+"/"+clicked_card.buy_number_zone_x.out+"/"+clicked_card.buy_number_zone_y.out+"-"+game_phase+"_"+clicked_card.card_name)
						print("%N"+clicked_card.card_buys.out+"/"+clicked_card.buy_number_zone_x.out+"/"+clicked_card.buy_number_zone_y.out+"-"+game_phase+"_"+clicked_card.card_name+"%N")
					end
				end
				refresh_log_text
			end
		end

feature {DO_SERVER,DO_CLIENT}	--turn setters

	send_message
		-- Fill and Send the message to the oponent
		do
			create message.make
			from
				net_message.start
			until
				net_message.off
			loop
				if client=Void and server=Void then
					print(net_message.item +" - ")
				end
				message.extend (net_message.item)
				net_message.forth
			end
			if (client/=Void) then
				client.append(message)
			end
			if (server /=Void) then
				server.append(message)
			end
			net_message.wipe_out
		end

	send_turn
		do
			if (server/=Void) then
				server.turn_is_over
			elseif (client/=Void) then
				client.turn_is_over
			end
--			current.disable_sensitive
		end

	recieve_turn(plays: LINKED_LIST[STRING])
		local
			garbage: STRING
		do
			current.enable_sensitive
			refresh_log_text
			if end_first_turn then
				garbage:=game_reference.notifygamestate ("change_player")
				print(garbage)
				on_update(garbage,Void)
			end
			from
				plays.start
			until
				plays.after
			loop
				refresh_oponent_buy(plays.item)
			end
			end_first_turn := True
			--falta implementar
		end

feature {EQA_TEST_SET,DO_GRAPHIC_CARD} -- Implementation / Constants


	Board_title: STRING = "Dominion-Playing"
			-- Title of the window.

	Board_width: INTEGER = 1000
			-- Initial width for this window.

	Board_height: INTEGER = 700
			-- Initial height for this window.

	Main_window: DO_MAIN_WINDOW
			--Reference to the game main window
end
