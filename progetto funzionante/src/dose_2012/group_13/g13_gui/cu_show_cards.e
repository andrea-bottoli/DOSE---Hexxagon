note
	description: "Summary description for {CU_SHOW_CARDS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SHOW_CARDS

inherit
	CU_WINDOWS

create
	make

feature
	make (a_player: CU_PLAYER)
			-- Displays the window with the cards of one player
		require
			min_num_of_cards: a_player.hand.count >= 3
			max_num_of_cards: a_player.hand.count <= 6
			not_window_displayed:  not is_displayed
		do
		ensure
			window_is_displayed: is_displayed
		end

feature {NONE}

	accept_button: EV_BUTTON
		-- "Accept" button.

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
