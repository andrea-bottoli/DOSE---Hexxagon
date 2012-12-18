note
	description: "Represents the capital ship"
	author: "Milano4"
	date: "1/12/2012"
	revision: "0.1"

class
	GR11_CAPITAL_SHIP

inherit
	GR11_BASE_SHIP
	redefine
		make,
		number_of_movements
	end

create
	make

feature{NONE} --initialization

	make(id:STRING)
	local
		l_capital_fire : GR11_CAPITAL_SHIP_FIRE
	do
		player_id := id
        create life.make (life_points_of_capital_ship)
        create movement.make (number_of_movements)
        create l_capital_fire
        fire := l_capital_fire
	end


feature{NONE} --implementation

	life_points_of_capital_ship:INTEGER
	--costant that says how much points of life has a capital ship
	once
		Result := 2
	end

	number_of_movements:INTEGER
	once
		Result := 1
	end



end
