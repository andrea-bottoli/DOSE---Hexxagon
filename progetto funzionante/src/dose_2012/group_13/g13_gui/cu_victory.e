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

	solution_game: CU_GAME
		-- Represent a solution of current game
end
