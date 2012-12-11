note
	description: "Represents the movement of a ship"
	author: "Milano4"
	date: "4/12/2012"
	revision: "0.1"

class
	GR11_MOVEMENT

create
	make

feature --initialization

	make(number_of_movements:INTEGER)
	--number_of_movements: says how much the current ship can move in the board
	require
		number_of_movements_positive : number_of_movements > 0
	do
		movements := number_of_movements
	ensure
		movements_is_equal_to_the_parameter : movements = number_of_movements
	end


feature --functions

	movement_range(direction:GR11_DIRECTION; coordinates_input:GR11_COORDINATES):LIST[GR11_COORDINATES]
	--it returns the range of movement of the current ship
	--direction: the current direction of the ship
	--coordinates_input : the initial coordinates of the ship
	require
		direction_not_void: direction /= Void
		coordinates_input_not_void : coordinates_input /= Void
	local
		l_list : ARRAYED_LIST[GR11_COORDINATES]
		l_hexagon_move : GR11_HEXAGON_MOVE
		l_index : INTEGER
		l_coordinates : GR11_COORDINATES
	do
		create l_hexagon_move
		create l_list.make(movements)

		from
			l_index := 0
		until
			l_index < movements
		loop

		end


	ensure
		Result_not_void : Result /= Void
		Result_not_empty : Result.count /= 0
	end

feature{NONE} --implementation

	movements : INTEGER
	--	it says the number of movements of the current ship

end
