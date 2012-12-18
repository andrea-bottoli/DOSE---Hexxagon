note
	description: "Summary description for {GR11_ACTION_VALKYRIE_1}."
	author: "Milano4"
	date: "11/12/2012"
	revision: "0.2"

class
	GR11_ACTION_VALKYRIE_1
inherit
	GR11_ACTION
	redefine
		call
	end
feature
	call(board:GR11_BOARD; player:GR11_PLAYER; list_of_coordinates :LIST[GR11_COORDINATES]):BOOLEAN
	local
		ship:GR11_BASE_SHIP
	do
		--devo prendere le capital_ship e vedere istance of capital ship
		ship:= board.get_ship_at (list_of_coordinates.i_th (1))
		if not (attached {GR11_CAPITAL_SHIP} ship) then
			Result:=FALSE
		end
		--capital_ship_movement.set(double)
		Result:=TRUE
	end

end
