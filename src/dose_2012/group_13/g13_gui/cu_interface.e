note
	description: "Summary description for {CU_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_INTERFACE

feature

	main_lobby: CU_MAIN_LOBBY

feature

	initialize (a_controller: CU_INIT_CONTROLLER; main_ui: MAIN_WINDOW)
		do
			create main_lobby.make_window (main_ui, a_controller)
			main_lobby.show
		end

end
