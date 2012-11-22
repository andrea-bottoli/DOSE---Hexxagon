note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_ENUM_SUSPECTS class of the Cluedo game.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_ENUM_SUSPECTS

inherit
	EQA_TEST_SET

feature
	suspect: CU_ENUM_SUSPECTS

feature -- Test routines

	test_get_full_name_0
			-- New test routine
		note
			testing: "covers/{CU_ENUM_SUSPECTS}.get_full_name"
			testing: "user/CU"
		local
			index: INTEGER
			name: STRING
			suspects_names: ARRAY [STRING]
		do
			create suspects_names.make_filled ("", 0, 5)
			create suspect
			suspects_names.put ("scarlet",0)
			suspects_names.put ("mustard",1)
			suspects_names.put ("white",2)
			suspects_names.put ("green",3)
			suspects_names.put ("peacock",4)
			suspects_names.put ("plum",5)
			from
				index := 0
			until
				index > 5
			loop
				create name.make_from_string (suspect.get_full_name (index))
				assert ("Suspect name is correct", suspects_names.item (index).is_equal (name))
				index := index + 1
			end
		end

	test_get_full_name_1
			--New test routine
		note
			testing: "covers/{CU_ENUM_SUSPECTS}.get_full_name"
			testing: "user/CU"
		local
			index: INTEGER
			name: STRING
		do
			create suspect
			from
				index := 0
			until
				index > 5
			loop
				create name.make_from_string (suspect.get_full_name (index))
				assert ("Suspect name isn't empty", name /= "")
				index := index + 1
			end
		end
end


