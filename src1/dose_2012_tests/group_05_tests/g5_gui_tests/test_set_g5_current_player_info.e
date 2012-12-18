note
	description: "Summary description for {TEST_SET_G5_CURRENT_PLAYER_AND_BOARD}."
	author: "Team RioCuarto4- Vilma Ruth Tito"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_CURRENT_PLAYER_INFO

inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

feature -- Test routines

--	test_set_current_player_info_0
--	local
--		current_player_info: G5_CURRENT_PLAYER_AND_BOARD
--		point:INTEGER
--	do
--		point:= 3
--		create current_player_info.make
--	--	current_player_info.set_action_points (point)
--	--	assert("instance of G5_CURRENT_PLAYER_INFO is correct", current_player_info.action_points = 3)
--	assert("dsadsa", true)
--	end

--	test_set_current_player_info_1
--	local
--		current_player_info: G5_CURRENT_PLAYER_INFO
--		name: STRING
--	do
--		create current_player_info.make (name)
--		if not rescued then
--			name:= ""
--		end
--		current_player_info.set_current_player_name(name)
--		assert("name of G5_CURRENT_PLAYER_INFO is correct",rescued)
--	rescue
--		if not rescued then
--			rescued := True
--			name:= "my_name"
--			retry
--		end
--	end
end
