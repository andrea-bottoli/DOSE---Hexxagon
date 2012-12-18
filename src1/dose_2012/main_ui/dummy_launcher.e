note
	description: "A simple dummy launcher that outputs a message that no game exists yet."
	author: "Christian Estler"
	date: "01.10.2011"
	revision: "1.0"

class
	DUMMY_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("This is a dummy. No game yet...")
		end

end
