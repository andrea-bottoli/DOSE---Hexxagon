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

--	test_set_player_info_0
--	--  creation g5_player_info is incorrect
--	local
--		player_info: G5_PLAYER_INFO
--		name: STRING
--		zoomed_box: G5_ZOOMED_CARD_BOX
--	do
--		if not rescued then
--			name:=""
--		end
--		create zoomed_box.make
--		create player_info.make (name, "1", zoomed_box)
--		assert("Correct player name: "+player_info.player_name ,player_info.player_name /= void)
--	rescue
--		if not rescued then
--			name := "name_player"
--			rescued := true
--			retry
--		end
--	end
--
--	test_set_player_info_1
--	-- test verifies the correct creation g5_player_info
--	local
--		player_info: G5_PLAYER_INFO
--		zoom_box: G5_ZOOMED_CARD_BOX
--	do
--		create zoom_box.make
--		create player_info.make ("name_player","1",zoom_box)
--		assert("Correct player name",player_info.player_name /= void)
--	end
end
