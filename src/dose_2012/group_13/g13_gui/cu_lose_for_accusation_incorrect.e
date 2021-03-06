note
	description: "Summary description for {CU_LOSE_FOR_ACCUSATION_INCORRECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_LOSE_FOR_ACCUSATION_INCORRECT

inherit
	CU_WINDOWS

create
	make

feature

	make --(a_player: CU_ENUM_SUSPECTS;a_suspect_card: CU_SUSPECT_CARD; a_weapon_card: CU_WEAPON_CARD; a_room_card: CU_ROOM_CARD)
		-- Displays the window by an accusation incorrect
--		require
--			has_a_suspect_card: solution_game.solution.has (a_suspect_card)
--			has_a_weapon_card: solution_game.solution.has (a_weapon_card)
--			has_a_room_card: solution_game.solution.has (a_room_card)
		do

			create accept_button.make_with_text ("Accept")
			accept_button.set_minimum_size (75, 24)
			accept_button.select_actions.extend (agent destroy)

			create con_accusation_incorrect
			con_accusation_incorrect.extend_with_position_and_size (set_pixmap(img_lose), 0, 0, 464, 560)
			con_accusation_incorrect.extend_with_position_and_size (accept_button, 192, 515, 80, 40)

			make_with_title ("Lose for Accusation Incorrect")
			set_size (464,560)
			put (con_accusation_incorrect)
			disable_user_resize

--		ensure
--			window_lose_display: is_displayed
		end

feature	--Implementation/ Constants

	label_window: EV_LABEL
		-- Label situated on the top of the dialog,
	    -- contains the message.

	accept_button: EV_BUTTON
        -- "Accept" button.
        
	solution_game: CU_GAME

	con_accusation_incorrect: EV_FIXED

end
