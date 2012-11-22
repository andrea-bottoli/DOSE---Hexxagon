note
	description: "Summary description for {TEST_SET_G5_PLAYER_INFO}."
	author: "Team RioCuarto4- Vilma Ruth Tito"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_PLAYER_INFO

inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

feature -- Test routines

	test_set_player_info_0
	--  creation g5_player_info is incorrect
	local
		player_info: G5_PLAYER_INFO
		name: STRING
	do
		if not rescued then
			name:=""
		end
		create player_info.make (name)
		assert("Correct player name: "+player_info.player_name ,player_info.player_name /= void)
	rescue
		if not rescued then
			name := "name_player"
			rescued := true
			retry
		end
	end

	test_set_player_info_1
	-- test verifies the correct creation g5_player_info
	local
		player_info: G5_PLAYER_INFO
	do
		create player_info.make ("name_player")
		assert("Correct player name",player_info.player_name /= void)
	end
end
