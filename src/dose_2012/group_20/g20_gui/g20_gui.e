note
	description: "Summary description for {GUI}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_GUI

create
	make



feature
	make(a_main_ui:MAIN_WINDOW;g_core:G20_CORE)
		local
			i,j:INTEGER
		do
			core:=g_core
			create main_window.make (a_main_ui,core)
			main_window.disable_user_resize
			main_window.set_size (700, 700)
			main_ui:=a_main_ui


		end

	initialize
		do

		end


feature {ANY}
	update
		do

		end



feature {NONE}
	images:G20_GUI_IMAGES
	constants:G20_GUI_CONSTANTS
	main_window:G20_MAIN_WINDOW
	main_ui:MAIN_WINDOW
	core: G20_CORE

	satchel:G20_SATCHEL
	board:G20_MAINBOARD
	score:G20_SCOREBOARD

end
