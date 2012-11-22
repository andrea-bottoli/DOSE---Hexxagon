note
	description: "Main lobby necessary for begin the game"
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MAIN_LOBBY

inherit
	CU_WINDOWS

create
	make

feature -- make

	make
		-- Displays a window with the main lobby
		do
		ensure
			is_displayed: is_displayed
		end
feature {NONE}
    create_game_button: EV_BUTTON
            -- "Create Game" button.

	join_game_button: EV_BUTTON
            -- "Join Game" button.

	show_rules_button: EV_BUTTON
            -- "Show Rules" button.

	quit_game_button: EV_BUTTON
            -- "Quit Game" button.
end
