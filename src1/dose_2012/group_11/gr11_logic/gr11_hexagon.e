note
	description: "Represents the hexagon element in the board"
	author: "Milano4"
	date: "25/11/12"
	revision: "1.0"

class
	GR11_HEXAGON

create
	make

feature{NONE} --initialization
	make
	do
		has_ship := FALSE
		has_asteroid := FALSE
	ensure
		after_creation_not_contains_ship : not has_ship
	end

feature --status access

	has_ship : BOOLEAN
    --it says if the hexagon element contains a ship

    has_asteroid : BOOLEAN
    --it says if the hexagon contains an asteroid

	ship : GR11_BASE_SHIP
	--the ship that the hexagon may contain

	direction : GR11_DIRECTION
	--direction of the ship in the current hexagon

	asteroid : GR11_ASTEROID
	--the asteroid that the current hexaon may contain

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

	add_asteroid(new_asteroid:GR11_ASTEROID)
	--it adds the asteroid to the current hexagon
	--new_asteroid : the asteroid that has to be added
	require
		new_asteroid_not_void : new_asteroid /= Void
		has_not_ship : not has_ship
		has_not_asteroid : not has_asteroid
	do
		asteroid := new_asteroid
		has_asteroid := TRUE
	ensure
		asteroid_added : asteroid /= Void and then has_asteroid
	end

	remove_asteroid
	--it removes the current asteroid
	require
		current_hexagon_has_asteroid : has_asteroid
	do
		has_asteroid := false
		asteroid := Void
	ensure
		current_hexagon_has_not_asteroid : not has_asteroid
	end


invariant
	if_ship_is_not_void_then_hexagon_is_not_empty : ship /= Void implies has_ship
	if_hexagon_not_empty_ship_is_not_void : has_ship implies ship /= Void
	if_has_ship_direction_not_void : has_ship implies direction /= Void
	if_direction_not_void_has_ship : direction /= Void implies has_ship

	if_has_ship_not_has_asteroid: has_ship implies not has_asteroid
	if_has_asteroid_nt_has_ship : has_asteroid implies not has_ship


end
