note
	description: "Launcher for the Triple Triad New Generation main window."
	author: "RioCuarto8"
	date: "29/10/2012"
	revision: "1.0"

class
	G2_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			logic: G2_LOGIC_LOGIC
			net: G2_NET_NET
			gui: G2_GUI_MAIN_MENU
		do
			create gui.default_create
			create logic.make
			gui.set_logic (logic)
			logic.set_gui (gui)
			logic.set_net (net)
			gui.show
		end

end
