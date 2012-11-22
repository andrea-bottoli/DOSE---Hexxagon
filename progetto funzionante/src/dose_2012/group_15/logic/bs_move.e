note
	description: "Summary description for {BS_MOVE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_MOVE

create
	make

feature

	make(a_tile: BS_TILE; a_position: BS_POSITION )
	do
		tile := a_tile
		position := a_position
	end

	get_position: BS_POSITION
	do
		Result := position
	end

	get_tile: BS_TILE
	do
		Result := tile
	end

feature {NONE}

	tile: BS_TILE
	position: BS_POSITION

end
