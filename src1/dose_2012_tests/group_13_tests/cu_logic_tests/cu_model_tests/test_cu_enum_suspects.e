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
			--New test routine
		note
			testing: "covers/{CU_ENUM_SUSPECTS}.get_full_name"
			testing: "user/CU"
		local
			id_suspect: INTEGER
			name_suspect: STRING
			valid_suspect: BOOLEAN
		do
			id_suspect := 0
			create suspect
			create name_suspect.make_from_string (suspect.get_full_name (id_suspect))
			valid_suspect := (id_suspect >= 0) and (id_suspect <= 5)
			assert ("The suspect is valid and name isn't empty", (name_suspect /= "") and valid_suspect)
		end

	test_get_full_name_1
			--New test routine
		note
			testing: "covers/{CU_ENUM_SUSPECTS}.get_full_name"
			testing: "user/CU"
		local
			id_suspect: INTEGER
			name_suspect: STRING
			valid_suspect: BOOLEAN
		do
			id_suspect := 5
			create suspect
			create name_suspect.make_from_string (suspect.get_full_name (id_suspect))
			valid_suspect := (id_suspect >= 0) and (id_suspect <= 5)
			assert ("The suspect is valid and name isn't empty", (name_suspect /= "") and valid_suspect)
		end

	test_get_full_name_2
			--New test routine
		note
			testing: "covers/{CU_ENUM_SUSPECTS}.get_full_name"
			testing: "user/CU"
		local
			id_suspect: INTEGER
			name_suspect: STRING
			valid_suspect: BOOLEAN
		do
			id_suspect := 1
			create suspect
			create name_suspect.make_from_string (suspect.get_full_name (id_suspect))
			valid_suspect := (id_suspect >= 0) and (id_suspect <= 5)
			assert ("The suspect is valid and name isn't empty", (name_suspect /= "") and valid_suspect)
		end

	test_get_full_name_3
			--New test routine
		note
			testing: "covers/{CU_ENUM_SUSPECTS}.get_full_name"
			testing: "user/CU"
		local
			id_suspect: INTEGER
			name_suspect: STRING
			valid_suspect: BOOLEAN
			rescued: BOOLEAN
		do
			id_suspect := -1
			valid_suspect := (id_suspect >= 0) and (id_suspect <= 5)
			if not rescued then
				create suspect
				create name_suspect.make_from_string (suspect.get_full_name (id_suspect))
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
			testing: "covers/{CU_ENUM_SUSPECTS}.get_full_name"
			testing: "user/CU"
		local
			id_suspect: INTEGER
			name_suspect: STRING
			valid_suspect: BOOLEAN
			rescued: BOOLEAN
		do
			id_suspect := 6
			valid_suspect := (id_suspect >= 0) and (id_suspect <= 5)
			if not rescued then
				create suspect
				create name_suspect.make_from_string (suspect.get_full_name (id_suspect))
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
			testing: "covers/{CU_ENUM_SUSPECTS}.get_list"
			testing: "user/CU"
		local
			list_suspects: LINKED_LIST[INTEGER]
			valid_suspects: BOOLEAN
		do
			create suspect
			list_suspects := suspect.get_list
			valid_suspects := True
			from
				list_suspects.start
			until
				(list_suspects.off) or not (valid_suspects)
			loop
				if (list_suspects.item >= 0) and (list_suspects.item <= 5) then
					list_suspects.forth
				else
					valid_suspects := False
				end
			end
			assert ("List of suspects isn't invalid", valid_suspects)
		end

end
