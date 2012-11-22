note
	description: "Launcher for the Hive main window."
	author: "PUCRS1"
	date: "19.10.2012"
	revision: "1.0"

class
	HIVE12_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	main_window: CP_MAIN_WINDOW
	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		do
		 create main_window
		 main_window.show
		end


end
