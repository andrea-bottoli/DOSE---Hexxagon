note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ZB_LOGIC

inherit
	EQA_TEST_SET

feature -- Test routines

	test_ZB_LOGIC_activePlayer
			-- New test routine
		note
			testing:  "covers/{ZB_LOGIC}.isActivePlayer"
			testing:  "user/ZB"

		local
			l_logic: ZB_LOGIC
			l_player: ZB_PLAYER

		do
			assert ("Is the Player active:", l_logic.isActivePlayer(l_player).is_equal (FALSE))
		end



	test_ZB_LOGIC_playerState1
			-- New test routine
		note
			testing:  "covers/{ZB_LOGIC}.playerState"
			testing:  "user/ZB"

		local
			l_logic: ZB_LOGIC
			l_player: ZB_PLAYER

		do
			l_player.setState(1)

			assert ("Is the player's state:", l_logic.playerState(l_player).is_equal (1))
		end

	test_ZB_LOGIC_playerState2
			-- New test routine
		note
			testing:  "covers/{ZB_LOGIC}.playerState"
			testing:  "user/ZB"

		local
			l_logic: ZB_LOGIC
			l_player: ZB_PLAYER

		do
			l_player.setState(2)

			assert ("Is the player's state:", l_logic.playerState(l_player).is_equal (2))
		end

	test_ZB_LOGIC_playerState3
			-- New test routine
		note
			testing:  "covers/{ZB_LOGIC}.playerState"
			testing:  "user/ZB"

		local
			l_logic: ZB_LOGIC
			l_player: ZB_PLAYER

		do
			l_player.setState(3)

			assert ("Is the player's state:", l_logic.playerState(l_player).is_equal (3))
		end

end


