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


	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			window: CP_MAIN_WINDOW
			black_color:EV_COLOR
		do
		 create window.make(main_ui_window)
		 create black_color.make_with_8_bit_rgb (0, 0, 0)
		 window.set_background_color (black_color)
		 window.show

		 main_ui_window.add_reference_to_game (window)
		end


end
