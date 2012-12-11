note
	description: "Represents the points of life of the ship"
	author: "Milano4"
	date: "24/11/2012"
	revision: "1.0"

class
	GR11_LIFE

create
	make


feature {NONE} -- Initialization

	make(num_points_of_life:INTEGER)
	-- initialize life with the desired points of life and set attributes shield and destroyed to false
	-- num_of_points_of_life : the number of points of life
	require
		points_of_life_limits : num_points_of_life > 0 and then num_points_of_life < 3
	do
		points := num_points_of_life
		destroyed := FALSE
		shield := FALSE

	ensure

        points_of_life_is_equal_to_parameter : points = num_points_of_life
		shield_is_set_to_false : not shield
		destroyed_is_set_to_false : not destroyed
	end

feature --status access

	points: INTEGER

	destroyed : BOOLEAN

	shield : BOOLEAN

feature --modifiers

	set_points_of_life(new_points_of_life:INTEGER)
	-- set the new points of life
	require
		points_of_life_limits : new_points_of_life > 0 and then new_points_of_life < 3
		ship_not_destroyed : not destroyed
	do
		points := new_points_of_life -- assumption : if demaged, the ships restore all his point

	ensure
		points_of_life_equal_to_parameter: points = new_points_of_life
	end

	decrease_points
	--decrease of one the points of life
	require
		cannot_decrease_if_destroyed: not destroyed
	do
		if not shield then
			points := points - 1
		end

		if points = 0 then
			destroyed := true
		end

	ensure
		points_decreased_by_one_if_not_shield: not shield implies points = old points -1

	end

	activate_shield
	-- activate shields of the ship
	require
		cannot_activate_if_destroyed: not destroyed
	do
		shield := TRUE
	ensure
		shield_activeted : shield
	end

	deactivate_shield
	-- deactivate shields of the ship
	require
		shield_activeted : shield
	do
 		shield := FALSE
	ensure
		shield_deactivated: not shield
	end

invariant
	destroyed_implies_points_of_life_equal_to_zero : destroyed implies points = 0
	points_equal_to_zero_implies_destroyed : points = 0 implies destroyed

end
