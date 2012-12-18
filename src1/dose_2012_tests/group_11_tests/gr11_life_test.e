 note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "24/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	GR11_LIFE_TEST

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	tested_life : GR11_LIFE

	on_prepare
		do

		end

	on_clean
		do
			-- Similar to "on_prepare", this routine is automatically called after
			-- all tests have been executed.
		end

feature -- Test routines

	points_test
			--test to check if the points of life have a right value.
		note
			testing:  "covers/{GR11_LIFE}.points"
			testing:  "user/GR11"
		local
			l_tested_life : GR11_LIFE
		do
			create l_tested_life.make(1)
			assert("after creation points are 1", l_tested_life.points = 1)

			l_tested_life.set_points_of_life(2)
			assert("check if points are modified", l_tested_life.points = 2)

			l_tested_life.decrease_points
			assert("check if points are decreased by one", l_tested_life.points = 1)
		end

	destroyed_test
			--test to check if the ship is destroyed when life is zero
		note
			testing:  "covers/{GR11_LIFE}.destroyed"
			testing:  "user/GR11"
		local
			l_tested_life : GR11_LIFE

		do
			create l_tested_life.make(1)
			assert("after creation destroyed is set to false", not l_tested_life.destroyed)

			l_tested_life.decrease_points
			assert("when points are zero, the ship is destroyed", l_tested_life.destroyed)
		end

	shield_test
			--test to check if the ship is protected when shields are activeted
		note
			testing:  "covers/{GR11_LIFE}.shield"
			testing:  "user/GR11"

		local
			l_tested_life : GR11_LIFE

		do
			create l_tested_life.make(1)
			assert("after creation shields are not activated", not l_tested_life.shield)

			l_tested_life.activate_shield
			assert("after activation shield are activated", l_tested_life.shield)

			l_tested_life.decrease_points
			assert("shield blocks all attacks", l_tested_life.points = 1)

			l_tested_life.deactivate_shield
			assert("after deactivation, shield are not active", not l_tested_life.shield)
		end
end




