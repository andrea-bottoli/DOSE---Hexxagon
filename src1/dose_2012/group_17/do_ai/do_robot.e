note
	description: "Summary description for {DO_ROBOT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_ROBOT

create
	join_game

feature
joined: BOOLEAN
action_phase_done: BOOLEAN
buy_phase_done: BOOLEAN
robot_turn: BOOLEAN

	join_game
		require
			--pre condition
		do
			--wake the robot
			joined := true
			action_phase_done := false
			buy_phase_done := false
			robot_turn := false
		ensure
			--post condition
		end

	turn
		require
			--pre condition
			joined = true
		do
			--wake the robot
			robot_turn := true
		ensure
			--post condition
		end

	run_action_phase
		require
			--pre condition
			joined = true
			robot_turn = true
		do
			-- action phase starts
			action_phase_done := true
		ensure
			--post condition
		end

	run_buy_phase
		require
			joined = true
			robot_turn = true
			action_phase_done = true
		do
			-- buy phase starts
			buy_phase_done := true
		ensure
			--post condition
		end

	run_clean_phase
		require
			--pre condition
			joined = true
			robot_turn = true
			buy_phase_done = true
		do
			--clean phase starts
			buy_phase_done := false
			action_phase_done := false
			robot_turn := false

		ensure
			-- post condition
		end

end
