note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IG_TILE

inherit
	EQA_TEST_SET

feature -- Test routines

	test_IG_TILE_make_with_hexes
			-- New test routine
		note
			testing:  "covers/{IG_TILE}.make_with_hexes"
			testing:  "user/IG"
		local
			a_tile		: IG_TILE
			first_hex 	: IG_HEX
			second_hex	: IG_HEX
		do
			create first_hex.make ("r")
			create second_hex.make ("b")
			create a_tile.make_with_hexes (first_hex,second_hex)
			assert ("First hex is red", a_tile.first_hex.color.is_equal ("r"))
			assert ("Second hex is blue", a_tile.second_hex.color.is_equal ("b"))
		end

end


