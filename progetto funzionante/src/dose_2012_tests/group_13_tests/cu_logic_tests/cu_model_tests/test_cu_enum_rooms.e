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
			-- New test routine
		note
			testing: "covers/{CU_ENUM_ROOMS}.get_full_name"
			testing: "user/CU"
		local
			index: INTEGER
			name: STRING
			rooms_names: ARRAY [STRING]
		do
			create rooms_names.make_filled ("", 0, 8)
			create room
			rooms_names.put ("kitchen",0)
			rooms_names.put ("ball_room",1)
			rooms_names.put ("conservatory",2)
			rooms_names.put ("dining_room",3)
			rooms_names.put ("billiard_room",4)
			rooms_names.put ("library",5)
			rooms_names.put ("lounge",6)
			rooms_names.put ("hall",7)
			rooms_names.put ("study",8)
			from
				index := 0
			until
				index > 8
			loop
				create name.make_from_string (room.get_full_name (index))
				assert ("Room name is correct", rooms_names.item (index).is_equal (name))
				index := index + 1
			end
		end

	test_get_full_name_1
			--New test routine
		note
			testing: "covers/{CU_ENUM_ROOMS}.get_full_name"
			testing: "user/CU"
		local
			index: INTEGER
			name: STRING
		do
			create room
			from
				index := 0
			until
				index > 8
			loop
				create name.make_from_string (room.get_full_name (index))
				assert ("Room name isn't empty", name /= "")
				index := index + 1
			end
		end

end
