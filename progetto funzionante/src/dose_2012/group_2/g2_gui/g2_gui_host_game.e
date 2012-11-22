note
	description: "Summary description for {G2_GUI_HOST_GAME}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: "Date 13/11/2012"
	revision: "Revision  0.1"

class
	G2_GUI_HOST_GAME

create
	make_gui_host_game

feature
	--initialize the window HOST.

	make_gui_host_game (main_menu1: G2_GUI_MAIN_MENU)
		require
			is_not_void: main_menu1 /= void
		do
		ensure
			is_not_void: main_menu /= void
		end

	new_game
			--initializes the port and rules.
		do
		end

	back
			--back to the main window.
		do
		end

feature {NONE} --miscellanies

	load_rules
			-- load the rules of game
		require
			rules_void: rules = void
		do
		ensure
			rules_not_void: rules /= void
		end

	validate_port (port: INTEGER)
	    -- validates the port.
		do
		end

feature {NONE}

	rules: ARRAY [BOOLEAN]

	main_menu: G2_GUI_MAIN_MENU

end
