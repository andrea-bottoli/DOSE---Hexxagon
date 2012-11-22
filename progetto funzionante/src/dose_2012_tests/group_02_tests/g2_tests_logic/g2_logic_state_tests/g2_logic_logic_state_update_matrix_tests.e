note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "RioCuarto8"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_STATE_UPDATE_MATRIX_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	g2_logic_logic_state_update_matrix_tests
			-- Create a G2_LOGIC_STATE and check update_matrix feature.
		note
			testing:  "user/G2"
		local
			logic_state: G2_LOGIC_STATE
			e_matrix: ARRAY2 [BOOLEAN]
			rescued: BOOLEAN
		do
			if not rescued then
				--create logic_state.make()
				logic_state.update_matrix(e_matrix)
			end
			assert ("e_matrix is void", rescued)
			rescue
				if not rescued then
					rescued:= true
				end
				retry
		end

end


