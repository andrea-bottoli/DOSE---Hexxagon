class 
	G19_BOT_TEST

inherit
	EQA_TEST_SET

feature

	test_build_on_reqired_cells(player: G19_BOT)
		local
			game: G19_GAME_MOCK
			map: G19_MAP_MOCK
			cells: ARRAY_SET[TUPLE[x: INTEGER; y: INTEGER]]		
		do
			create cells.make(3)
			cells.put([1, 1])
			cells.put([1, 2])
			cells.put([1, 3])

			create map.make(cells)

			create game.make(map)

		end


	test_fail_for_void_game(player: G19_BOT)
		local
			game: G19_GAME_MOCK	
		do
			create game.make(void)
			assert("Failed test for void game", game)

		end


	test_fail_for_void_map(player: G19_BOT)
		local
			map: G19_MAP_MOCK	
		do
			create map.make(void)
			assert("Failed test for void map", map)

		end

	test_fail_for_empty_cells(player: G19_BOT)
		local
			cells: ARRAY_SET[TUPLE[x: INTEGER; y: INTEGER]]		
		do
			create cells.make(3)

			create map.make(cells)
			assert("Failed test for empty cells", map)

		end

	test_fail_for_void_cells(player: G19_BOT)
		local
			cells: ARRAY_SET[TUPLE[x: INTEGER; y: INTEGER]]		
		do
			create cells.make(void)
			assert("Failed test for void cells", cells)
			
		end

end