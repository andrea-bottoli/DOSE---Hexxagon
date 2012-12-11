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
			l_list : ARRAYED_LIST[GR11_COORDINATES]
			l_list2 : LIST[GR11_COORDINATES]
			l_test_coordinates : GR11_COORDINATES
		do
			create l_fire.make
			create l_coordinates.make (0, 0)
			create l_direction.make (0)

			l_list2 := l_fire.shooting_range (l_coordinates, l_direction)

			create l_list.make (5)

			assert("the size of list is right", l_list.count = 5)

			create l_test_coordinates.make (1, 0)
			assert("the coordinates inside the list are correct", l_list.has (l_test_coordinates))

			create l_test_coordinates.make (2, 0)
			assert("the coordinates inside the list are correct", l_list.has (l_test_coordinates))

			create l_test_coordinates.make (3, 0)
			assert("the coordinates inside the list are correct", l_list.has (l_test_coordinates))

			create l_test_coordinates.make (4, 0)
			assert("the coordinates inside the list are correct", l_list.has (l_test_coordinates))

			create l_test_coordinates.make (5, 0)
			assert("the coordinates inside the list are correct", l_list.has (l_test_coordinates))

		end

end


