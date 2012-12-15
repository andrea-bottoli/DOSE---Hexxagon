note
	description: "Summary description for {BS_GUI_TILE_SET}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_GUI_TILE_SET

inherit
	BS_TILE_SET

create
	make_with_color

feature {NONE} -- Initialization

	make_with_color(a_color: INTEGER)
			-- Initialization for `Current'.
		do
			add_tile_set (a_color)
		end

feature {BS_GAME_WINDOW} -- Interface for GUI

	get_tiles: LINKED_LIST[BS_TILE]
		do
			Result := tiles
		end

end
