note
	description: "Summary description for {CU_REJECT_SUGGESTION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_REJECT_SUGGESTION

inherit
	EV_TITLED_WINDOW
create
	make
feature

    make (a_player: CU_PLAYER)
       		-- Shows cards to reject the suggestion made by a player
        require
        	min_num_of_cards: a_player.hand.count >= 3
        	max_num_of_cards: a_player.hand.count <= 6
        	non_displayed_window: not is_displayed
        do
        ensure
        	displayed_window: is_displayed
        end
feature {NONE}

	show_card_button: EV_BUTTON
		-- "Show card" button.

	card_1: EV_PIXMAP
		-- Represent a first card of one player

	card_2: EV_PIXMAP
		-- Represent a second card of one player

	card_3: EV_PIXMAP
		-- Represent a third card of one player

	card_4: EV_PIXMAP
		-- Represent a fourth card of one player

	card_5: EV_PIXMAP
		-- Represent a fifth card of one player

	card_6: EV_PIXMAP
		-- Represent a sixth card of one player
		
end
