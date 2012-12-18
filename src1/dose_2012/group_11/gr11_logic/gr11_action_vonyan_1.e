note
	description: "Summary description for {GR11_ACTION_VONYAN_1}."
	author: "Milano4"
	date: "11/12/2012"
	revision: "1.0"

class
	GR11_ACTION_VONYAN_1
inherit
	GR11_ACTION
	redefine
		call
	end
feature
	call(board:GR11_BOARD; player:GR11_PLAYER; list_of_coordinates :LIST[GR11_COORDINATES]):BOOLEAN
	do
		--control if is within 3 hex to capital ship and if move to 1 hex
		--move asteroid to source to destination contains in list
		--board.move (list_of_coordinates.i_th (1), list_of_coordinates.i_th (2)) return boolean
		--control confilit
		Result:=TRUE
	end

end
