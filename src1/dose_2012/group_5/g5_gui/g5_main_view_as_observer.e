note
	description: "Summary description for {G5_MAIN_VIEW_AS_OBSERVER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_MAIN_VIEW_AS_OBSERVER
inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	G5_GUI_CARDS_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end



create
	make

feature {G5_GUI, EQA_TEST_SET} -- initialization

	make
		do
			--create cards.

			-- Create the main window.
			make_with_title ("Dominion")
		end


	initialize
			-- Build the window
		do
			Precursor {EV_TITLED_WINDOW}
			set_size(1020,725)
			--close_request_actions.extend (agent request_close_window)

			-- create some parts of the main_view
			create main_container

			--close_request_actions.extend (agent request_close_window)
			load_main_container

		end


feature {NONE} -- Initialization

	load_main_container
		-- initialize the container
		do
			main_container.set_background_pixmap (main_view_as_observer_background)

			create current_player_name_label.make_with_text ("")
			create current_phase_label.make_with_text ("")
			create coin_label.make_with_text ("")
			create action_label.make_with_text ("")
			create buy_label.make_with_text ("")
			create deck_label.make_with_text ("")
			create hand_label.make_with_text ("")

			-- create text box
			create text_box.default_create
			text_box.disable_edit
			text_box.disable_sensitive
			--text_box.disable_sensitive

			-- set position of label and variable
			main_container.extend (current_player_name_label)
			main_container.set_item_position (current_player_name_label, 140,18)

			main_container.extend (current_phase_label)
			main_container.set_item_position (current_phase_label, 470,18)

			main_container.extend (coin_label)
			main_container.set_item_position (coin_label, 980,18)

			main_container.extend (action_label)
			main_container.set_item_position (action_label, 720,18)

			main_container.extend (buy_label)
			main_container.set_item_position (buy_label, 860,18)

			main_container.extend (deck_label)
			main_container.set_item_position (deck_label, 860,18)

			main_container.extend (hand_label)
			main_container.set_item_position (hand_label, 860,18)

			main_container.extend_with_position_and_size (text_box, 25, 630, 893, 86)


			-- add the main_container to the window
			put(main_container)

		end

feature {G5_IGUI_TO_NET} -- Application

	set_current_player(a_name: STRING)
		-- set the label with the current player name
		do
			current.lock_update
			current_player_name_label.set_text (a_name)
			current.unlock_update
		end

	set_current_phase(a_phase: STRING)
		-- set the label with the current phase
		do
			current.lock_update
			current_phase_label.set_text (a_phase)
			current.unlock_update
		end

	set_action_points(a_value: INTEGER)
		-- set the label with the action points of the current player
		do
			current.lock_update
			action_label.set_text (a_value.out)
			current.unlock_update
		end

	set_buy_points(a_value: INTEGER)
		-- set the label with the buy points of the current player
		do
			current.lock_update
			buy_label.set_text (a_value.out)
			current.unlock_update
		end

	set_coin(a_value: INTEGER)
		-- set the label with coins of the current player
		do
			current.lock_update
			coin_label.set_text (a_value.out)
			current.unlock_update
		end

	set_deck(a_value: INTEGER)
		-- set the label with number of cards in the deck
		do
			current.lock_update
			deck_label.set_text (a_value.out)
			current.unlock_update
		end

	set_hand(a_value: INTEGER)
		-- set the label with number of cards in the hand
		do
			current.lock_update
			hand_label.set_text (a_value.out)
			current.unlock_update
		end

	set_text_box(a_message: STRING)
		-- set the text box message
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
				current.lock_update
				text_box.set_text (a_message)
				current.unlock_update
			end
		end

	add_played_card(a_card_id: STRING)
		-- add a cards to the view
		local
			a_card: EV_FIXED
			a_card_image: EV_PIXMAP
			i: INTEGER
			temporary_cards: ARRAYED_LIST[EV_FIXED]
			path_name: STRING
		do
			create a_card
			create a_card_image

			-- create pixmap and add this ti the card
			path_name:= file_system.pathname_to_string (img_path_observer)
			path_name.append_string ("\")
			path_name.append_string (a_card_id)
			path_name.append_string (".png")

			a_card_image.set_with_named_file (path_name)
			a_card.set_background_pixmap (a_card_image)

			-- add cards to the list
			cards.force (a_card)

			-- remove first cards if capacity is ended
			if (cards.count <=10) then
				create temporary_cards.make (0)
				from
					i:=6
				until
					i>cards.count
				loop
					temporary_cards.force (cards[i])
				end

				cards:= temporary_cards
			end

			-- set position of cards
			if(cards.count<=5) then
				current.lock_update
				main_container.extend_with_position_and_size (a_card, 25+((cards.count-1)*198), 45, 178, 284)
				current.unlock_update
			else
				current.lock_update
				main_container.extend_with_position_and_size (a_card, 25+((cards.count-6)*198), 45+(296), 178, 284)
				current.unlock_update
			end


		end


feature {NONE} -- Attributes

	main_container: EV_FIXED
		-- the container that contains all the element

	main_view_as_observer_background: EV_PIXMAP
		-- returns the background of the menu as a pixmap
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (img_background_main_view_as_observer))
		end

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

	deck_label: EV_LABEL
		-- The label that displays the number of card in the deck of the current player

	hand_label: EV_LABEL
		-- The label that displays the number of card in the hand of the current player

-- ### Labels END

	text_box: EV_TEXT
		-- the box that contains test about some actions

	cards: ARRAYED_LIST[EV_FIXED]
		-- the list of played_cards

end
