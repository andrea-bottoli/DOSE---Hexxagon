note
	description: "Represents the hexagon element in the board"
	author: "Milano4"
	date: "25/11/12"
	revision: "0.1"

class
	GR11_HEXAGON

create
	make

feature{NONE} --initialization
	make
	do
		has_ship := FALSE
	ensure
		after_creation_not_contains_ship : not has_ship
	end

feature --status access

	has_ship : BOOLEAN
    --it says if the hexagon element contains a ship

	ship : GR11_BASE_SHIP
	--the ship that the hexagon may contain

	direction : GR11_DIRECTION
	--direction of the ship in the current hexagon

feature --modifier

	add_ship(new_ship:GR11_BASE_SHIP; new_direction :GR11_DIRECTION)
	--it adds to this hexagon the ship passed by parameter
	--new_ship: the ship that clients want to add to this hexagon
	require
		new_ship_not_void: new_ship /= Void
		hexagon_is_empty : not has_ship
		new_direction_is_not_void : new_direction /= Void
	do
		ship := new_ship
		has_ship := TRUE
		direction := new_direction
	ensure
		hexagon_contains_a_ship : has_ship
		hexagon_contains_the_ship_passed_by_argument: new_ship = ship
		hexagon_contains_the_direction_passed_by_argument : direction = new_direction
	end

	remove_ship
	--to empty the hexagon
	require
		hexagon_contains_a_ship : has_ship
	do
		ship := Void
		direction := Void
		has_ship := FALSE

	ensure
		hexagon_is_empty: not has_ship and then ship = Void
		direction_is_void : direction = Void
	end

invariant
	if_ship_is_not_void_then_hexagon_is_not_empty : ship /= Void implies has_ship
	if_hexagon_not_empty_ship_is_not_void : has_ship implies ship /= Void
	if_has_ship_direction_not_void : has_ship implies direction /= Void
	if_direction_not_void_has_ship : direction /= Void implies has_ship


end
