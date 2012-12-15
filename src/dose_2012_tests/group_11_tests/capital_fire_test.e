note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	GR11_CAPITAL_FIRE_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	shoot_range_test
			-- test ofthe range of capital ship fire
		note
			testing:  "covers/{GR11_CAPITAL_SHIP_FIRE}.shooting_range"
			testing:  "user/GR11"
		local
			l_capital_fire : GR11_CAPITAL_SHIP_FIRE
			l_coordinates : GR11_COORDINATES
			l_direction : GR11_DIRECTION
			l_list : LIST[GR11_COORDINATES]
		do
			create l_coordinates.make (0, 0)
			create l_direction.make(0)
			create l_capital_fire

			l_list := l_capital_fire.shooting_range(l_coordinates, l_direction)

			l_list.compare_objects

			create l_coordinates.make(0,0)

			assert("the range contains the coordinates 0,0 ", not l_list.has (l_coordinates))

			create l_coordinates.make(1,0)

			assert("the range contains the coordinates 1,0 ", not l_list.has (l_coordinates))

			create l_coordinates.make(2,0)

			assert("the range contains the coordinates 2,0 ", not l_list.has (l_coordinates))

			create l_coordinates.make(3,0)

			assert("the range contains the coordinates 3,0 ", not l_list.has (l_coordinates))

			create l_coordinates.make(2,1)

			assert("the range not contains the coordinates 2,1 ", l_list.has (l_coordinates))

			create l_coordinates.make(1,2)

			assert("the range not contains the coordinates 1,2 ", l_list.has (l_coordinates))
		end

end


