note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Eleytherios S. Benisis"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	G10_PLAYER_LOGIC_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	test_set_current_player	-- routine tests the setcurrentplayer routine by inserting a player to the players list and then tries to retieve him.
	note
		testing:  "user/G10"
	local
		players : G10_PLAYERS
		player : G10_PLAYER
		set_num : INTEGER
	do
		create players.make()
		create player.make()

		set_num := players.setplayer (player)
		assert ("invalid access of the current player",players.getcurrentplayer() = set_num)
	end

	test_get_current_player	-- routine tests the getcurrentplayer routine by inserting a player to the players list and then tries to retieve him.
	note
		testing:  "user/G10"
	local
		players : G10_PLAYERS
		player : G10_PLAYER
		set_num : INTEGER
	do
		create players.make()
		create player.make()

		set_num := players.setplayer (player)
		assert ("invalid access of the current player",players.getcurrentplayer() = set_num)
	end

end


