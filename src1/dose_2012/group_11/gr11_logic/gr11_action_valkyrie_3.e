note
	description: "Summary description for {GR11_ACTION_VALKYRIE_3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_ACTION_VALKYRIE_3
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
		ship:= board.get_ship_at (list_of_coordinates.i_th (1))
		ship.set_type_of_fire (create {GR11_MEGA_WEAPON_FIRE}.make_mega_weapon)
		--board.fire (ship, player.get_name.id) --torna lista navi distrutte
		--you can use once
		ship.set_type_of_fire (create {GR11_CAPITAL_SHIP_FIRE})
		--return normal fire capital ship
		Result:=TRUE
	end

end
