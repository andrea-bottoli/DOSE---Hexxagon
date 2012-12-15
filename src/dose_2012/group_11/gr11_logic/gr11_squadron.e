note
	description: "It stands for a squadron of ships"
	author: "Milano4"
	date: "9/12/2012"
	revision: "1.0"

class
	GR11_SQUADRON

create
	make

feature{NONE} --initialization

	make(id_player:STRING_8)
		local
			l_index :INTEGER
			l_ship : GR11_BASE_SHIP
		do
			create ships.make(number_of_ships)

			from
				l_index := 0
			until
				l_index >= number_of_ships
			loop
				create l_ship.make(id_player)
				ships.put_front(l_ship)
				l_index:=l_index+1
			end

			iterator := 1
		end

feature	--Access
	getShip:GR11_BASE_SHIP
	--return the current ship
	do
		Result := ships.i_th(iterator)
	end

feature --status

	iterator:INTEGER

	start
	--it sets the iterator to the first ship
	do
		iterator := 1
	end

	exhausted :BOOLEAN
	--it says if all ships have been visited
	do
		Result := iterator = number_of_ships
	end


feature{NONE} --implementation

	number_of_ships:INTEGER
	--it says how many ship have a squadron
	once
		Result := 6
	end

	ships:ARRAYED_LIST[GR11_BASE_SHIP]
	--list of the squadron's ships

end
