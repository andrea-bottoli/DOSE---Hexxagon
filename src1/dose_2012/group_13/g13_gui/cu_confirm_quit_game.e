note
	description: ""
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CONFIRM_QUIT_GAME

create
	make

feature

	make
		-- Displays a window to confirm quit game
		do
		ensure
			confirm_quit_game_display: quit_game.is_displayed
		end

feature
	quit_game: CU_CONFIRM_DIALOG
	-- Instance of CU_CONFIRM_DIALOG

end
