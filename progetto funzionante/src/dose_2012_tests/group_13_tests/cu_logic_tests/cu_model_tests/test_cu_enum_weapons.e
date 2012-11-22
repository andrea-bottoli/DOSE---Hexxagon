note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_ENUM_WEAPONS class of the Cluedo game.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_ENUM_WEAPONS

inherit
	EQA_TEST_SET

feature
	weapon: CU_ENUM_WEAPONS

feature -- Test routines

	test_get_full_name_0
			-- New test routine
		note
			testing: "covers/{CU_ENUM_WEAPONS}.get_full_name"
			testing: "user/CU"
		local
			index: INTEGER
			name: STRING
			weapons_names: ARRAY [STRING]
		do
			create weapons_names.make_filled ("", 0, 5)
			create weapon
			weapons_names.put ("scarlet",0)
			weapons_names.put ("mustard",1)
			weapons_names.put ("white",2)
			weapons_names.put ("green",3)
			weapons_names.put ("peacock",4)
			weapons_names.put ("plum",5)
			from
				index := 0
			until
				index > 5
			loop
				create name.make_from_string (weapon.get_full_name (index))
				assert ("Weapon name is correct", weapons_names.item (index).is_equal (name))
				index := index + 1
			end
		end

	test_get_full_name_1
			--New test routine
		note
			testing: "covers/{CU_ENUM_WEAPONS}.get_full_name"
			testing: "user/CU"
		local
			index: INTEGER
			name: STRING
		do
			create weapon
			from
				index := 0
			until
				index > 5
			loop
				create name.make_from_string (weapon.get_full_name (index))
				assert ("Weapon name isn't empty", name /= "")
				index := index + 1
			end
		end

end


