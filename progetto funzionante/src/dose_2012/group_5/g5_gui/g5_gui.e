note
	description: "The implementation of the deferred class G5_IGUI_TO_NET."
	author: "Gabriele Fanchini"
	date: "19.11.2012"
	revision: "1.0"

class
	G5_GUI
inherit
	G5_IGUI_TO_NET
create
	make

feature {G5_LAUNCHER} --Initialization performed by the G5_LAUNCHER

	make()
		-- this constructor will initialize the base of the GUI: main_menu will be display and APIs will be available
		require
			true
		do
		ensure
			-- the main menu will be displayed
		end


end
