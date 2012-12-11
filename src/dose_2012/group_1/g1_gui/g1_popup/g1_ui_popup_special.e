note
	description: "Summary description for {G1_UI_POPUP_SPECIAL}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_UI_POPUP_SPECIAL
	--- It's a Graphical Inteface

inherit
	G1_UI_POPUP
		undefine
			copy, default_create
		end
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G1_UI_CONSTANTS
	    export
			{NONE} all
		undefine
			default_create, copy
		end

create make

feature {NONE} -- Initialization

	make
		do

		end

	initialize
		do
			
		end
end
