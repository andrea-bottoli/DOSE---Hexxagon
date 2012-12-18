note
	description: "This class displays a pop-up that is invoked when a thief card is played."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_THIEF
inherit
	G5_POP_UP

create
	make_initial_request, make_after_update, make_after_update_gain

feature -- constructor

	make_initial_request(owner_player: STRING; the_revealed_cards: HASH_TABLE[STRING,STRING])
		-- the constructor of the class
		require
			valid_arg: owner_player/= void
			valid__arg: the_revealed_cards/= void
		local
			text_to_display: STRING
			font: EV_FONT
		do
			amount_of_players:= the_revealed_cards.count
			owner_thief_card:= owner_player
			revealed_cards:= the_revealed_cards

			create player_labels.make (0)
			create cards_first_player.make_empty
			create cards_second_player.make_empty
			create cards_third_player.make_empty

			-- create the window
			default_create

			-- initialize the view
			load_view

			-- create the main label
			create text_to_display.make_empty
			text_to_display.append ("Cards revealed:")
			create description_label.make_with_text (text_to_display)
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 300, 30)

			-- add the main container to the pop-up
			put (pop_up_container)

		end


	make_after_update(owner_player: STRING; the_revealed_cards: HASH_TABLE[STRING,STRING])
		-- the constructor of the class
		require
			valid_arg: owner_player/= void
			valid__arg: the_revealed_cards/= void
		local
			text_to_display: STRING
			font: EV_FONT
		do
			amount_of_players:= the_revealed_cards.count
			owner_thief_card:= owner_player
			revealed_cards:= the_revealed_cards

			create player_labels.make (0)
			create cards_first_player.make_empty
			create cards_second_player.make_empty
			create cards_third_player.make_empty

			-- create the window
			default_create

			-- initialize the view
			load_view

			-- create the main label
			create text_to_display.make_empty
			text_to_display.append ("Cards trashed by the current player:")
			create description_label.make_with_text (text_to_display)
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 400, 30)


			-- add the main container to the pop-up
			put (pop_up_container)

		end


	make_after_update_gain(owner_player: STRING; the_revealed_cards: HASH_TABLE[STRING,STRING])
		-- the constructor of the class
		require
			valid_arg: owner_player/= void
			valid__arg: the_revealed_cards/= void
		local
			text_to_display: STRING
			font: EV_FONT
		do
			amount_of_players:= the_revealed_cards.count
			owner_thief_card:= owner_player
			revealed_cards:= the_revealed_cards

			create player_labels.make (0)
			create cards_first_player.make_empty
			create cards_second_player.make_empty
			create cards_third_player.make_empty

			-- create the window
			default_create

			-- initialize the view
			load_view

			-- create the main label
			create text_to_display.make_empty
			text_to_display.append ("Cards gained by the current player:")
			create description_label.make_with_text (text_to_display)
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 400, 30)


			-- add the main container to the pop-up
			put (pop_up_container)

		end


feature {NONE} -- Initialization

	load_view
		-- initializa the container
		local
			temporary_string: STRING
			temporary_label: EV_LABEL
			i: INTEGER
		do
			temporary_string:="Player "
			temporary_string.append (owner_thief_card)
			temporary_string.append (" plays a thief card.")
			current.set_title (temporary_string)

			-- the window should be centered in the screen
			set_x_position ((screen_width // 2) - (800 // 2))
			set_y_position ((screen_height // 2) - (550 // 2))

			-- set the size of the window
			set_height (550)
			set_width (800)
			set_minimum_size (800, 578)

			-- disable user resizing for the window
			disable_user_resize

			create pop_up_container
			create pop_up_container_background
			pop_up_container_background.set_with_named_file (file_system.pathname_to_string (img_pop_up_end_background))
			pop_up_container.set_background_pixmap (pop_up_container_background)

			-- label players and cards
			from
				i:=1
			until
				i > revealed_cards.count
			loop
				--player_labels
				create temporary_label.make_with_text (revealed_cards.current_keys.item (i))
				pop_up_container.extend_with_position_and_size (temporary_label, 184+(169*(i-1)), 130, 70, 18)
				player_labels.force (temporary_label)

				set_cards_of_a_player(i, temporary_label.text)

				i:=i+1

			end
		end


	set_cards_of_a_player(index_of_player: INTEGER; name_of_the_player: STRING)
		local
			i: INTEGER
			a_card: G5_GUI_CARD
			value: STRING
			temporary_list_of_value: LIST[STRING]
		do

			value:= revealed_cards.item (name_of_the_player)
			temporary_list_of_value:= value.split (';')

			from
				i:=1
			until
				i > temporary_list_of_value.count
			loop
				create a_card.make_slim (temporary_list_of_value.at (i), "pop-up")

				a_card.pointer_enter_actions.extend (agent pointer_enter_card(a_card.card_id))
				a_card.pointer_leave_actions.extend (agent pointer_leave_card)

				-- sets dimension of the card and add it to the container
				pop_up_container.extend (a_card)
				pop_up_container.set_item_size (a_card, 132, 135)

				if (index_of_player = 1) then

					cards_first_player.force (a_card, i)
					pop_up_container.set_item_x_position (a_card, (153+(169*(index_of_player-1))))
					pop_up_container.set_item_y_position (a_card, (165+((i-1)*163)))

				elseif (index_of_player = 2) then

					cards_second_player.force (a_card, i)
					pop_up_container.set_item_x_position (a_card, (153+(169*(index_of_player-1))))
					pop_up_container.set_item_y_position (a_card, (165+((i-1)*163)))

				else

					cards_third_player.force (a_card, i)
					pop_up_container.set_item_x_position (a_card, (153+(169*(index_of_player-1))))
					pop_up_container.set_item_y_position (a_card, (165+((i-1)*163)))

				end
				i:=i+1
			end
		end


feature -- variables

	amount_of_players: INTEGER

	cards_first_player: ARRAY[G5_GUI_CARD]

	cards_second_player: ARRAY[G5_GUI_CARD]

	cards_third_player: ARRAY[G5_GUI_CARD]

	player_labels: ARRAYED_LIST[EV_LABEL]
		-- the array that contains label of players

	owner_thief_card: STRING
		-- who played the thief card

	revealed_cards: HASH_TABLE [STRING,STRING]
		-- an hash_table in the form: player name (key) and a string in form (card_ID,card_ID)

end
