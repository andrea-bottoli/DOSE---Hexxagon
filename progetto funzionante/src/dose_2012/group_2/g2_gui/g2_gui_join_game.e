note
	description: "Summary description for {G2_GUI_JOIN_GAME}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: "Date 13/11/2012"
	revision: "Revision  0.1"

class
	G2_GUI_JOIN_GAME

create
	make_gui_join_game

feature

	make_gui_join_game (main_menu1: G2_GUI_MAIN_MENU)
		require
			is_not_void: main_menu1 /= void
		do
		ensure
			is_not_void: main_menu /= void
		end

	join_game
			--initializes the port and ip.
		do
		end

	back
			--back to the main window.
		do
		end

feature {NONE} --miscellanies

	validate_ip (ip: STRING)
			-- validates the ip.
		do
		end

	validate_port (port: INTEGER)
			-- validates the port.
		do
		end

feature {NONE}

	main_menu: G2_GUI_MAIN_MENU

end
