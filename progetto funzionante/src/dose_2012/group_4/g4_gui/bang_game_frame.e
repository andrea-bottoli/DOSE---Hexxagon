note
	description: "Summary description for {BANG_GAME_FRAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BANG_GAME_FRAME

inherit
	EV_FIXED
		redefine
			initialize
		end

	BANG_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	make

feature {NONE}	-- Initialization

	make
		local
		do
		end

	initialize
		local
		do
		end

end
