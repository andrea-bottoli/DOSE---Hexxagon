note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Crete4 Team"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	G20_AI_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines
	test_ai_core
		-- New test routine
		note
			testing: "G20_AICORE"
		local
			l_ai_core: G20_AICORE
			l_move: G20_MOVEMENT
			l_player: INTEGER
		do
			create l_ai_core.make
			assert ("AI not void",l_move /=Void)
		end

end
