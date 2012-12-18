note
	description: "This contains info about current player like: name, action points, number of cards that can buy, coins."
	author: "Gabriele Fanchini"
	date: "18.11.2012"
	revision: "1.0"

class
	G5_CURRENT_PLAYER_AND_BOARD
inherit
	EV_FIXED

	G5_MAIN_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end


create
	make

feature {G5_MAIN_VIEW, EQA_TEST_SET}-- initialization

	make(main_view: G5_MAIN_VIEW)
		--this is the constructor
		local
			coins_string_version: STRING
			action_string_version: STRING
			buy_string_version: STRING
		do
			-- Initialize variables
			current_player_name := ""
			current_phase := ""
			action_points := 0
			buy_points:=0
			coins:=0

			create played_cards_list.make(0)

			default_create
			create background_image

			-- set the background image
			background_image.set_with_named_file (file_system.pathname_to_string (img_path_background_board))
			set_background_pixmap (background_image)

			-- create a string version of integer variables
			coins_string_version:= ""
			coins_string_version.append_integer (coins)
			action_string_version:= ""
			action_string_version.append_integer (action_points)
			buy_string_version:= ""
			buy_string_version.append_integer (buy_points)


			-- create labels
			create current_player_name_label.make_with_text (current_player_name)
			create current_phase_label.make_with_text (current_phase)
			create coin_label.make_with_text (coins_string_version)
			create action_label.make_with_text (coins_string_version)
			create buy_label.make_with_text (coins_string_version)

			-- create text box
			create text_box.default_create
			text_box.disable_edit
			--text_box.disable_sensitive

			-- set position of label and variable
			current.extend (current_player_name_label)
			set_item_position (current_player_name_label, 126,14)

			current.extend (current_phase_label)
			set_item_position (current_phase_label, 122,38)

			current.extend (coin_label)
			set_item_position (coin_label, 526,14)

			current.extend (action_label)
			set_item_position (action_label, 410,14)

			current.extend (buy_label)
			set_item_position (buy_label, 392,38)

			current.extend_with_position_and_size (text_box, 4, 230, 571, 65)

			-- create and set position of supply button
			create supply_button
			create supply_button_pixmap
			supply_button_pixmap.set_with_named_file (file_system.pathname_to_string (img_path_supply_button))
			supply_button.set_background_pixmap (supply_button_pixmap)
			current.extend_with_position_and_size (supply_button, 578, 5, 120, 141)
			supply_button.pointer_button_release_actions.extend (agent main_view.show_pop_up_supply(?, ?, ?, ?, ?, ?, ?, ?))

			-- create and set position of trash button
			create trash_button
			create trash_button_pixmap
			trash_button_pixmap.set_with_named_file (file_system.pathname_to_string (img_path_trash_button))
			trash_button.set_background_pixmap (trash_button_pixmap)
			current.extend_with_position_and_size (trash_button, 578, 154, 120, 141)
			trash_button.pointer_button_release_actions.extend (agent main_view.show_pop_up_trash(?, ?, ?, ?, ?, ?, ?, ?))
		end


feature {G5_MAIN_VIEW, EQA_TEST_SET} -- Application

	set_current_player_name(a_name: STRING)
		-- this feature sets the name of the current player when a new turn started
		require
			valid_arg: a_name /= void
		do
			current_player_name := a_name
			current_player_name_label.set_text (current_player_name)
		end

	set_current_phase(a_phase: STRING)
		-- this feature sets the name of the current phase
		require
			valid_arg: a_phase /= void
		do
			current_phase := a_phase
			current_phase_label.set_text (current_phase)
		end

	set_action_points(a_value: INTEGER)
		-- this feature sets the number of action_points still available
		require
			valid_arg: a_value >=0
		do
			action_points := a_value
			action_label.set_text (a_value.out)
		end

	set_buy_points(a_value: INTEGER)
		-- this feature sets the number of buy_points still available
		require
			valid_arg: a_value >=0
		do
			buy_points := a_value
			buy_label.set_text (a_value.out)
		end

	set_coins(a_value: INTEGER)
		-- this feature sets the number of coins still available
		require
			valid_arg: a_value >=0
		do
			coins := a_value
			coin_label.set_text (a_value.out)
		end

	set_default()
		-- this feature resets to default turn values
		do
			set_coins(0)
			set_buy_points(1)
			set_action_points(1)
		end

	put_card_in_play(a_card: G5_GUI_CARD)
		-- this is used to put a card in the game
		local
			index_of_last_played_card: INTEGER
		do
			-- put the new played cards in the array
			played_cards_list.force (a_card)
			index_of_last_played_card:= played_cards_list.count

			-- display the new played card
			current.extend (a_card)

			-- sets the position of the new played cards
			if (index_of_last_played_card <= 4) then
				current.set_item_x_position (a_card, (((index_of_last_played_card-1)*128)+32))
				current.set_item_y_position (a_card, 57)
			elseif (index_of_last_played_card <= 8) then
				-- set the correct position
				index_of_last_played_card:= index_of_last_played_card -4
				current.set_item_x_position (a_card, (((index_of_last_played_card-1)*128)+32))
				current.set_item_y_position (a_card, 100)
			elseif (index_of_last_played_card <= 12) then
				-- set the correct position
				index_of_last_played_card:= index_of_last_played_card -8
				current.set_item_x_position (a_card, (((index_of_last_played_card-1)*128+32)))
				current.set_item_y_position (a_card, 143)
			elseif (index_of_last_played_card <= 16) then
				-- set the correct position
				index_of_last_played_card:= index_of_last_played_card -12
				current.set_item_x_position (a_card, (((index_of_last_played_card-1)*128+32)))
				current.set_item_y_position (a_card, 186)
			end
			current.set_item_size (a_card, 113, 42)
		end

	clean_board
		-- clean all played_cards_list from the board and the text box
		local
			i: INTEGER
		do
			from
				i:=1
			until
				i>played_cards_list.count
			loop
				current.prune (played_cards_list[i])
				--played_cards_list.prune (played_cards_list[i])
				i:=i+1
			end

			create played_cards_list.make (0)
			text_box.remove_text
		end

	update_text_box(a_message: STRING)
		-- set a message in the text box
		local
			message: STRING

		do
			if(not(text_box.text.is_empty)) then
				if(text_box.text_length<= 1000) then
					message:= text_box.text
					message.append ("%N")
					message.append (a_message)
					text_box.set_text (message)
				else
					text_box.set_text (a_message)
				end
			else
				text_box.set_text (a_message)
			end
		end

feature {NONE} -- Attributes GUI

	background_image: EV_PIXMAP
		-- the background image of the hand box

	text_box: EV_TEXT
		-- the box that contains test about some actions

	supply_button: EV_FIXED
		-- the button used to show list of supply

	supply_button_pixmap: EV_PIXMAP
		-- images thats will be the button	

	trash_button: EV_FIXED
		-- the button used to show list of trash

	trash_button_pixmap: EV_PIXMAP
		-- images thats will be the button

-- ### Labels

	current_player_name_label: EV_LABEL
		-- The label that displays the name of the current player

	current_phase_label: EV_LABEL
		-- The label that displays the name of the current phase

	coin_label: EV_LABEL
		-- The label that displays the number of coins

	action_label: EV_LABEL
		-- The label that displays the number of actions available

	buy_label: EV_LABEL
		-- The label that displays the number of card that can be bought

-- ### Labels END


feature -- variable

	played_cards_list: ARRAYED_LIST[G5_GUI_CARD]
		-- the list of cards played

	current_player_name: STRING
		-- the name of the current player		

	current_phase: STRING
		-- the name of the current phase

	action_points: INTEGER
		-- the number of actions that the current player can still make this turn

	buy_points: INTEGER
		-- the number of cards that the current player can still buy this turn

	coins: INTEGER
		-- the number of coins available by the current player this turn

end
