note
	description: "Launcher for the Hexxagon main window."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_LAUNCHER

inherit
	LAUNCHER

create
	launch

feature	-- Implementation

	launch (main_ui_window: MAIN_WINDOW)
			-- lunch the application
	local
		manager: HX_G_UIMANAGER
		dummy_manager: HX_G_L_DUMMYMANAGER
	do
		-- gives the main_ui as argument so we can restore when tictactoe closes
		if true then
			create manager.make
			manager.initGraphics (main_ui_window)
			main_ui_window.add_reference_to_game (main_ui_window)
		else
			create dummy_manager.make
			main_ui_window.add_reference_to_game (dummy_manager)
		end
	end
end
