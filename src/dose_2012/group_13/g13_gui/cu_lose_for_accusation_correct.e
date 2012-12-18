note
	description: "Summary description for {CU_LOSE_FOR_ACCUSATION_CORRECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_LOSE_FOR_ACCUSATION_CORRECT


inherit
	CU_WINDOWS

create
	make

feature

	make-- (a_player: CU_ENUM_SUSPECTS;a_suspect_card: CU_SUSPECT_CARD; a_weapon_card: CU_WEAPON_CARD; a_room_card: CU_ROOM_CARD)
		-- Displays the window by an accusation correct
--		require
--			has_a_suspect_card: solution_game.solution.has (a_suspect_card)
--			has_a_weapon_card: solution_game.solution.has (a_weapon_card)
--			has_a_room_card: solution_game.solution.has (a_room_card)
		do

			create accept_button.make_with_text ("Accept")
			accept_button.set_minimum_size (75, 24)
			accept_button.select_actions.extend (agent destroy)

			create con_accusation_correct
			con_accusation_correct.extend_with_position_and_size (set_pixmap(img_lose_fuu), 0 , 0 ,585, 614)
			con_accusation_correct.extend_with_position_and_size (accept_button, 254,570 , 80, 40)

			make_with_title ("Lose for Accusation Correct")
			set_size (585,614)
			put (con_accusation_correct)
			disable_user_resize
		end


feature	--Implementation/ Constants

	label_window: EV_LABEL
		-- Label situated on the top of the dialog,
	    -- contains the message.

	accept_button: EV_BUTTON
        -- "Accept" button.

	solution_game: CU_GAME

	con_accusation_correct: EV_FIXED


end
