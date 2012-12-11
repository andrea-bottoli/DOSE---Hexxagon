note
	description: "Represents the generic class for a ship"
	author: "Milano4"
	date: "24/11/2012"
	revision: "0.1"

class
	GR11_BASE_SHIP

feature --status access

	player_id : STRING
	--name of the player who owns the current ship

	fire : GR11_FIRE
	--is the current type of fire of the ship

	--movement : GR11_MOVEMENT
	--is the current type of movement of the ship

	life : GR11_LIFE
	--is number of points of life of the ship	


feature --modifiers

	set_type_of_fire(type_of_fire:GR11_FIRE)
	--set a new type of fire for the ship
	--type_of_fire : the new type of fire of the current ship
	require
		type_of_fire_not_empty : type_of_fire /= Void
	do
		fire := type_of_fire
	ensure
		new_type_of_fire_is_correct: fire = type_of_fire
	end

	set_points_of_life(points_of_life:GR11_LIFE)
	--set a new points of life for the ship
	--points_of_life : the new points of life of the current ship
	require
		points_of_life_not_empty : points_of_life /= Void
	do
	ensure
		new_points_of_life_is_correct: life = points_of_life
	end

	--set_type_of_movement(type_of_movement:GR11_MOVEMENT)
	--set a new type of movement for the ship
	--type_of_movement : the new type of movement of the current ship
	--require
	--	type_of_movement_not_empty : type_of_movement /= Void
	--do
	--ensure
	--	new_type_of_movement_is_correct: movement = type_of_movement
	--end

end

