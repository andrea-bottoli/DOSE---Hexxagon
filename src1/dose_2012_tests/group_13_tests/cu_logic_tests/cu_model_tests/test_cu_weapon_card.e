note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_WEAPON_CARD class of the Cluedo game.
	]"
	author: "German Lopez"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_WEAPON_CARD

inherit
	EQA_TEST_SET

feature
	weapon_card: CU_WEAPON_CARD

feature -- Test routines

	test_make_0
			-- New test routine
		note
			testing: "covers/{CU_WEAPON_CARD}.make"
			testing: "user/CU"
		local
			c_weapon: INTEGER
			valid_weapon: BOOLEAN
		do
			c_weapon := 0
			valid_weapon := (c_weapon >= 0) and (c_weapon <= 5)
			create weapon_card.make (c_weapon)
			assert ("Is valid room card", valid_weapon)
		end

	test_make_1
			-- New test routine
		note
			testing: "covers/{CU_WEAPON_CARD}.make"
			testing: "user/CU"
		local
			c_weapon: INTEGER
			valid_weapon: BOOLEAN
		do
			c_weapon := 5
			valid_weapon := (c_weapon >= 0) and (c_weapon <= 5)
			create weapon_card.make (c_weapon)
			assert ("Is valid room card", valid_weapon)
		end

	test_make_2
			-- New test routine
		note
			testing: "covers/{CU_WEAPON_CARD}.make"
			testing: "user/CU"
		local
			c_weapon: INTEGER
			valid_weapon: BOOLEAN
		do
			c_weapon := 2
			valid_weapon := (c_weapon >= 0) and (c_weapon <= 5)
			create weapon_card.make (c_weapon)
			assert ("Is valid room card", valid_weapon)
		end

	test_make_3
			-- New test routine
		note
			testing: "covers/{CU_WEAPON_CARD}.make"
			testing: "user/CU"
		local
			c_weapon: INTEGER
			valid_weapon: BOOLEAN
			rescued: BOOLEAN
		do
			c_weapon := 6
			valid_weapon := (c_weapon >= 0) and (c_weapon <= 5)
			if not rescued then
				create weapon_card.make (c_weapon)
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
			testing: "covers/{CU_WEAPON_CARD}.make"
			testing: "user/CU"
		local
			c_weapon: INTEGER
			valid_weapon: BOOLEAN
			rescued: BOOLEAN
		do
			c_weapon := -1
			valid_weapon := (c_weapon >= 0) and (c_weapon <= 5)
			if not rescued then
				create weapon_card.make (c_weapon)
			end
			assert ("Is invalid room card", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end
end


