note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Pablo rodeghiero"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	BS_TEST_SET_TILE_SET

inherit
	EQA_TEST_SET

feature -- Test routines

	BS_TEST_SET_TILE_SET_ADD_TILE_SET_0
			-- New test routine
		note
			testing: "user/BS"
		local
			tile_set : BS_PLAYER
			rescued : BOOLEAN
		do
			create tile_set.make (1, 1)
			if (not rescued)
			then
				tile_set.add_tile_set (2)
			end
			rescue
				if (not rescued)
				then
					rescued := True
				end
			assert ("add_tile_set not launch an exceptioin", not rescued)
		end
end


