note
	description: "Summary description for {DO_SETTINGS}."
	author: "Team Rio Cuarto 9"
	date: "13/11/2011"
	revision: "$Revision$"

class
	DO_SETTINGS

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

	EXECUTION_ENVIRONMENT
		rename
			put as put_exec
        undefine
            default_create,
            copy
        end

create
	make_setting

feature {ANY} -- Initialization

	make_setting(new_game, join_game :BOOLEAN ; cards: LINKED_LIST[INTEGER])
			-- Initialization for `Current'.
		do
			set_is_new_game(new_game)
			set_is_join_game(join_game)
			default_create
		end


	initialize
    -- Build the interface for this window.
    do
    	Precursor {EV_TITLED_WINDOW}
		--Create the main container
        build_setting_default
        extend (setting)

        -- Execute `request_close_window' when the user clicks
        -- on the cross in the title bar.
        close_request_actions.extend (agent request_close_window)

		-- Set the title of the window
        set_title (Setting_title)

		-- Set the initial size of the window
        set_size (Setting_width, Setting_height)

		-- The user can't resize the window, it's predefined
        disable_user_resize
	end

feature -- Status report

	is_in_default_state: BOOLEAN
    -- Is the window in its default state
    do
    	Result := ( (Setting_title.is_equal("Dominion-Settings")) and (Setting_width=750) and (Setting_height=507))
    end

feature {ANY} -- Implementation, Close event

	request_close_window
	require
		not_destroyed: not is_destroyed
    do
    	destroy
    ensure
    	destroyed: is_destroyed
	end

feature {EQA_TEST_SET} -- Implementation

	setting: EV_FIXED
    -- Main container (contains all widgets displayed in this window)
	build_setting_default
    -- Create and populate `default_main_container'.
    local
		image: EV_PIXMAP
		button_ok: EV_PIXMAP
		button_ok_in: EV_PIXMAP
		button_back: EV_PIXMAP
		buttons_box: EV_HORIZONTAL_BOX
		right_vertical_box: EV_VERTICAL_BOX
    	buttons_box2: EV_HORIZONTAL_BOX
		right_vertical_box2: EV_VERTICAL_BOX
    do
		create setting
        create image.default_create
		create button_ok.default_create
		create button_back.default_create
        button_back.set_with_named_file(Files_path+"game_buttons/button_back.png")

        --create button ok
        create ok_button.make_with_text ("")
		create buttons_box
		buttons_box.extend (create {EV_CELL}) -- Fill in empty space on left
		buttons_box.extend (ok_button)
		buttons_box.disable_item_expand (ok_button)

		create right_vertical_box
		right_vertical_box.set_padding (7)
		right_vertical_box.extend (buttons_box)
		right_vertical_box.disable_item_expand (buttons_box)

        --create button back
		create back_button.make_with_text ("")
		back_button.set_minimum_size (128, 73)
		back_button.set_pixmap (button_back)
		back_button.select_actions.extend (agent destroy)

		create buttons_box2
		buttons_box2.extend (create {EV_CELL}) -- Fill in empty space on left
		buttons_box2.extend (back_button)
		buttons_box2.disable_item_expand (back_button)

		create right_vertical_box2
		right_vertical_box2.set_padding (6)
		right_vertical_box2.extend (buttons_box2)
		right_vertical_box2.disable_item_expand (buttons_box2)

        create name_field.make_with_text ("Player 1")

		create port_field.make_with_text ("2000")

        if (is_join_game) then
			image.set_with_named_file(Files_path+"wallpapers/join_map.png")
			button_ok.set_with_named_file(Files_path+"game_buttons/button_connect.png")
			ok_button.set_minimum_size (164, 57)
			ok_button.select_actions.extend (agent set_join_game)
        	name_field.set_text ("Player 2")

        	create ip_field.make_with_text ("127.0.0.1")

        	setting.extend_with_position_and_size (right_vertical_box, 447, 411, 164, 57)
        	setting.extend_with_position_and_size (port_field, 410, 224, 150, 24)
        	setting.extend_with_position_and_size (ip_field, 29, 224, 150, 24)
        else
			image.set_with_named_file(Files_path+"wallpapers/new_map.png")
        	button_ok.set_with_named_file(Files_path+"game_buttons/button_ok.png")
        	ok_button.set_minimum_size (122, 68)
        	ok_button.select_actions.extend (agent set_and_validate_board)

        	create players_button.make_with_strings (<<"2", "3", "4">>)
			players_button.disable_edit
			--Delete the next line to allow more than 2 players (not implemented yet)
--			players_button.disable_sensitive

			create kingdom_cards_button.make_with_strings (<<"10", "11", "12">>)
			kingdom_cards_button.disable_edit
			--Delete the next line to allow more than 10 kingdoms cards (not implemented yet)
			kingdom_cards_button.disable_sensitive

			create piles_to_exhaust_button.make_with_strings (<<"3", "4", "5", "6", "7", "8", "9", "10">>)
			piles_to_exhaust_button.disable_edit

			create nro_of_each_card_button.make_with_strings (<<"10", "11", "12", "13", "14">>)
			nro_of_each_card_button.disable_edit

			create nro_of_each_vp_button.make_with_strings (<<"8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18">>)
			nro_of_each_vp_button.disable_edit

			create difficulty_button.make_with_strings (<<"1 - Easy", "2 - Medium", "3 - Hard">>)
			difficulty_button.disable_edit

			if(is_new_game) then
				port_field.disable_edit
			else
				difficulty_button.disable_sensitive
			end

			--Add button
			setting.extend_with_position_and_size (right_vertical_box, 447, 411, 122, 68)
			setting.extend_with_position_and_size (players_button, 645, 39, 80, 24)
			setting.extend_with_position_and_size (kingdom_cards_button, 645, 104, 80, 24)
			setting.extend_with_position_and_size (piles_to_exhaust_button, 645, 172, 80, 24)
			setting.extend_with_position_and_size (nro_of_each_card_button, 645, 239, 80, 24)
			setting.extend_with_position_and_size (nro_of_each_vp_button, 645, 315, 80, 24)
			setting.extend_with_position_and_size (difficulty_button, 36, 193, 80, 24)
			setting.extend_with_position_and_size (port_field, 36, 307, 150, 24)
        end

        setting.set_background_pixmap(image)
		ok_button.set_pixmap (button_ok)

		--Add buttons
		setting.extend_with_position_and_size (right_vertical_box2, 97, 414, 128, 73)
		setting.extend_with_position_and_size (name_field, 36, 72, 150, 24)

		--Pediente damian
		--create button_ok_in.default_create
        --button_ok_in.set_with_named_file(Files_path+"game_buttons/button_ok_white.png")
        --create ok_area
		--ok_area.pointer_enter_actions.extend (agent pointer_area(ok_area, button_ok_in))
		--ok_area.pointer_leave_actions.extend (agent pointer_area(ok_area, button_ok))
		--setting.extend_with_position_and_size (ok_area, 447, 411, 128, 73)
	end

	error (messaje: STRING)
		local
				name_empty: EV_INFORMATION_DIALOG
		do
			create name_empty.make_with_text (messaje)
			name_empty.set_title ("ERROR")
			name_empty.disable_border
			name_empty.show
		end

	-- the pointer is entering the area used as a button
	pointer_area (area: EV_FIXED; image: EV_PIXMAP)
		do
			area.set_background_pixmap (image)
		end


	set_join_game
		do
			if (name_field.text.is_empty or port_field.text.is_empty or ip_field.text.is_empty) then
				if (name_field.text.is_empty) then
					error("Name is empty")
				end
				if (port_field.text.is_empty) then
					error("Port is empty")
				end
				if (ip_field.text.is_empty) then
					error("Ip is empty")
				end
			else
				set_setting_join
				connect
			end
		end

	connect
		do
			create client.make(get_ip(),get_port,name)
			create_board
		ensure
			client.connected
		end

	set_and_validate_board
		do
			if (name_field.text.is_empty or port_field.text.is_empty or not valid_port(port_field.text)) then
				if (name_field.text.is_empty) then
					error("Name is empty")
				end
				if (not is_new_game) then
					if (port_field.text.is_empty) then
						error("Port is empty")
					end
					if (not valid_port(port_field.text)) then
						error("Invalid port")
					end
				end
			else
				set_setting
				create_board
			end
		end

	create_board
		do
			if (board /= Void) then
				board.destroy
			end
			create game.play_game(players)
			if (not is_new_game and not is_join_game) then
				create server.make(port,game, Current,players, name)
			end
			if (is_join_game) then
				create board.make_board(window, client, Void, game)
			else
				create board.make_board(window, Void, server, game)
			end
			window.minimize
			board.show
			destroy
			if server/=Void then
				server.others_turn
			end
		end

feature {ANY} --implementation

	available_cards : LINKED_LIST[INTEGER]

	players : INTEGER

	kingdom_cards : INTEGER

	piles_to_exhaust : INTEGER

	nro_of_each_card : INTEGER

	nro_of_each_vp : INTEGER

	name: STRING

	ip: STRING

	port: INTEGER

	difficulty: INTEGER

	is_new_game: BOOLEAN

	is_join_game: BOOLEAN

	server: DO_SERVER

	client: DO_CLIENT

	game: DO_GAME

feature -- Status report

	min_players : INTEGER = 2
	max_players : INTEGER = 4
	min_kingdom_cards : INTEGER = 10
	max_kingdom_cards : INTEGER = 12
	min_piles_to_exhaust : INTEGER = 3
	max_piles_to_exhaust : INTEGER = 10
	min_nro_of_each_card : INTEGER = 10
	max_nro_of_each_card : INTEGER = 14
	min_nro_of_each_vp : INTEGER = 8
	max_nro_of_each_vp : INTEGER = 18

	valid_number_of_players(m : INTEGER) : BOOLEAN
		do
			Result := m >= min_players and m <= max_players
		end

	valid_number_of_kingdom_cards(m : INTEGER) : BOOLEAN
		do
			Result := m>=min_kingdom_cards and m<=max_kingdom_cards
		end

	valid_number_of_piles_to_exhaust(m : INTEGER) : BOOLEAN
		do
			Result := m>=min_piles_to_exhaust and  m<=max_piles_to_exhaust
		end

	valid_number_of_nro_of_each_card(m : INTEGER) : BOOLEAN
		do
			Result := m>=min_nro_of_each_card and  m<=max_nro_of_each_card
		end

	valid_number_of_nro_of_each_vp(m : INTEGER) : BOOLEAN
		do
			Result := m>=min_nro_of_each_vp and  m<=max_nro_of_each_vp
		end

	valid_port(new_port :STRING): BOOLEAN
		local
			port_aux: INTEGER
		do
			if(new_port.is_integer)then
				port_aux:= new_port.to_integer
				Result := ((port_aux >= 2000) and (port_aux <= 6000))
			else
				Result:= False
			end
		end

feature -- Status setting

	set_players(new_nr_of_players : INTEGER)
		require
			valid_number_of_players(new_nr_of_players)
		do
			players := new_nr_of_players
		ensure
			players = new_nr_of_players
		end

	set_kingdom_cards(new_nr_of_kingdom_cards : INTEGER)
		require
			valid_number_of_kingdom_cards(new_nr_of_kingdom_cards)
		do
			kingdom_cards := new_nr_of_kingdom_cards
		ensure
			kingdom_cards = new_nr_of_kingdom_cards
		end

	set_piles_to_exhaust(new_nr_of_piles_to_exhaust : INTEGER)
		require
			valid_number_of_piles_to_exhaust(new_nr_of_piles_to_exhaust)
		do
			piles_to_exhaust := new_nr_of_piles_to_exhaust
		ensure
			piles_to_exhaust = new_nr_of_piles_to_exhaust
		end

	set_nro_of_each_card(new_nr_of_nro_of_each_card : INTEGER)
		require
			valid_number_of_nro_of_each_card(new_nr_of_nro_of_each_card)
		do
			nro_of_each_card := new_nr_of_nro_of_each_card
		ensure
			nro_of_each_card = new_nr_of_nro_of_each_card
		end

	set_nro_of_each_vp(new_nr_of_nro_of_each_vp : INTEGER)
		require
			valid_number_of_nro_of_each_vp(new_nr_of_nro_of_each_vp)
		do
			nro_of_each_vp := new_nr_of_nro_of_each_vp
		ensure
			nro_of_each_vp = new_nr_of_nro_of_each_vp
		end

	set_window(main_window: DO_MAIN_WINDOW)
		do
			window:=main_window
		end

	set_name(new_name: STRING)
		do
			name:= new_name
		end

	set_port(new_port: STRING)
		do
			port:= new_port.to_integer
		end

	set_difficulty(new_difficulty: INTEGER)
		do
			difficulty:= new_difficulty
		end

	set_is_new_game(nG: BOOLEAN)
		do
			is_new_game:= nG
		end

	set_is_join_game(jG: BOOLEAN)
		do
			is_join_game:= jG
		end

	set_ip(new_ip: STRING)
		do
			ip:= new_ip
		end

feature -- Status getting

	get_players(): INTEGER
		do
			Result :=players
		end

	get_kingdom_cards(): INTEGER
		do
			Result:= kingdom_cards
		end

	get_piles_to_exhaust(): INTEGER
		do
			Result:= piles_to_exhaust
		end

	get_nro_of_each_card(): INTEGER
		do
			Result:= nro_of_each_card
		end

	get_nro_of_each_vp(): INTEGER
		do
			Result:= nro_of_each_vp
		end

	get_name(): STRING
		do
			Result:= name
		end

	get_port(): INTEGER
		do
			Result:= port
		end

	get_difficulty(): INTEGER
		do
			Result:= difficulty
		end

	get_ip(): STRING
		do
			Result:= ip
		end

feature -- for setting

	set_setting
		do
			set_name (name_field.text)
			set_port (port_field.text)
			set_difficulty(difficulty_button.text.substring (1,1).to_integer)
			set_players(players_button.selected_item.text.to_integer)
			set_kingdom_cards(kingdom_cards_button.selected_item.text.to_integer)
			set_piles_to_exhaust(piles_to_exhaust_button.selected_item.text.to_integer)
			set_nro_of_each_card(nro_of_each_card_button.selected_item.text.to_integer)
			set_nro_of_each_vp(nro_of_each_vp_button.selected_item.text.to_integer)
		end

	set_setting_join
		do
			set_name (name_field.text)
			set_ip(ip_field.text)
			set_port (port_field.text)
		end

feature {EQA_TEST_SET} -- Implementation / Constants
	Setting_title: STRING = "Dominion-Settings"
	-- Title of the window.

	Setting_width: INTEGER = 750
	-- Initial width for this window.

	Setting_height: INTEGER = 507
	-- Initial height for this window.

	-- the OK button
	ok_button: EV_BUTTON

	-- the Back button
	back_button: EV_BUTTON

	--reference to the main window
	window: DO_MAIN_WINDOW

	--the board to be created
	board: DO_BOARD

	-- selector buttons
	players_button: EV_COMBO_BOX
	kingdom_cards_button: EV_COMBO_BOX
	piles_to_exhaust_button: EV_COMBO_BOX
	nro_of_each_card_button: EV_COMBO_BOX
	nro_of_each_vp_button: EV_COMBO_BOX
	difficulty_button: EV_COMBO_BOX
	name_field: EV_TEXT_FIELD
	port_field: EV_TEXT_FIELD

	--Area
	ok_area: EV_FIXED
	back_area: EV_FIXED

	--Join game button
	ip_field : EV_TEXT_FIELD

end
