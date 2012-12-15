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
	make --(a_player: CU_ENUM_SUSPECTS; a_suspect_card: CU_SUSPECT_CARD; a_weapon_card: CU_WEAPON_CARD; a_room_card: CU_ROOM_CARD)
--		-- Displays the victory window
--		require
--			has_a_suspect_card: solution_game.solution.has (a_suspect_card)
--			has_a_weapon_card: solution_game.solution.has (a_weapon_card)
--			has_a_room_card: solution_game.solution.has (a_room_card)
		do

				create accept_button.make_with_text ("Accept")
				accept_button.select_actions.extend (agent destroy)

				create con_victory
				con_victory.extend_with_position_and_size (accept_button, 160, 630, 80, 40)
				con_victory.extend_with_position_and_size (image_victory, 0, 0, 400, 120)
				con_victory.extend_with_position_and_size (image_victory_win, 0, 120, 400, 499)

				make_with_title ("Victory")
				set_size (400,680)
				put (con_victory)
				disable_user_resize
		ensure
--			window_victory_display: is_displayed
--			end_of_game: solution_game.current_status = 5
		end

feature	--Implementation/ Constants
	label_window: EV_LABEL
		-- Label situated on the top of the dialog,
	    -- contains the message.

	accept_button: EV_BUTTON
        -- "Accept" button.

    image_victory_win: EV_PIXMAP
		-- Represents image of the victory
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_win))
		end

	image_victory: EV_PIXMAP
		-- Represents image of the victory
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_win_dialog))
		end

	solution_game: CU_GAME
		-- Represent a solution of current game

	con_victory: EV_FIXED
end
