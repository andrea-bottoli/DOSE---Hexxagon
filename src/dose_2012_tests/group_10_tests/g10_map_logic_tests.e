note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Eleytherios S. Benisis"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	G10_MAP_LOGIC_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	test_put_tile -- tests the put_tile routine of g10_map class by insertng a tile to pos in the terrain and then getting it back with get tile
	note
		testing:  "user/G10"
	local
		map : G10_MAP
		pos : G10_POSITION
		player : INTEGER
		tile : G10_TILE
		--bool_res : BOOLEAN
	do
		create map.make()
		create pos.make()
		create tile.make()
		pos.set_x(1)
		pos.set_y(1)

		map.put_tile (tile , pos , player)
		assert ("invalid inserrtion of put tile routine", map.get_tile (pos.x , pos.y) = tile)
	end

	test_get_tile -- tests the get_tile routine of g10_map class by insertng a tile to pos in the terrain and then getting it back with get tile
	note
		testing:  "user/G10"
	local
		map : G10_MAP
		pos : G10_POSITION
		player : INTEGER
		tile : G10_TILE
		--bool_res : BOOLEAN
	do
		create map.make()
		create pos.make()
		create tile.make()
		pos.set_x(1)
		pos.set_y(1)

		map.put_tile (tile , pos , player)
		assert ("invalid access to map of get pile routine", map.get_tile (pos.x , pos.y) = tile)
	end

	test_is_empty -- routine tests the is empty routine of g10_map by inserting a tile in the pos in the terrain and then tries to retrieve it.
	note
		testing:  "user/G10"
	local
		map : G10_MAP
		pos : G10_POSITION
		player : INTEGER
		tile : G10_TILE
		--bool_res : BOOLEAN
	do
		create map.make()
		create pos.make()
		create tile.make()
		pos.set_x(1)
		pos.set_y(1)

		map.put_tile (tile , pos , player)

		assert ("ivalid map observation for empty tile ", map.isempty(pos) = True)
	end

end


