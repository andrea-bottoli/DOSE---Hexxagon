note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_SUSPECT_CARD class of the Cluedo game.
	]"
	author: "German Lopez"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_SUSPECT_CARD

inherit
	EQA_TEST_SET

feature
	suspect_card: CU_SUSPECT_CARD

feature -- Test routines

	test_make_0
			-- New test routine
		note
			testing: "covers/{CU_SUSPECT_CARD}.make"
			testing: "user/CU"
		local
			c_suspect: INTEGER
			valid_suspect: BOOLEAN
		do
			c_suspect := 0
			valid_suspect := (c_suspect >= 0) and (c_suspect <= 5)
			create suspect_card.make (c_suspect)
			assert ("Is valid suspect card", valid_suspect)
		end

	test_make_1
			-- New test routine
		note
			testing: "covers/{CU_SUSPECT_CARD}.make"
			testing: "user/CU"
		local
			c_suspect: INTEGER
			valid_suspect: BOOLEAN
		do
			c_suspect := 5
			valid_suspect := (c_suspect >= 0) and (c_suspect <= 5)
			create suspect_card.make (c_suspect)
			assert ("Is valid suspect card", valid_suspect)
		end

	test_make_2
			-- New test routine
		note
			testing: "covers/{CU_SUSPECT_CARD}.make"
			testing: "user/CU"
		local
			c_suspect: INTEGER
			valid_suspect: BOOLEAN
		do
			c_suspect := 3
			valid_suspect := (c_suspect >= 0) and (c_suspect <= 5)
			create suspect_card.make (c_suspect)
			assert ("Is valid suspect card", valid_suspect)
		end

	test_make_3
			-- New test routine
		note
			testing: "covers/{CU_SUSPECT_CARD}.make"
			testing: "user/CU"
		local
			c_suspect: INTEGER
			valid_suspect: BOOLEAN
			rescued: BOOLEAN
		do
			c_suspect := 6
			valid_suspect := (c_suspect >= 0) and (c_suspect <= 5)
			if not rescued then
				create suspect_card.make (c_suspect)
			end
			assert ("Is invalid suspect card", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_make_4
			-- New test routine
		note
			testing: "covers/{CU_SUSPECT_CARD}.make"
			testing: "user/CU"
		local
			c_suspect: INTEGER
			valid_suspect: BOOLEAN
			rescued: BOOLEAN
		do
			c_suspect := -1
			valid_suspect := (c_suspect >= 0) and (c_suspect <= 5)
			if not rescued then
				create suspect_card.make (c_suspect)
			end
			assert ("Is invalid suspect card", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

end


