note
	description: "Summary description for {GR11_SPECIAL_CARD}."
	author: "Milano4"
	date: "27/11/2012"
	revision: "0.1"

class
	GR11_SPECIAL_CARD


feature--modifiers

update(board:GR11_BOARD;list_of_coordinates:LIST[GR11_COORDINATES];player:GR11_PLAYER):BOOLEAN
--update component in position x,y in the board different for each special_card
do
	Result:=true
end

feature --query

control(board:GR11_BOARD;x:INTEGER;y:INTEGER;player:GR11_PLAYER):BOOLEAN
--control turn,position,.. different for each special_card
do
	Result:=true
end

feature{NONE}--implementation
is_activated:BOOLEAN
--when is true the player can't use this special card again
end
