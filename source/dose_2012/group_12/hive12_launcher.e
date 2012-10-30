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

	launch (main_ui_window: EV_TITLED_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("Hive you will see it soon...")
		end

end
