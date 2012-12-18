note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	BS_TEST_SET_MOVE

inherit
	EQA_TEST_SET

feature -- Test routines

	BS_TEST_SET_MOVE_MAKE_0
		note
			testing: "user/BS"
		local
			tile : BS_TILE
			state : ARRAY2[INTEGER]
			position : BS_POSITION
			move: BS_MOVE
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create position.make (2, 3)
			create move.make (tile, position)
			assert ("Make create a move not empty", (not (move.get_position() = Void)) and (not (move.get_tile() = Void)))
		end

end
