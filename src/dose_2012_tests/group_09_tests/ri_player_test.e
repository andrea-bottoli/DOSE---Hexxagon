note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	RI_PLAYER_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	test_player_creation
		note
			testing : "Testing player"
			-- New test routine
		local
			test_player : RI_PLAYER
		do
			--create test_player.make
			assert("Non-void test_player",test_player /=void)
			assert("Non-empty Name",test_player.name.count > 3)
			assert("Non-zero Id",test_player.id >0)
			assert("Non wild color",test_player.color.count > 1)

		end

end


