note
	description: "Summary description for {TEST_DO_ROBOT_JOIN_GAME}."
	author: "Alejandro Yaciuk"
	date: "20/11/12"
	revision: "1.0"

class
	TEST_DO_ROBOT_JOIN_GAME

inherit
	EQA_TEST_SET

feature -- Test routines

	test_set_join_game_0
			-- New test routine
		local
			robot: DO_ROBOT
		do
			create robot.join_game
			assert ("the robot joined the game.", robot.joined)
		end

	test_set_join_game_1
			-- New test routine
		local
			robot: DO_ROBOT
		do
			create robot.join_game
			assert ("the robot joined the game correctly.", not (robot.action_phase_done or robot.buy_phase_done or robot.robot_turn))
		end


end
