note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_ROOM_CARD class of the Cluedo game.
	]"
	author: "German Lopez"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_ROOM_CARD

inherit
	EQA_TEST_SET

feature
	room_card: CU_ROOM_CARD

feature -- Test routines

	test_make_0
			-- New test routine
		note
			testing: "covers/{CU_ROOM_CARD}.make"
			testing: "user/CU"
		local
			c_room: INTEGER
			valid_room: BOOLEAN
		do
			c_room := 0
			valid_room := (c_room >= 0) and (c_room <= 8)
			create room_card.make (c_room)
			assert ("Is valid room card", valid_room)
		end

	test_make_1
			-- New test routine
		note
			testing: "covers/{CU_ROOM_CARD}.make"
			testing: "user/CU"
		local
			c_room: INTEGER
			valid_room: BOOLEAN
		do
			c_room := 8
			valid_room := (c_room >= 0) and (c_room <= 8)
			create room_card.make (c_room)
			assert ("Is valid room card", valid_room)
		end

	test_make_2
			-- New test routine
		note
			testing: "covers/{CU_ROOM_CARD}.make"
			testing: "user/CU"
		local
			c_room: INTEGER
			valid_room: BOOLEAN
		do
			c_room := 4
			valid_room := (c_room >= 0) and (c_room <= 8)
			create room_card.make (c_room)
			assert ("Is valid room card", valid_room)
		end

	test_make_3
			-- New test routine
		note
			testing: "covers/{CU_ROOM_CARD}.make"
			testing: "user/CU"
		local
			c_room: INTEGER
			valid_room: BOOLEAN
			rescued: BOOLEAN
		do
			c_room := 9
			valid_room := (c_room >= 0) and (c_room <= 8)
			if not rescued then
				create room_card.make (c_room)
			end
			assert ("Is invalid room card", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_make_4
			-- New test routine
		note
			testing: "covers/{CU_ROOM_CARD}.make"
			testing: "user/CU"
		local
			c_room: INTEGER
			valid_room: BOOLEAN
			rescued: BOOLEAN
		do
			c_room := -1
			valid_room := (c_room >= 0) and (c_room <= 8)
			if not rescued then
				create room_card.make (c_room)
			end
			assert ("Is invalid room card", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

end


