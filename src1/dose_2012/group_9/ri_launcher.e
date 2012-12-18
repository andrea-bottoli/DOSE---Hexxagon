note
	description: "Summary description for {RI_LAUNCHER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RI_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
		local
			main_window: RI_WELCOME_WINDOW
		do
		 	create main_window.make (main_ui_window)
			main_window.show
			main_ui_window.add_reference_to_game (main_window)

		end

end
