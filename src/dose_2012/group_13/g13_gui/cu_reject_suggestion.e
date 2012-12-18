note
	description: "Summary description for {CU_REJECT_SUGGESTION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_REJECT_SUGGESTION

inherit
	EV_TITLED_WINDOW

	CU_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end
create
	make
feature

    make-- (a_player: CU_PLAYER)
       		-- Shows cards to reject the suggestion made by a player
        require
--        	min_num_of_cards: a_player.hand.count >= 3
--        	max_num_of_cards: a_player.hand.count <= 6
--        	non_displayed_window: not is_displayed
        do
        	create show_card_button.make_with_text ("Reject")
        	show_card_button.select_actions.extend (agent hide)

			create card_1_button.default_create
			card_1_button.select_actions.extend (agent card_1_button.set_pixmap (set_pixmap(img_card_kitchen)))
			create card_2_button.default_create
			card_2_button.select_actions.extend (agent card_2_button.set_pixmap (set_pixmap(img_card_plum)))
			create card_3_button.default_create
			card_3_button.select_actions.extend (agent card_3_button.set_pixmap (set_pixmap(img_card_knife)))
			create card_4_button.default_create
			create card_5_button.default_create
			create card_6_button.default_create

			create horizontal_separator
        	create con_reject
        	con_reject.extend_with_position_and_size (horizontal_separator, 0, 0, 680, 5)
        	con_reject.extend_with_position_and_size (card_1_button, 100, 50, 227, 364)
        	con_reject.extend_with_position_and_size (card_2_button, 300, 50, 240, 373)
        	con_reject.extend_with_position_and_size (card_3_button, 500, 50, 104, 165)
        	con_reject.extend_with_position_and_size (card_4_button, 100, 250, 100, 100)
        	con_reject.extend_with_position_and_size (card_5_button, 300, 250, 100, 100)
        	con_reject.extend_with_position_and_size (card_6_button, 500, 250, 100, 100)

        	con_reject.extend_with_position_and_size (show_card_button, 300, 415, 80, 40)

        	make_with_title ("Reject Suggestion - Cluedo")
        	set_size (680,500)
        	put (con_reject)
        	disable_user_resize
        ensure
--        	displayed_window: is_displayed
        end
feature {NONE}

	show_card_button: EV_BUTTON
		-- "Show card" button.

	con_reject: EV_FIXED

	card_4: EV_PIXMAP
		-- Represent a fourth card of one player

	card_5: EV_PIXMAP
		-- Represent a fifth card of one player

	card_6: EV_PIXMAP
		-- Represent a sixth card of one player

		-- Button cards
	card_1_button: EV_BUTTON
	card_2_button: EV_BUTTON
	card_3_button: EV_BUTTON
	card_4_button: EV_BUTTON
	card_5_button: EV_BUTTON
	card_6_button: EV_BUTTON

end
