note
	description: "Summary description for {GR11_ACTION_VALKYRIE_2}."
	author: "Milano4"
	date: "11/12/2012"
	revision: "0.3"

class
	GR11_ACTION_VALKYRIE_2
inherit
	GR11_ACTION
	redefine
		call
	end
feature
	call(board:GR11_BOARD; player:GR11_PLAYER; list_of_coordinates :LIST[GR11_COORDINATES]):BOOLEAN
	do
		--capital_ship_elite_fire  di 9 o normale
		Result:=TRUE
	end

end
