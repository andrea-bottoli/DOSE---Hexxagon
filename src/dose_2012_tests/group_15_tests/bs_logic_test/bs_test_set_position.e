note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	BS_TEST_SET_POSITION

inherit
	EQA_TEST_SET

feature -- Test routines

	BS_TEST_SET_POSITION_MAKE_0
		note
			testing: "user/BS"
		local
			position : BS_POSITION
		do
			create position.make (1, 1)
			assert ("Make create a valid position", (position.x>0) and (position.y>0))
		end

	BS_TEST_SET_POSITION_MAKE_1
		note
			testing: "user/BS"
		local
			position : BS_POSITION
			rescued: BOOLEAN
		do
			if (False) then
				create position.make (0, 1)
			end
			assert ("Make doesn't create an invalid position", rescued)
			rescue
				if (not rescued) then
					rescued := True
					retry
				end
		end

	BS_TEST_SET_POSITION_X_0
		note
			testing: "user/BS"
		local
			position : BS_POSITION
			x : INTEGER
		do
			x := 3
			create position.make (x, 1)
			assert ("X return the right value of x", (x = position.x))
		end

	BS_TEST_SET_POSITION_Y_0
		note
			testing: "user/BS"
		local
			position : BS_POSITION
			y : INTEGER
		do
			y := 2
			create position.make (1, y)
			assert ("Y return the right value of y", (y = position.y))
		end

end
