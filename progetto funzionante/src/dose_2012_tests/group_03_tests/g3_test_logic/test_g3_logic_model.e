note
	description: "Test for model"
	author: "Lydatakis Georgiou Kateros"
	date: "$Date$"
	revision: "$0.1$"
	testing: "type/manual"

class
	TEST_G3_LOGIC_MODEL

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			--assert ("not_implemented", False)
		end

	on_clean
			-- <Precursor>
		do
			--assert ("not_implemented", False)
		end

feature -- Test routines

	TEST_G3_LOGIC_MODEL
			-- New test routine
		do
			--assert ("not_implemented", False)
		end



		test_turn
		local
			player:G3_PLAYER
			pid:G3_PLAYER_ID
			m:G3_MODEL
		do
			create player
			create pid.make
			create m.make

			--d.setid (m.turn)
			--c.setid (d)
			assert ("player turn 1:", player.id.is_equal (pid))

		end

		test_team_info
		local
			m : G3_MODEL
		do
			create m.make
			assert ("team score",m.team_info (1)/=void)
		end

		test_get_player
		local
			m : G3_MODEL
			player:G3_PLAYER
			pid:G3_PLAYER_ID
		do
			create m.make
			create player
			create pid.make
			player:=m.get_player (pid)
			assert ("get player",player/=void)
		end

		test_shuffle
		local
			m : G3_MODEL
		do
			create m.make
			assert ("shuffle",m.shuffle/=void)
		end

end


