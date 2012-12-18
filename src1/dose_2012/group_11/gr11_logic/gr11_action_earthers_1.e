note
	description: "Summary description for {GR11_ACTION_EARTHERS_1}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "0.2"

class
	GR11_ACTION_EARTHERS_1

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
		ship:=board.get_ship_at(list_of_coordinates.i_th(1))
		ship.set_type_of_fire(create {GR11_ELITE_FIRE}.make_elite)
		--ship.set_type_of_movement(create {GR11_MOVEMENT_ELITE})
		Result:=TRUE
	end

end
