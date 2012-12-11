note
	description: "This class will contains info about one player info."
	author: "Gabriele Fanchini"
	date: "18.11.2012"
	revision: "1.1"

class
	G5_PLAYER_INFO
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

feature -- initialization

	make(my_name: STRING; position_player_id: STRING; zoom_box: G5_ZOOMED_CARD_BOX)
		-- This will set the name of the player
		require
			valid_arg: my_name /= void
		local
			path_name: STRING
		do
			player_name := my_name
			zoomed_card_box:= zoom_box
			number_of_cards_deck:= 10
			number_of_cards_hand:= 5
			top_card_discard_pile:= "NONE"

			default_create

			create player_info_background

			-- chose the correct background for the player position ID
			path_name:= file_system.pathname_to_string (img_player_info)
			path_name.append_string (position_player_id)
			path_name.append_string (".png")
			player_info_background.set_with_named_file (path_name)
			set_background_pixmap (player_info_background)


			-- add area top discard pile
			create top_discard
			create top_discard_pixmap

			-- chose the correct button for the player position ID
			path_name:= file_system.pathname_to_string (img_top_discard_info)
			path_name.append_string (position_player_id)
			path_name.append_string (".png")
			top_discard_pixmap.set_with_named_file (path_name)
			top_discard.set_background_pixmap (top_discard_pixmap)
			top_discard.pointer_enter_actions.extend (agent pointer_enter_area)
			top_discard.pointer_leave_actions.extend (agent pointer_leave_area)

			-- set the correct position of the top card of the discard pile
			if (position_player_id.is_equal("me")) then
				extend_with_position_and_size (top_discard, 104, 41, 107, 134)
			else
				extend_with_position_and_size (top_discard, 100, 50, 110, 134)
			end

			-- call to initiliaze label
			initialize_info(position_player_id)
		end


		initialize_info(position_id: STRING)
			-- initialize label field
			do
				-- creation of label
				create name_label.make_with_text (player_name)
				create deck_label.make_with_text (number_of_cards_deck.out)
				create hand_label.make_with_text (number_of_cards_hand.out)

				-- set the position of label
				if (position_id.is_equal("me")) then
					extend (name_label)
					set_item_position (name_label, 70,12)
					extend (deck_label)
					set_item_position (deck_label, 70,68)
					extend (hand_label)
					set_item_position (hand_label, 70,122)

				elseif (position_id.is_equal("1")) then
					extend (name_label)
					set_item_position (name_label, 70,14)
					extend (deck_label)
					set_item_position (deck_label, 70,70)
					extend (hand_label)
					set_item_position (hand_label, 70,124)

				else
					extend (name_label)
					set_item_position (name_label, 70,14)
					extend (deck_label)
					set_item_position (deck_label, 70,70)
					extend (hand_label)
					set_item_position (hand_label, 70,124)
				end

			end

feature {G5_MAIN_VIEW} -- update info

	set_number_of_cards_deck(a_value:INTEGER)
		-- sets the number of card in the deck of this player
		require
			valid_arg: a_value >=0
		do
			number_of_cards_deck := a_value
			deck_label.set_text (a_value.out)
		end

	set_number_of_cards_hand(a_value:INTEGER)
		-- sets the number of card in the hand of this player
		require
			valid_arg: a_value >=0
		do
			number_of_cards_hand:= a_value
			hand_label.set_text (a_value.out)
		end

	set_top_card_discard_pile(a_card: STRING)
		-- sets the ID of the top card of the discard pile
		require
			valid_arg: a_card/=void
		do
			top_card_discard_pile := a_card
		end

	player_disconnected
		-- this feature reset the state of the PLAYER in casa of disconnection
		do
			player_name:= "DISCONNECTED"
			name_label.set_text (player_name)

			top_card_discard_pile := "NONE"

			number_of_cards_hand:= 0
			hand_label.set_text ("X")

			number_of_cards_deck := 0
			deck_label.set_text ("X")

		end

feature {NONE} -- Implementation

	pointer_enter_area
		-- the pointer is entering the area of top card discard pile
		do
			zoomed_card_box.set_zoomed_card(top_card_discard_pile)
		end

	pointer_leave_area
		-- the pointer is leaving the area of top card discard pile
		do
			zoomed_card_box.set_default_zoomed_card
		end


feature {NONE} -- ATTRIBUTES

	player_info_background: EV_PIXMAP
		-- the background image of the container

	top_discard: EV_FIXED
		-- the area which display in zoomed card the top card in the discard pile
	top_discard_pixmap: EV_PIXMAP

	zoomed_card_box: G5_ZOOMED_CARD_BOX
		-- the reference to the zoomed card box

-- ### label

	name_label: EV_LABEL
		-- text label that display the name of the player

	deck_label: EV_LABEL
		-- text label that display the number of cards that remains in the deck

	hand_label: EV_LABEL
		-- text label that display the number of cards in the hand of the player

	top_card_discard_pile: STRING
		-- The top card of the discard pile		


-- ### label END


feature -- Variable

	player_name: STRING
		-- The name that i used to register myself during the connection to the server

	number_of_cards_deck: INTEGER
		-- The number of cards in the deck

	number_of_cards_hand: INTEGER
		-- the number of cards in the hand of this player

end
