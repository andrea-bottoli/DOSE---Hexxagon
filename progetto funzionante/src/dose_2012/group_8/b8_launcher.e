note
	description: "Launcher for the Blokus main window."
	author: "Milano6"
	date: "14.10.2012"
	revision: "1.0"

class
	B8_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			logic:B8_LOGIC
		do
		 	io.put_string("Blokus. No game yet...")
		 	create logic.make
		 	logic.set_player_id(0)
		end

end
