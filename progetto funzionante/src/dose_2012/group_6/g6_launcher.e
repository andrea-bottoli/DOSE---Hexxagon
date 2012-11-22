note
	description: "Launcher for the MONOPOLY main window."
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_LAUNCHER

inherit

	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			aux: G6_STATE -- to use our classes

			aux2: G6_TRAIN -- to use our classes

			aux3: G6_SERVICE -- to use our classes

			aux4: G6_GROUND -- to use our classes

			aux5: G6_NONPROPERTY -- to use our classes

			aux6: GUI_BOARD -- to use our classes

			aux7: MONOPOLY_WIN -- to use our classes

			aux8: MONOPOLY_WIN_IMP -- to use our classes
		do
			io.put_string ("MONOPOLY coming soon.")
		end

end
