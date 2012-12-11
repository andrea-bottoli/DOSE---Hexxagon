note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Eleytherios S. Benisis"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	G10_TILE_PULL_LOGIC_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	test_is_empty 	-- routine tests is empty routine of g10_tile_pull by creating a pile and initializing it by adding a tile and then checks if it is empty.
	note
		testing:  "user/G10"
	local
		pile : G10_TILE_PULL
		tile : G10_TILE
	do
		create pile.make()
		create tile.make()

		pile.add_tile_to_pile(tile)
		assert ("invalid observation of the pile list", pile.isempty = False)
	end

	test_generate_next 	-- routine tests the generate next pile of g10_tile_pull class by creating and initializing a new pile and then tries to generate (/take) a new tile from it.
	note
		testing:  "user/G10"
	local
		pile : G10_TILE_PULL
		tile : G10_TILE
	do
		create pile.make()
		create tile.make()

		pile.initialize_pile()
		assert ("pile generation failed",pile.generatenexttile() /= void)
	end

	test_add_tile_to_pile() -- routine tests the add tile to pile from g10_tile_pull class by inserting a tile in the pile list and then checks if pile is empty.
	note
		testing:  "user/G10"
	local
		pile : G10_TILE_PULL
		tile : G10_TILE
	do
		create pile.make()
		create tile.make()

		pile.add_tile_to_pile (tile)
		assert ("invalid insertion of tile",pile.isempty = False)
	end

	test_initialize_pile() -- routine tests the initialize pile routine from g10_tile_pile class by initializing the pile and then checks if it is empty.
	note
		testing:  "user/G10"
	local
		pile : G10_TILE_PULL
		tile : G10_TILE
	do
		create pile.make()
		create tile.make()

		pile.initialize_pile()
		assert ("invalid initialization of pile",pile.isempty = False)
	end

end


