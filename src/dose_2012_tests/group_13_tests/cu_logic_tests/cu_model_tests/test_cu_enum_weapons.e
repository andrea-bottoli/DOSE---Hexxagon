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
			--New test routine
		note
			testing: "covers/{CU_ENUM_WEAPONS}.get_full_name"
			testing: "user/CU"
		local
			id_weapon: INTEGER
			name_weapon: STRING
			valid_weapon: BOOLEAN
		do
			id_weapon := 0
			create weapon
			create name_weapon.make_from_string (weapon.get_full_name (id_weapon))
			valid_weapon := (id_weapon >= 0) and (id_weapon <= 5)
			assert ("The weapon is valid and name isn't empty", (name_weapon /= "") and valid_weapon)
		end

	test_get_full_name_1
			--New test routine
		note
			testing: "covers/{CU_ENUM_WEAPONS}.get_full_name"
			testing: "user/CU"
		local
			id_weapon: INTEGER
			name_weapon: STRING
			valid_weapon: BOOLEAN
		do
			id_weapon := 5
			create weapon
			create name_weapon.make_from_string (weapon.get_full_name (id_weapon))
			valid_weapon := (id_weapon >= 0) and (id_weapon <= 5)
			assert ("The weapon is valid and name isn't empty", (name_weapon /= "") and valid_weapon)
		end

	test_get_full_name_2
			--New test routine
		note
			testing: "covers/{CU_ENUM_WEAPONS}.get_full_name"
			testing: "user/CU"
		local
			id_weapon: INTEGER
			name_weapon: STRING
			valid_weapon: BOOLEAN
		do
			id_weapon := 4
			create weapon
			create name_weapon.make_from_string (weapon.get_full_name (id_weapon))
			valid_weapon := (id_weapon >= 0) and (id_weapon <= 5)
			assert ("The weapon is valid and name isn't empty", (name_weapon /= "") and valid_weapon)
		end

	test_get_full_name_3
			--New test routine
		note
			testing: "covers/{CU_ENUM_WEAPONS}.get_full_name"
			testing: "user/CU"
		local
			id_weapon: INTEGER
			name_weapon: STRING
			valid_weapon: BOOLEAN
			rescued: BOOLEAN
		do
			id_weapon := -1
			valid_weapon := (id_weapon >= 0) and (id_weapon <= 5)
			if not rescued then
				create weapon
				create name_weapon.make_from_string (weapon.get_full_name (id_weapon))
			end
			assert ("Is invalid suspect name", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_get_full_name_4
			--New test routine
		note
			testing: "covers/{CU_ENUM_WEAPONS}.get_full_name"
			testing: "user/CU"
		local
			id_weapon: INTEGER
			name_weapon: STRING
			valid_weapon: BOOLEAN
			rescued: BOOLEAN
		do
			id_weapon := 6
			valid_weapon := (id_weapon >= 0) and (id_weapon <= 5)
			if not rescued then
				create weapon
				create name_weapon.make_from_string (weapon.get_full_name (id_weapon))
			end
			assert ("Is invalid suspect name", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_get_list
			--New test routine
		note
			testing: "covers/{CU_ENUM_WEAPONS}.get_list"
			testing: "user/CU"
		local
			list_weapons: LINKED_LIST[INTEGER]
			valid_weapons: BOOLEAN
		do
			create weapon
			list_weapons := weapon.get_list
			valid_weapons := True
			from
				list_weapons.start
			until
				(list_weapons.off) or not (valid_weapons)
			loop
				if (list_weapons.item >= 0) and (list_weapons.item <= 5) then
					list_weapons.forth
				else
					valid_weapons := False
				end
			end
			assert ("List of weapons isn't invalid", valid_weapons)
		end

end


