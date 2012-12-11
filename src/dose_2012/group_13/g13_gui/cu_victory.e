--note
--	description: "Summary description for {CU_VICTORY}."
--	author: ""
--	date: "$Date$"
--	revision: "$Revision$"

--class
--	CU_VICTORY

--inherit
--	CU_WINDOWS

--create
--	make

--feature
--	make (a_player: CU_ENUM_SUSPECTS; a_suspect_card: CU_SUSPECT_CARD; a_weapon_card: CU_WEAPON_CARD; a_room_card: CU_ROOM_CARD)
--		-- Displays the victory window
--		require
--			has_a_suspect_card: solution_game.solution.has (a_suspect_card)
--			has_a_weapon_card: solution_game.solution.has (a_weapon_card)
--			has_a_room_card: solution_game.solution.has (a_room_card)
--		do
--		ensure
--			window_victory_display: is_displayed
--			end_of_game: solution_game.current_status = 5
--		end
--feature
--	set_message (a_message: STRING)
--    	require
--    		messagge_not_empty: a_message /= void
--		do
--			set_message("Your accusation is true, %N you win this match")

--			create accept_button.make_with_text ("Accept")
--			accept_button.set_minimum_size (75, 24)
--			accept_button.select_actions.extend (agent destroy)

--			create con_victory
--			con_victory.extend_with_position_and_size (accept_button, 70, 100, 80, 40)
--			con_victory.extend_with_position_and_size (label_window, 30, 20 , 200, 80)

--			make_with_title ("Victory")
--			set_size (400,350)
--			put (con_victory)

--		ensure
--			message_updated: label_window.text.is_equal (a_message)
--	    end

--feature	--Implementation/ Constants
--	label_window: EV_LABEL
--		-- Label situated on the top of the dialog,
--	    -- contains the message.

--	accept_button: EV_BUTTON
--        -- "Accept" button.

--    image_victory: EV_PIXMAP
--		-- Represents image of the victory
--	-------------------------------------------------FALTA PATH-------------------------------------------
--		once
--			create Result
--			Result.set_with_named_file (file_system.pathname_to_string (Img_main_background))
--		end
---------------------------------------------------FALTA PATH-------------------------------------------

--	solution_game: CU_GAME
--		-- Represent a solution of current game

--	con_victory: EV_FIXED
--end

note
	description: "Summary description for {CU_VICTORY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_VICTORY

inherit
	CU_WINDOWS

create
	make

feature
	make (a_player: CU_ENUM_SUSPECTS; a_suspect_card: CU_SUSPECT_CARD; a_weapon_card: CU_WEAPON_CARD; a_room_card: CU_ROOM_CARD)
		-- Displays the victory window
		require
			has_a_suspect_card: solution_game.solution.has (a_suspect_card)
			has_a_weapon_card: solution_game.solution.has (a_weapon_card)
			has_a_room_card: solution_game.solution.has (a_room_card)
		do
			set_message("Your accusation is true, %N you win this match")

				create accept_button.make_with_text ("Accept")
				accept_button.set_minimum_size (75, 24)
				accept_button.select_actions.extend (agent destroy)

				create con_victory
				con_victory.extend_with_position_and_size (accept_button, 70, 100, 80, 40)
				con_victory.extend_with_position_and_size (label_window, 30, 20 , 200, 80)

				make_with_title ("Victory")
				set_size (400,350)
				put (con_victory)
		ensure
			window_victory_display: is_displayed
			end_of_game: solution_game.current_status = 5
		end

feature	--Implementation/ Constants
	label_window: EV_LABEL
		-- Label situated on the top of the dialog,
	    -- contains the message.

	accept_button: EV_BUTTON
        -- "Accept" button.

    image_victory: EV_PIXMAP
		-- Represents image of the victory
	-------------------------------------------------FALTA PATH-------------------------------------------
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_main_background))
		end
-------------------------------------------------FALTA PATH-------------------------------------------

	solution_game: CU_GAME
		-- Represent a solution of current game

	con_victory: EV_FIXED
end
