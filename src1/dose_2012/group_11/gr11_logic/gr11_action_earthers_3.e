note
	description: "Summary description for {GR11_ACTION_EARTHERS_3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_ACTION_EARTHERS_3

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
		--self destruct
		ship:=board.get_ship_at (list_of_coordinates.i_th (1))
		ship.set_type_of_fire (create {GR11_SELF_DESTRUCT_FIRE}.make_self_destruct)
		--board.fire (ship, player.get_name.id)
		--poi devo distruggere ship

		Result:=TRUE
	end
end

