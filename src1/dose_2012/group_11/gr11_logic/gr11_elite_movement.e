note
	description: "Summary description for {GR11_ELITE_MOVEMENT}."
	author: "Milano4"
	date: "12/12/12"
	revision: "1.0"

class
	GR11_ELITE_MOVEMENT

inherit

	GR11_MOVEMENT

		redefine
			movement_range
		end


feature	--functions

	movement_range(direction:GR11_DIRECTION; coordinates_input:GR11_COORDINATES):LIST[GR11_COORDINATES]
	do

	end

end
