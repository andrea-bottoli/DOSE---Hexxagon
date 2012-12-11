note
	description: "The window that allows the user to initialize a new game of Ingenious."
	author: "Emanuele Rudel, Florian Besser"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_START_DIALOG

inherit
	EV_DIALOG
		redefine
			make_with_title,
			initialize,
			show
		end

	IG_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make_with_title

feature {NONE} -- Initiailzation

	make_with_title (a_title: READABLE_STRING_GENERAL)
		do
			Precursor (a_title)
			create host_game_actions
			create abort_host_actions
			create join_game_actions
			create abort_join_actions
			create game_settings
		end

	initialize
			-- Build the interface of the start window
		local
			l_main_layout: EV_VERTICAL_BOX
			l_name_layout: EV_HORIZONTAL_BOX
			l_address_label: EV_LABEL
			l_host_game, l_join_game: EV_FIXED
			l_separator: EV_FIXED
			l_address_request: separate IG_ADDRESS_REQUEST
		do
			Precursor {EV_DIALOG}
			close_request_actions.extend (agent request_close_window)

				-- Start the address request
			create l_address_request
				-- Create layout for inserting name
			create l_name_layout
			l_name_layout.set_padding (10)
			l_name_layout.set_border_width (10)
			create name_text_field.make_with_text ("")
			name_text_field.set_minimum_width (300)
			l_name_layout.extend (label_with_text ("Name:"))
			l_name_layout.extend (name_text_field)

				-- Create view for hosting the game
			create l_host_game
			l_host_game.extend_with_position_and_size (label_with_text ("Total players:"), 14, 20, 90, 24)
			l_host_game.extend_with_position_and_size (label_with_text ("AI players:"), 14, 54, 90, 24)
			l_host_game.extend_with_position_and_size (label_with_text ("Level:"), 198, 54, 60, 24)
			l_host_game.extend_with_position_and_size (label_with_text ("Address:"), 14, 88, 90, 24)
			l_address_label := label_with_text (l_address_request.ip_address)
			l_address_label.align_text_left
				-- Set the color to dark gray
			l_address_label.set_foreground_color (create {EV_COLOR}.make_with_rgb (0.5, 0.5, 0.5))
			l_host_game.extend_with_position_and_size (l_address_label, 110, 88, 170, 24)
				-- Create combo box for choosing the number of players
			create total_players_combo_box.make_with_strings (<<"2", "3", "4">>)
			total_players_combo_box.disable_edit
			l_host_game.extend_with_position_and_size (total_players_combo_box, 114, 20, 80, 24)
				-- Create combo box for choosing the number of computer players
			create computer_players_combo_box.make_with_strings (<<"0", "1", "2", "3">>)
			computer_players_combo_box.disable_edit
			l_host_game.extend_with_position_and_size (computer_players_combo_box, 114, 54, 80, 24)
				-- Create combo box for choosing the computer level
			create computer_level_combo_box.make_with_strings (computer_levels.current_keys)
			computer_level_combo_box.disable_edit
			l_host_game.extend_with_position_and_size (computer_level_combo_box, 272, 54, 110, 24)
				-- Create button for hosting the game
			create host_game_button.make_with_text (host_game_text)
			host_game_button.select_actions.extend (agent click_host_button)
			l_host_game.extend_with_position_and_size (host_game_button, 14, 116, 120, 24)

				-- Create view for joining a game
			create l_join_game
			l_join_game.extend_with_position_and_size (label_with_text ("Address:"), 14, 54, 90, 24)
			create join_address_text_field.make_with_text ("127.0.0.1")
			l_join_game.extend_with_position_and_size (join_address_text_field, 114, 54, 170, 24)
			create join_game_button.make_with_text (join_game_text)
			join_game_button.select_actions.extend (agent click_join_button)
			l_join_game.extend_with_position_and_size (join_game_button, 14, 116, 120, 24)

				-- Create notebook for joining or hosting game
			create notebook
			notebook.extend (l_host_game)
			notebook.extend (l_join_game)
			notebook.set_item_text (l_host_game, host_game_text)
			notebook.set_item_text (l_join_game, join_game_text)
			notebook.set_minimum_height (180)

				-- Create separator
			create l_separator
			l_separator.set_minimum_height (5)
				-- Create status label
			create status_label.make_with_text ("")
			status_label.align_text_left

				-- Create main layout of the dialog
			create l_main_layout
			l_main_layout.set_border_width (14)
			l_main_layout.extend (title_label)
			l_main_layout.extend (l_name_layout)
			l_main_layout.extend (notebook)
			l_main_layout.extend (l_separator)
			l_main_layout.extend (status_label)
			extend (l_main_layout)

				-- Create button for quitting the game
			create quit_game_button.make_with_text (quit_button_text)
			quit_game_button.select_actions.extend (agent request_close_window)
			l_main_layout.extend (quit_game_button)
		end

	label_with_text (a_text: STRING): EV_LABEL
		require
			text_not_empty: a_text /= Void and then not a_text.is_empty
		do
			create Result.make_with_text (a_text)
			Result.align_text_right
		end

feature -- Status Setting

	show
		do
			disable_user_resize
			set_size (430, 200)
			Precursor
		end

feature -- Event Handling

	host_game_actions: ACTION_SEQUENCE[TUPLE[IG_GAME_SETTINGS]]
			-- The list of subscribers notified when the user wants to host a new Ingenious game.

	abort_host_actions: ACTION_SEQUENCE[TUPLE[]]
			-- The list of subscribers notified when the user wants to abort the hosting of a new Ingenious game.

	join_game_actions: ACTION_SEQUENCE[TUPLE[IG_GAME_SETTINGS]]
			-- The list of subscribers notified when the user wants to join an Ingenious game.

	abort_join_actions: ACTION_SEQUENCE[TUPLE[]]
			-- The list of subscribers notified when the user wants to abort the joining of an Ingenious game.

feature {NONE} -- Implementation

	request_close_window
			-- The user wants to close the window
		do
			destroy
		end

	has_valid_input (a_should_host: BOOLEAN): BOOLEAN
			-- Return whether the settings are valid, eiher
			-- for hosting or joining the game, depending on `a_should_host'.
		local
			l_total_players, l_computer_players: INTEGER
		do
			Result := True
			if not name_text_field.text.is_empty then
				Result := Result and True
			else
				Result := False
			end
			if a_should_host then
				l_total_players := total_players_combo_box.selected_item.text.to_integer
				l_computer_players := computer_players_combo_box.selected_item.text.to_integer
				if l_computer_players >= l_total_players then
					Result := False
				end
			else
				Result := Result and game_settings.is_address_valid (join_address_text_field.text)
			end
		end

	click_host_button
		do
			if is_hosting_game then
				is_hosting_game := False
				host_game_button.set_text (host_game_text)

				abort_host_actions.call ([])
				status_label.set_text ("Hosting Cancelled.")
			else
				if has_valid_input (true) then
					is_hosting_game := True
					host_game_button.set_text (cancel_button_title)
					forward_host_settings
				else
					status_label.set_text (invalid_parameters_text)
				end
			end
		end

	click_join_button
		do
			if is_joining_game then
				is_joining_game := False
				join_game_button.set_text (join_game_text)

				abort_join_actions.call ([])
				status_label.set_text ("Joining Cancelled.")
			else
				if has_valid_input (false) then
					is_joining_game := True
					join_game_button.set_text (cancel_button_title)
					forward_join_settings
				else
					status_label.set_text (invalid_parameters_text)
				end
			end
		end

	forward_host_settings
			-- Collect user information from the dialog and fill
			-- the game settings for hosting a game.
			-- Call the `host_game_actions' afterwards.
		do
			game_settings.set_user_name (name_text_field.text)
			game_settings.set_total_players (total_players_combo_box.selected_item.text.to_integer)
			game_settings.set_computer_players (computer_players_combo_box.selected_item.text.to_integer)
			game_settings.set_computer_level (computer_levels.item (computer_level_combo_box.selected_item.text))

			host_game_actions.call ([game_settings])
			status_label.set_text ("Hosting...")
		end

	forward_join_settings
			-- Collect user information from the dialog and fill
			-- the game settings for joining a game.
			--- Call the `join_game_actions' afterwards.
		do
			game_settings.set_user_name (name_text_field.text)
			game_settings.set_host_address (join_address_text_field.text)

			join_game_actions.call ([game_settings])
			status_label.set_text ("Joining...")
		end

	is_hosting_game: BOOLEAN

	is_joining_game: BOOLEAN

feature {NONE} -- GUI Implementation

	game_settings: IG_GAME_SETTINGS

	notebook: EV_NOTEBOOK

	host_game_button, join_game_button, quit_game_button: EV_BUTTON

	name_text_field: EV_TEXT_FIELD

	join_address_text_field: EV_TEXT_FIELD

	total_players_combo_box: EV_COMBO_BOX

	computer_players_combo_box: EV_COMBO_BOX

	computer_level_combo_box: EV_COMBO_BOX

	status_label: EV_LABEL

	title_label: EV_LABEL
		local
			l_font: EV_FONT
		do
			create Result.make_with_text ("Ingenious")
			Result.align_text_center
			create l_font
			l_font.set_height (44)
			Result.set_font (l_font)
		end

invariant

	host_actions_initialized: host_game_actions /= Void
	abort_host_actions_initialized: abort_host_actions /= Void
	join_actions_initialized: join_game_actions /= Void
	abort_join_actions_initialized: abort_join_actions /= Void
	game_settings_initialized: game_settings /= Void

end
