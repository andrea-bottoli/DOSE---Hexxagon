note
	description: "This is the main launcher of the application. This is called by the mainUI"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_LAUNCHER
inherit
	LAUNCHER

feature
	launch (main_ui_window: MAIN_WINDOW)
		local
			l_controller: CU_INIT_CONTROLLER
		do
			create l_controller.make(main_ui_window)

			main_ui_window.add_reference_to_game (l_controller)
		end

end
