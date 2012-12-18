
class
	G20_LAUNCHER

inherit
	LAUNCHER

feature	-- Implementation

	launch (main_ui_window: MAIN_WINDOW)
		local
			core: G20_CORE
			gui: G20_GUI
			net: G20_NET
			tmp:	G20_MOVEMENT
			list: ARRAY[G20_PLAYER]
		do
			create core.start_game (4,list)
			create gui.make (main_ui_window,core)
		end

end

