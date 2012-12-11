note
	description: "Main window for this application"
	author: "Damian Ojeda, Martin Paulucci, Alejandro Yaciuk"
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

	make_board(window: DO_MAIN_WINDOW; a_client: DO_CLIENT; a_server: DO_SERVER)
	do
		main_window := window
		client:=a_client
		server:=a_server
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
				create board.make_board(Main_window, client, server)
				board.show
				Current.destroy
		end

feature {ANY}  -- Notification, on lose or win the game

	on_lose
		do
		end

	on_win
		do
		end

feature {EQA_TEST_SET} -- Implementation

	main_board: EV_FIXED
			-- Main container (contains all widgets displayed in this window)
	buttons_box: EV_HORIZONTAL_BOX

	build_board
			-- Fill the board with cards, buttons and info
		local
			image: EV_PIXMAP
			buy_button: EV_BUTTON
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

			create buy_button.make_with_text ("Done Buying")
			buy_button.set_minimum_size (150, 40)
			buy_button.select_actions.extend (agent send_message)
			--buy_button.select_actions.extend (agent end_buys)
			--create buttons_box
			--buttons_box.extend (create {EV_CELL}) -- Fill in empty space on left
			--buttons_box.extend (buy_button)
			--buttons_box.disable_item_expand (buy_button)

			main_board.extend_with_position_and_size (buy_button, 10, 500, 150, 40)
			create aux_message.make
			refresh_hand(cards_example)
			refresh_board_cards(cards_example)
			paint_buy_zone(12,15)
			refresh_actions	(1,1,1)
		end

	paint_Card (card:DO_GRAPHIC_CARD)
		do
			create new_card
			create new_card_pixmap
			new_card_pixmap.set_with_named_file (Files_path+"small_cards\"+card.card_name) --cambiar la imagen
			new_card.set_background_pixmap (new_card_pixmap)
			create card_pixmap_pointer_in
			new_card.pointer_enter_actions.extend (agent pointer_enter_card_area("big_cards\"+card.big_card_name))
			new_card.pointer_leave_actions.extend (agent pointer_leave_card_area)
			new_card.pointer_button_release_actions.extend (agent card.on_click)
			main_board.extend_with_position_and_size (new_card, pos_card_x, pos_card_y, 120, 187)
			pos_card_x:=pos_card_x+50
		end

	paint_buy (card:DO_GRAPHIC_CARD; zone:INTEGER)
		--local
		--	back_color: EV_COLOR
		--	number_of_buys: EV_LABEL
		do
			create buy_zone
			create buy_zone_pixmap
			buy_zone_pixmap.set_with_named_file (Files_path+"buy_stuff\"+card.card_name) --cambiar la imagen
			buy_zone.set_background_pixmap (buy_zone_pixmap)

			buy_zone.pointer_enter_actions.extend (agent pointer_enter_card_area("big_cards\"+card.big_card_name))
			buy_zone.pointer_leave_actions.extend (agent pointer_leave_card_area)
			buy_zone.pointer_button_release_actions.extend (agent card.on_click)
			card.set_card_pos_x_y (pos_buy_zone_x, pos_buy_zone_y)
			card.set_buy_pos_x_y(pos_buy_zone_x+150,pos_buy_zone_y+3)
			main_board.extend_with_position_and_size (buy_zone, card.pos_x, card.pos_y, 172, 25)
			refresh_buy_zone(card)
			--main_board.extend_with_position_and_size (number_of_buys, card.buy_number_zone_x, card.buy_number_zone_y, 18, 18)

			pos_buy_zone_x:=pos_buy_zone_x+175
			if (pos_buy_zone_x>700 or zone=1) then
				pos_buy_zone_y:=pos_buy_zone_y+30
				pos_buy_zone_x:=215
			end
		end

	paint_buy_zone(nr_of_each_card:INTEGER; nr_of_each_vp_card:INTEGER)
		local
			card:DO_GRAPHIC_CARD
		do
			pos_buy_zone_x:=215
			pos_buy_zone_y:=20
			create card.make_supply("oasis",nr_of_each_card,current)
			paint_buy(card,0)
			create card.make_supply("village",nr_of_each_card,current)
			paint_buy(card,0)
			create card.make_supply("woodcutter",nr_of_each_card,current)
			paint_buy(card,0)
			create card.make_supply("salvager",nr_of_each_card,current)
			paint_buy(card,0)
			create card.make_supply("smithy",nr_of_each_card,current)
			paint_buy(card,0)
			create card.make_supply("laboratory",nr_of_each_card,current)
			paint_buy(card,0)
			create card.make_supply("market",nr_of_each_card,current)
			paint_buy(card,0)
			create card.make_supply("stables",nr_of_each_card,current)
			paint_buy(card,0)
			create card.make_supply("festival",nr_of_each_card,current)
			paint_buy(card,1)
			create card.make_supply("copper",45,current)
			paint_buy(card,0)
			create card.make_supply("silver",40,current)
			paint_buy(card,0)
			create card.make_supply("gold",30,current)
			paint_buy(card,1)
			create card.make_supply("estate",nr_of_each_vp_card,current)
			paint_buy(card,0)
			create card.make_supply("duchy",nr_of_each_vp_card,current)
			paint_buy(card,0)
			create card.make_supply("province",nr_of_each_vp_card,current)
			paint_buy(card,1)
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

	new_card: EV_FIXED

	new_card_pixmap: EV_PIXMAP

	buy_zone: EV_FIXED

	buy_zone_pixmap: EV_PIXMAP

	image_deck: EV_PIXMAP

	deck_area: EV_FIXED

	card_pixmap_pointer_in: EV_PIXMAP

	build_main_board (p_setting: DO_SETTINGS)
			-- Create and populate `main_container'.
		do
		end

	cards_example:LINKED_LIST[STRING]
	pos_card_x:INTEGER
	pos_card_y:INTEGER
	pos_buy_zone_x:INTEGER
	pos_buy_zone_y:INTEGER

feature {EQA_TEST_SET,DO_GRAPHIC_CARD} -- Methods that print the window.

	refresh_hand (cards: LINKED_LIST[STRING])
		-- paint the cards in your hand
		local
			card:DO_GRAPHIC_CARD
		do
			pos_card_x:= 215
			pos_card_y:= 430
				-- go over the linked_list and add every card
			create card.make_card ("smithy",current)
			paint_Card (card)
			create card.make_card ("oasis",current)
			paint_Card (card)
			create	card.make_card ("market",current)
			paint_Card (card)
			create card.make_card ("salvager",current)
			paint_Card (card)
			create card.make_card ("laboratory",current)
			paint_Card (card)
			create card.make_card ("chapel",current)
			paint_Card (card)
			create card.make_card ("festival",current)
			paint_Card (card)
			create card.make_card ("woodcutter",current)
			paint_Card (card)
			create card.make_card ("stables",current)
			paint_Card (card)
			create card.make_card ("village",current)
			paint_Card (card)
		end

	refresh_board_cards	(cards: LINKED_LIST[STRING])
		-- paint the played cards
		local
			card:DO_GRAPHIC_CARD
		do
			pos_card_x:= 215
			pos_card_y:= 230
				-- go over the linked_list and add every card

			create card.make_card ("copper",current)
			paint_Card (card)
			create card.make_card ("silver",current)
			paint_Card (card)
			create card.make_card ("gold",current)
			paint_Card (card)
			create card.make_card ("platinum",current)
			paint_Card (card)
			create card.make_card ("estate",current)
			paint_Card (card)
			create card.make_card ("duchy",current)
			paint_Card (card)
			create card.make_card ("province",current)
			paint_Card (card)
			create card.make_card ("colony",current)
			paint_Card (card)
		end

	refresh_buy_zone (card:DO_GRAPHIC_CARD)
		do
			card.create_buy
			main_board.extend_with_position_and_size (card.number_of_buys, card.buy_number_zone_x, card.buy_number_zone_y, 18, 18)
		end


	refresh_actions	(actions: NATURAL; buys: NATURAL; coins: NATURAL)
		-- paint the actions left zone
			local
				actions_left: EV_LABEL
				buys_left: EV_LABEL
				coins_left: EV_LABEL
			do
				create actions_left.make_with_text("Actions: "+actions.out)
				create buys_left.make_with_text("Buys: "+buys.out)
				create coins_left.make_with_text("Coins: "+coins.out)
				main_board.extend_with_position_and_size (actions_left, 15, 550, 120, 24)
				main_board.extend_with_position_and_size (buys_left, 15, 570, 120, 24)
				main_board.extend_with_position_and_size (coins_left, 15, 590, 120, 24)
			end

	refresh_oponent_hand (cards: LINKED_LIST[STRING])
		-- paint the cards in your hand
		do
		end

	on_update
		-- Implementation of feature inherited of ABSTRACT_OBSERVER
		-- This method reflects changes of the model to the window.
		do

		end

	send_message
		do
			print("MESSAGE %N")
			create message.make
			from
				aux_message.start
			until
				aux_message.after
			loop
				print(aux_message.item +" - ")
				message.extend (aux_message.item)
				aux_message.forth
			end

			if (client/=Void) then
				client.append(message)
			end
			if (server /=Void) then
				server.append(message)
			end
		end



feature {EQA_TEST_SET,DO_GRAPHIC_CARD} -- Implementation / Constants

	message: DO_OUR_MESSAGE

	aux_message: LINKED_LIST[STRING]

	Board_title: STRING = "Dominion-Playing"
			-- Title of the window.

	Board_width: INTEGER = 1000
			-- Initial width for this window.

	Board_height: INTEGER = 700
			-- Initial height for this window.

	Main_window: DO_MAIN_WINDOW
			--Reference to the game main window

	end_buys(name:STRING)
		do
			--buys_left:=0
		end
end
