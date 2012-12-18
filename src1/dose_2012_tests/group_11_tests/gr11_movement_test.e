note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	GR11_MOVEMENT_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	movement_range_test
			-- test of the range of movement of normal ships
		note
			testing:  "covers/{GR11_MOVEMENT}.movement_range"
			testing:  "user/GR11"
		local
			l_direction : GR11_DIRECTION
			l_coordinates : GR11_COORDINATES
			l_movement : GR11_MOVEMENT
			l_list : LIST[GR11_COORDINATES]
		do
			create l_movement.make(3)
			create l_direction.make(0)
			create l_coordinates.make (3, 14)

			l_list := l_movement.movement_range (l_direction, l_coordinates)

			l_list.compare_objects

			create l_coordinates.make (3, 15)
			assert("the list not contain the coordinates 3, 15", l_list.has (l_coordinates) )

			create l_coordinates.make (4, 21)
			assert("the list not contain the coordinates 4, 21", l_list.has (l_coordinates) )

			create l_coordinates.make (5, 27)
			assert("the list not contain the coordinates 5, 27", l_list.has (l_coordinates) )

		end

end


