note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	BS_TEST_SET_TILE

inherit
	EQA_TEST_SET

feature -- Test routines

	BS_TEST_SET_TILE_MAKE_0
		note
			testing: "user/BS"
		local
			tile : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			assert ("Make create a state not empty", (not tile.get_state.is_empty()) and not (tile = Void))
		end

	BS_TEST_SET_TILE_ROTATE_RIGTH_0
		note
			testing: "user/BS"
		local
			tile : BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.rotate_right
			assert ("Rotate change column and row", tile.get_state.width = tile2.get_state.height and  tile2.get_state.width = tile.get_state.height)
		end

	BS_TEST_SET_TILE_ROTATE_RIGTH_1
		note
			testing: "user/BS"
		local
			tile : BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.rotate_right
			tile.rotate_right
			tile.rotate_right
			tile.rotate_right
			assert ("Rotate 4 time, is the same that not rotate", tile.get_state.is_equal (tile2.get_state))
		end

		BS_TEST_SET_TILE_ROTATE_LEFT_0
		note
			testing: "user/BS"
		local
			tile : BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.rotate_left
			assert ("Rotate change column and row", tile.get_state.width = tile2.get_state.height and  tile2.get_state.width = tile.get_state.height)
		end

	BS_TEST_SET_TILE_ROTATE_LEFT_1
		note
			testing: "user/BS"
		local
			tile : BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.rotate_left
			tile.rotate_left
			tile.rotate_left
			tile.rotate_left
			assert ("Rotate 4 time, is the same that not rotate", tile.get_state.is_equal (tile2.get_state))
		end

	BS_TEST_SET_TILE_ROTATE_0
		note
			testing: "user/BS"
		local
			tile : BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.rotate_left
			tile.rotate_left
			tile.rotate_right
			tile.rotate_right
			assert ("Rotate 2 time left and 2 time rigth, is the same that not rotate", tile.get_state.is_equal (tile2.get_state))
		end

	BS_TEST_SET_TILE_FLIP_HORIZONTAL_0
		note
			testing: "user/BS"
		local
			tile: BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.flip_horizontally
			assert("Flip dont change size of column and row", tile.get_state.height = tile2.get_state.height and tile.get_state.width=tile2.get_state.width)
		end

	BS_TEST_SET_TILE_FLIP_HORIZONTAL_1
		note
			testing: "user/BS"
		local
			tile: BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.flip_horizontally
			tile2.rotate_left
			tile2.rotate_left
			assert("Flip 1 time is the same that rotate 2 time", tile.get_state.is_equal (tile2.get_state))
		end


	BS_TEST_SET_TILE_FLIP_HORIZONTAL_2
		note
			testing: "user/BS"
		local
			tile: BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.flip_horizontally
			tile.flip_horizontally
			assert("Flip 2 time is the same that no flip", tile.get_state.is_equal (tile2.get_state))
		end

		BS_TEST_SET_TILE_FLIP_VERTICAL_0
		note
			testing: "user/BS"
		local
			tile: BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.flip_vertically
			assert("Flip dont change size of column and row", tile.get_state.height = tile2.get_state.height and tile.get_state.width=tile2.get_state.width)
		end

	BS_TEST_SET_TILE_FLIP_VERTICAL_1
		note
			testing: "user/BS"
		local
			tile: BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.flip_vertically
			tile2.rotate_left
			tile2.rotate_left
			assert("Flip 1 time is the same that rotate 2 time", tile.get_state.is_equal (tile2.get_state))
		end


	BS_TEST_SET_TILE_FLIP_VERTICAL_2
		note
			testing: "user/BS"
		local
			tile: BS_TILE
			tile2 : BS_TILE
			state : ARRAY2[INTEGER]
		do
			create state.make_filled (1, 2, 2)
			create tile.make (state, 2)
			create tile2.make (state, 2)
			tile.flip_vertically
			tile.flip_vertically
			assert("Flip 2 time is the same that no flip", tile.get_state.is_equal (tile2.get_state))
		end

end


