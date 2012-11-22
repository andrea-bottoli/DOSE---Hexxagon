note
	description: "Summary description for {TICHU_LAUNCER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TICHU_LAUNCHER
inherit
	LAUNCHER
		redefine
			launch
		end

feature

	launch (main_ui_window: MAIN_WINDOW)
		local
			window:G3_FIRST_WINDOW

		do
		--	create window.make(main_ui_window)
		--	window.initialize
		--	window.show
		--	main_ui_window.add_reference_to_game_window (window)
		end

end
