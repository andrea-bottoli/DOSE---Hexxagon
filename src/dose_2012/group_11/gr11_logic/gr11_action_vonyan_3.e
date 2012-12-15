note
	description: "Summary description for {GR11_ACTION_VONYAN_3}."
	author: "Milano4"
	date: "11/12/2012"
	revision: "1.0"

class
	GR11_ACTION_VONYAN_3
inherit
	GR11_ACTION
	redefine
		call
	end
feature
	call(board:GR11_BOARD; player:GR11_PLAYER; list_of_coordinates :LIST[GR11_COORDINATES]):BOOLEAN
	do
		--teleport squadron to 6 in each direction
		--control if destination-source is 6
		Result:=TRUE
	end

end
