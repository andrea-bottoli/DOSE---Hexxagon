note
	description: "Represents the shooting type of capital ships"
	author: "Milano4"
	date: "25/11/12"
	revision: "0.1"

class
	GR11_CAPITAL_SHIP_FIRE

feature	--functions

	shooting_at(coordinates:GR11_COORDINATES):BOOLEAN
	--it says if capital ship can shoot at coordinate passed by argument
    --coordinates: the x-coordinate and y-coordinate in which capital ship shoots
    require
    	coordinates_not_empty : coordinates /= Void
    do
    	--TODO
    end

end
