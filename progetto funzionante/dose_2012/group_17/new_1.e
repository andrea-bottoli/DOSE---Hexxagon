note
	description: "A simple dummy launcher that outputs a message that no game exists yet."
	author: "Group17"
	date: "31.10.2012"
	revision: "1.0"

class
	DOM17_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("This is a dummy. No game yet...")
		end

end
