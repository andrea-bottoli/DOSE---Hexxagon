note
	description: "[
		Eiffel tests that can be executed by testing tool.
		This class provides test for the AI player of the TicTacToe game,
		encoded in the class `TTT_PLAYER_AI'.
		
		We demonstrate how to test private routines of a class.
	]"
	author: "Christian Estler"
	date: "14.11.2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_TTT_PLAYER_AI

inherit
	EQA_TEST_SET

inherit {NONE}
	TTT_PLAYER_AI
			-- We inherit the class `TTT_PLAYER_AI'; this way, we get access to it non-exported (i.e. private) routines.
			-- We write "inherit {NONE}" in addition to having a regular "inherit" clause. That is so-called "non-conforming"
			-- inheritance. It means that we get all the code from that class but do *not* establish a type relationship.
			-- So the class `EQA_TEST_SET' does not become a sub-type of `TTT_PLAYER_AI'. That makes it easier to handle
			-- name conflicts. For example, here we can simply rename the `{TTT_PLAYER}.default_create' (because
		rename
			default_create as ttt_default_create
		end


feature -- Test routines

	test_decide_a_move
			-- Test demonstrating that we can access private routine
			-- Tests if the AI player (randomly) picks the correct field if no other option is left
		note
			testing: "covers/{TTT_PLAYER_AI}.decide_a_move"
			testing: "user/TTT"
		local
			l_move: TUPLE [INTEGER, INTEGER]
		do
			create model
				-- the model is inherited
				-- we fill all the fields of the model except for one
			model.update_with_opponent_move (1, 1)
			model.update_with_opponent_move (1, 2)
			model.update_with_opponent_move (1, 3)
			model.update_with_opponent_move (2, 1)
			model.update_with_opponent_move (2, 2)
			model.update_with_opponent_move (2, 3)
			model.update_with_opponent_move (3, 1)
			model.update_with_opponent_move (3, 2)

			l_move := decide_a_move
				-- decide_a_move is also inherited

			assert("Only possible move correct:", l_move.is_equal ([3,3]))
		end

end


