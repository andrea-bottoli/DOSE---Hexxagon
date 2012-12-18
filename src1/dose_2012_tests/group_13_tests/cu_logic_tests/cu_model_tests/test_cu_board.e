note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_BOARD class of the Cluedo game.
	]"
	author: "German Lopez"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_BOARD

inherit
	EQA_TEST_SET

feature {NONE}

	board: CU_BOARD

feature -- Test routines

	test_make
			-- New test routine... Initialize the board
		note
			testing: "covers/{CU_BOARD}.make"
			testing: "user/CU"
		do
			create board.make
			assert ("The board is initialized:", board.board /= void)
		end

	test_find_room_0
			-- This is used to find a room in the board of game
		note
			testing: "covers/{CU_BOARD}.find_room"
			testing: "user/CU"
		local
			id_room: INTEGER
			room: CU_COORDINATE
		do
			id_room := 0
			create board.make
			if (id_room >= 0) and (id_room <=8) then
				room := board.find_room (id_room)
				if attached {CU_ROOM} board.board.item (room.x, room.y) as l_room then
					assert ("The room is finded:", l_room.room_id = id_room)
				end
			end
		end

	test_find_room_1
			-- This is used to find a room in the board of game
		note
			testing: "covers/{CU_BOARD}.find_room"
			testing: "user/CU"
		local
			id_room: INTEGER
			room: CU_COORDINATE
		do
			id_room := 8
			create board.make
			if (id_room >= 0) and (id_room <=8) then
				room := board.find_room (id_room)
				if attached {CU_ROOM} board.board.item (room.x, room.y) as l_room then
					assert ("The room is finded:", l_room.room_id = id_room)
				end
			end
		end

	test_find_room_2
			-- This is used to find a room in the board of game
		note
			testing: "covers/{CU_BOARD}.find_room"
			testing: "user/CU"
		local
			id_room: INTEGER
			room: CU_COORDINATE
		do
			id_room := 3
			create board.make
			if (id_room >= 0) and (id_room <=8) then
				room := board.find_room (id_room)
				if attached{CU_ROOM} board.board.item (room.x, room.y) as l_room then
					assert ("The room is finded:", l_room.room_id = id_room)
				end
			end


		end

	test_find_room_3
			-- This is used to find a room in the board of game
		note
			testing: "covers/{CU_BOARD}.find_room"
			testing: "user/CU"
		local
			id_room: INTEGER
			room: CU_COORDINATE
			rescued: BOOLEAN
		do
			id_room := -1
			if not rescued then
				create board.make
			end
			if (id_room >= 0) and (id_room <=8) then
				room := board.find_room (id_room)
			end
			assert ("The room is not finded. That is invalid:", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_find_room_4
			-- This is used to find a room in the board of game
		note
			testing: "covers/{CU_BOARD}.find_room"
			testing: "user/CU"
		local
			id_room: INTEGER
			room: CU_COORDINATE
			rescued: BOOLEAN
		do
			id_room := 9
			if not rescued then
				create board.make
			end
			if (id_room >= 0) and (id_room <=8) then
				room := board.find_room (id_room)
			end
			assert ("The room is not finded. That is invalid:", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

end
