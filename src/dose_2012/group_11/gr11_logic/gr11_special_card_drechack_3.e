note
	description: "Summary description for {GR11_SPECIAL_CARD_DRECKACH_3}."
	author: "Milano4"
	date: "1/12/2012"
	revision: "0.1"

class
	GR11_SPECIAL_CARD_DRECKACH_3
	--this special_card permit to the player to draw three card

inherit
	GR11_SPECIAL_CARD

	redefine
		update,
		control
	end


feature --query
	control(board:GR11_BOARD;x:INTEGER;y:INTEGER;player:GR11_PLAYER):BOOLEAN
	--for this specific special card run its control and return true if control has successfull
	do
	end

feature --modifiers
	update(board:GR11_BOARD;list_of_coordinates:LIST[GR11_COORDINATES];player:GR11_PLAYER):BOOLEAN
	--for this specific sepcial card update component passed and return true if update has successfull
	do
		player.update_special_card
		is_activated:=TRUE
		Result:=TRUE
	end

end


