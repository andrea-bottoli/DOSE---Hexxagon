note
	description: "Represents the generic class for a ship"
	author: "Milano4"
	date: "24/11/2012"
	revision: "1.0"

class
	GR11_BASE_SHIP

inherit
	ANY
	redefine
		default_create
	end

create
	default_create,
	make

feature{NONE} --initialization
	default_create
	do
		create fire.make
		create life.make (1)
		create movement.make (number_of_movements)
		elite := false
	end

	make(id:STRING_8)
	do
		player_id := id
		default_create
	end

feature --status access

	player_id : STRING
	--name of the player who owns the current ship

	fire : GR11_FIRE
	--is the current type of fire of the ship

	movement : GR11_MOVEMENT
	--is the current type of movement of the ship

	life : GR11_LIFE
	--is number of points of life of the ship	

	elite : BOOLEAN
	--says if current ship is elite

	killer : STRING
	--says the user_id of the killer of the current ship


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
		life := points_of_life
	ensure
		new_points_of_life_is_correct: life = points_of_life
	end

	set_movement(range_movement:INTEGER)
	--set the range of movement
	require
		range_movement_positive: range_movement > 0
	do
		movement.set_range(range_movement)
	end

	set_type_of_movement(type_of_movement:GR11_MOVEMENT)
	--set a new type of movement for the ship
	--type_of_movement : the new type of movement of the current ship
	require
		type_of_movement_not_empty : type_of_movement /= Void
	do
		movement := type_of_movement
	ensure
		new_type_of_movement_is_added: movement /= Void
	end

	set_elite
	--set the current ship as elite ship
	require
		current_ship_not_elite : not elite
	do
		elite := true
		set_type_of_fire(create {GR11_ELITE_FIRE}.make_elite)
		set_points_of_life(create {GR11_LIFE}.make(life_points_elite_ship))
		set_type_of_movement (create {GR11_ELITE_MOVEMENT})
	ensure
		current_ship_is_elite: elite
		current_fire_is_elite: --attached{GR11_ELITE_FIRE}fire
	end

	set_killer(user_id:STRING)
	--set the killer of the current ship
	require
		user_id_not_void_not_empty : user_id /= Void and then not user_id.is_empty
	do
		killer := user_id
	end


feature{NONE} --implementation

	number_of_movements:INTEGER
	--default number_of_movement
	once
		Result := 5
	end

	life_points_base_ship:INTEGER
	--life_points_base_ship
	once
		Result := 1
	end

	life_points_elite_ship:INTEGER
	--life_points_elite_ship
	once
		Result := 2
	end

invariant
	if_destroyed_then_killer_not_void : life.destroyed and then killer /= Void

end

