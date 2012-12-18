note
	description: "Summary description for {GR11_ACTION_VONYAN_2}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "1.0"

class
	GR11_ACTION_VONYAN_2
inherit
	GR11_ACTION
	redefine
		call
	end
feature
	call(board:GR11_BOARD; player:GR11_PLAYER; list_of_coordinates :LIST[GR11_COORDINATES]):BOOLEAN
	do
		--move squadron double or not if move double can't fire
		Result:=TRUE
	end

end
