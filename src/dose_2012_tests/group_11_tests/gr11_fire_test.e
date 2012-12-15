note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "2/12/2012"
	revision: "0.1"
	testing: "type/manual"

class
	GR11_FIRE_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	shooting_range_test
			-- testing the correct behaviour of the shooting_range which returns the coordinates of the shoot
		note
			testing:  "covers/{GR11_FIRE}.shooting_range"
			testing:  "user/GR11"
		local
			l_fire : GR11_FIRE
			l_coordinates: GR11_COORDINATES
			l_direction : GR11_DIRECTION
			l_list : LIST[GR11_COORDINATES]
			l_test_coordinates : GR11_COORDINATES
		do
			create l_fire.make
			create l_coordinates.make (0, 0)
			create l_direction.make (0)

			l_list := l_fire.shooting_range (l_coordinates, l_direction)

            assert("the size of list isn't right", l_list.count = 5)

            l_list.compare_objects

			create l_coordinates.make (5, 0)
            assert("the coordinates 5 0 inside the list isn't correct", l_list.has (l_coordinates))

            create l_coordinates.make (4, 0)
            assert("the coordinates 4 0 inside the list isn't correct", l_list.has (l_coordinates))

            create l_coordinates.make (3, 0)
            assert("the coordinates 3 0 inside the list isn't correct", l_list.has (l_coordinates))

            create l_coordinates.make (2, 0)
            assert("the coordinates 2 0 inside the list isn't correct", l_list.has (l_coordinates))

            create l_coordinates.make (1, 0)
            assert("the coordinates 1 0 inside the list isn't correct", l_list.has (l_coordinates))
		end

end


