note
	description: "After reading the filename, I have no idea what this class can do. - said no one ever"
	author: "Debrecen1"
	date: "01.12.2012"
	revision: "$Revision$"

class
	ZB_GAME_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize,
			show,
			is_in_default_state
		end

	ZB_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

	EV_STOCK_COLORS
		rename
			implementation as stock_colors_imp
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Initialization

	make(a_lobby_window: ZB_LOBBY_WINDOW)
			-- Creation procedure
		do
			make_with_title (window_title)
		end


	is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
		do
			Result := True
		end

	initialize
			-- Build the window
	--	do
	--		Precursor {EV_TITLED_WINDOW}

	--		close_request_actions.extend (agent request_close_window)

			-- create the main container and put it on the window
	--		create main_panel
	--		main_panel.set_background_pixmap (pix_play_window_background)
		local
			internal_pixmap: EV_PIXMAP
		do
			Precursor {EV_TITLED_WINDOW}

			create internal_pixmap

			create_interface_object

				-- Build widget structure.
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (player_info)
			player_info.extend (all_players)
			all_players.extend (tx_player1)
			all_players.extend (tx_player2)
			all_players.extend (tx_player3)
			all_players.extend (tx_player4)
			player_info.extend (chat_and_eventcards)
			chat_and_eventcards.extend (tx_chat)
			chat_and_eventcards.extend (lb_event_cards)
			l_ev_vertical_box_1.extend (game_area)
			game_area.extend (phase_info_box)
			phase_info_box.extend (lb_phase)
			phase_info_box.extend (lb_counter)
			game_area.extend (da_game_area)
			l_ev_vertical_box_1.extend (hud)
			hud.extend (healt)
			hud.extend (ammo)
			hud.extend (killed_zombies)
			hud.extend (card_information)
			hud.extend (btn_end_turn)
			hud.extend (btn_roll_dice)

			tx_player1.set_text ("player1")
			tx_player1.set_minimum_width (1)
			tx_player1.set_minimum_height (1)
			tx_player1.disable_edit
			tx_player2.set_text ("player2")
			tx_player2.set_minimum_width (1)
			tx_player2.set_minimum_height (1)
			tx_player2.disable_edit
			tx_player3.set_text ("player3")
			tx_player3.set_minimum_width (1)
			tx_player3.set_minimum_height (1)
			tx_player3.disable_edit
			tx_player4.set_text ("player4")
			tx_player4.set_minimum_width (1)
			tx_player4.set_minimum_height (1)
			tx_player4.disable_edit
			tx_chat.set_text ("chat window%N")
			tx_chat.set_minimum_height (60)
			lb_event_cards.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 190, 108))
			lb_event_cards.set_text ("event cards")
			lb_phase.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (46, 155, 180))
			lb_phase.set_text ("phase")
			lb_phase.set_minimum_width (50)
			lb_phase.set_minimum_height (400)
			lb_phase.align_text_left
			lb_counter.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (80, 246, 54))
			lb_counter.set_text ("counter")
			da_game_area.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (182, 238, 117))
			da_game_area.set_text ("game area. You can place the tiles here.")
			da_game_area.set_minimum_width (1100)
			da_game_area.set_minimum_height (750)
			hud.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (252, 238, 85))
			hud.set_minimum_height (15)
			healt.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (252, 238, 85))
			healt.set_text ("hp")
			healt.set_minimum_height (2)
			ammo.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (252, 238, 85))
			ammo.set_text ("ammo")
			ammo.set_minimum_height (2)
			killed_zombies.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (252, 238, 85))
			killed_zombies.set_text ("killed zombies")
			killed_zombies.set_minimum_width (1)
			killed_zombies.set_minimum_height (2)
			card_information.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (252, 238, 85))
			card_information.set_text ("card info")
			card_information.set_minimum_height (2)
			btn_end_turn.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (252, 238, 85))
			btn_end_turn.set_text ("end_turn")
			btn_end_turn.set_minimum_width (40)
			btn_end_turn.set_minimum_height (2)
			btn_roll_dice.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (252, 238, 85))
			btn_roll_dice.set_text ("roll dice")
			btn_roll_dice.set_minimum_width (40)
			btn_roll_dice.set_minimum_height (2)
			set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (179, 179, 179))
			set_minimum_width (1200)
			set_minimum_height (900)
			disable_user_resize
			set_maximum_width (1200)
			set_maximum_height (900)
			set_title ("ZOMBIES!!!")

			set_background_pixmap (internal_pixmap)

		--	set_all_attributes_using_constants

				-- Connect events.
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.
			close_request_actions.extend (agent destroy_and_exit_if_last)

				-- Call `user_initialization'.
		--	user_initialization
		end

	create_interface_object
			-- Create objects
		do

				-- Create all widgets.
			create l_ev_vertical_box_1
			create player_info
			create all_players
			create tx_player1
			create tx_player2
			create tx_player3
			create tx_player4
			create chat_and_eventcards
			create tx_chat
			create lb_event_cards
			create game_area
			create phase_info_box
			create lb_phase
			create lb_counter
			create da_game_area
			create hud
			create healt
			create ammo
			create killed_zombies
			create card_information
			create btn_end_turn
			create btn_roll_dice

		--	create string_constant_set_procedures.make (10)
		--	create string_constant_retrieval_functions.make (10)
		--	create integer_constant_set_procedures.make (10)
		--	create integer_constant_retrieval_functions.make (10)
		--	create pixmap_constant_set_procedures.make (10)
		--	create pixmap_constant_retrieval_functions.make (10)
		--	create integer_interval_constant_retrieval_functions.make (10)
		--	create integer_interval_constant_set_procedures.make (10)
		--	create font_constant_set_procedures.make (10)
		--	create font_constant_retrieval_functions.make (10)
		--	create pixmap_constant_retrieval_functions.make (10)
		--	create color_constant_set_procedures.make (10)
		--	create color_constant_retrieval_functions.make (10)
			--user_create_interface_objects
		end


feature {ANY}	-- Initialization or whatever
	show
		do
			disable_user_resize

			-- these are horrible hacks, but I can't find anything better
			-- actually, I can't find anything...

			set_size (880, 580)
			Precursor
			set_size (880 + (width - client_width), 580 + (height - client_height))

			-- TODO: place the window at the center of the screen
		end

feature --variables

	main_panel: EV_FIXED

	pix_play_window_background: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_play_window_background))
		end


	player_info, all_players, game_area, hud: EV_HORIZONTAL_BOX
	tx_player1, tx_player2, tx_player3: EV_RICH_TEXT
	tx_player4,
	tx_chat: EV_TEXT
	chat_and_eventcards, phase_info_box: EV_VERTICAL_BOX
	lb_event_cards, lb_phase, lb_counter,
	da_game_area, healt, ammo, killed_zombies, card_information: EV_LABEL
	btn_end_turn, btn_roll_dice: EV_BUTTON
	l_ev_vertical_box_1: EV_VERTICAL_BOX

end
