note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_ENUM_ROOMS class of the Cluedo game.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_ENUM_ROOMS

inherit
	EQA_TEST_SET

feature
	room: CU_ENUM_ROOMS

feature -- Test routines

	test_get_full_name_0
			--New test routine
		note
			testing: "covers/{CU_ENUM_ROOMS}.get_full_name"
			testing: "user/CU"
		local
			id_room: INTEGER
			name_room: STRING
			valid_room: BOOLEAN
		do
			id_room := 0
			create room
			create name_room.make_from_string (room.get_full_name (id_room))
			valid_room := (id_room >= 0) and (id_room <= 8)
			assert ("The room is valid and name isn't empty", (name_room /= "") and valid_room)
		end

	test_get_full_name_1
			--New test routine
		note
			testing: "covers/{CU_ENUM_ROOMS}.get_full_name"
			testing: "user/CU"
		local
			id_room: INTEGER
			name_room: STRING
			valid_room: BOOLEAN
		do
			id_room := 8
			create room
			create name_room.make_from_string (room.get_full_name (id_room))
			valid_room := (id_room >= 0) and (id_room <= 8)
			assert ("The room is valid and name isn't empty", (name_room /= "") and valid_room)
		end

	test_get_full_name_2
			--New test routine
		note
			testing: "covers/{CU_ENUM_ROOMS}.get_full_name"
			testing: "user/CU"
		local
			id_room: INTEGER
			name_room: STRING
			valid_room: BOOLEAN
		do
			id_room := 2
			create room
			create name_room.make_from_string (room.get_full_name (id_room))
			valid_room := (id_room >= 0) and (id_room <= 8)
			assert ("The room is valid and name isn't empty", (name_room /= "") and valid_room)
		end

	test_get_full_name_3
			--New test routine
		note
			testing: "covers/{CU_ENUM_ROOMS}.get_full_name"
			testing: "user/CU"
		local
			id_room: INTEGER
			name_room: STRING
			valid_room: BOOLEAN
			rescued: BOOLEAN
		do
			id_room := -1
			valid_room := (id_room >= 0) and (id_room <= 8)
			if not rescued then
				create room
				create name_room.make_from_string (room.get_full_name (id_room))
			end
			assert ("Is invalid room name", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end


	test_get_full_name_4
			--New test routine
		note
			testing: "covers/{CU_ENUM_ROOMS}.get_full_name"
			testing: "user/CU"
		local
			id_room: INTEGER
			name_room: STRING
			valid_room: BOOLEAN
			rescued: BOOLEAN
		do
			id_room := 9
			valid_room := (id_room >= 0) and (id_room <= 8)
			if not rescued then
				create room
				create name_room.make_from_string (room.get_full_name (id_room))
			end
			assert ("Is invalid room name", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_get_list
			--New test routine
		note
			testing: "covers/{CU_ENUM_ROOMS}.get_list"
			testing: "user/CU"
		local
			list_rooms: LINKED_LIST[INTEGER]
			valid_rooms: BOOLEAN
		do
			create room
			list_rooms := room.get_list
			valid_rooms := True
			from
				list_rooms.start
			until
				(list_rooms.off) or not (valid_rooms)
			loop
				if (list_rooms.item >= 0) and (list_rooms.item <= 8) then
					list_rooms.forth
				else
					valid_rooms := False
				end
			end
			assert ("List of rooms isn't invalid", valid_rooms)
		end

end
