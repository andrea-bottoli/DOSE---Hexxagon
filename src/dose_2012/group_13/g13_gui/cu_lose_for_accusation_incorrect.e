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

	make (a_player: CU_ENUM_SUSPECTS;a_suspect_card: CU_SUSPECT_CARD; a_weapon_card: CU_WEAPON_CARD; a_room_card: CU_ROOM_CARD)
		-- Displays the window by an accusation incorrect
		require
			has_a_suspect_card: solution_game.solution.has (a_suspect_card)
			has_a_weapon_card: solution_game.solution.has (a_weapon_card)
			has_a_room_card: solution_game.solution.has (a_room_card)
		do
			--set_message("Your accusation is false,%N you lose this match")
			set_message("Your accusation is false,%N you lose this match")

			create accept_button.make_with_text ("Accept")
			accept_button.set_minimum_size (75, 24)
			accept_button.select_actions.extend (agent destroy)

			create con_accusation_incorrect
			con_accusation_incorrect.extend_with_position_and_size (accept_button, 70, 100, 80, 40)
			con_accusation_incorrect.extend_with_position_and_size (label_window, 30, 20 , 200, 80)

			make_with_title ("Lose for Accusation Incorrect")
			set_size (400,350)
			put (con_accusation_incorrect)

		ensure
			window_lose_display: is_displayed
		end

feature	--Implementation/ Constants

	label_window: EV_LABEL
		-- Label situated on the top of the dialog,
	    -- contains the message.

	accept_button: EV_BUTTON
        -- "Accept" button.

    image_lose_game: EV_PIXMAP
		-- Represents image of the lose game
		-------------------------------------------------FALTA PATH-------------------------------------------
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_main_background))
		end
-------------------------------------------------FALTA PATH-------------------------------------------
	solution_game: CU_GAME

	con_accusation_incorrect: EV_FIXED

end
