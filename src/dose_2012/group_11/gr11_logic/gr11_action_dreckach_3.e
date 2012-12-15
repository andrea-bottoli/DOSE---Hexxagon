note
	description: "Summary description for {GR11_ACTION_DRECKACH_3}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "0.2"

class
	GR11_ACTION_DRECKACH_3

inherit
	GR11_ACTION
	redefine
		call
	end
feature
	call(board:GR11_BOARD; player:GR11_PLAYER; list_of_coordinates :LIST[GR11_COORDINATES]):BOOLEAN
	do
		player.draw_card_movement
		player.draw_card_movement
		Result:=TRUE
	end
end
