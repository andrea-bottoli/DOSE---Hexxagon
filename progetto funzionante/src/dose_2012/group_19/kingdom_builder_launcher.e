note
	description: "KINGDOM BUILDER launcher class."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	KINGDOM_BUILDER_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("Kingdom Builder is not playable yet...")
		end

end
