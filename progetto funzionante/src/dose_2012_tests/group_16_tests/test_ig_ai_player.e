note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"

	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IG_AI_PLAYER

inherit
	EQA_TEST_SET

feature {NONE} -- Events

feature -- Test routines

	test_ai_player_move
			-- Test the validity of an AI player's next move
		note
			testing:  "covers/{IG_AI_PLAYER}"
			testing:  "user/IG"
		local
			l_player: IG_AI_PLAYER
			l_logic: IG_LOGIC
			l_move: IG_MOVE
		do
			create l_logic
			create l_player.make_ai_player (l_logic, 1)
			l_move := l_player.next_move
			assert ("AI move is valid", l_logic.gameboard.is_move_valid (l_move))
		end

	test_ai_player_moves_all
			-- Test the validity of an AI player's next move
		note
			testing:  "covers/{IG_AI_PLAYER}"
			testing:  "user/IG"
		local
			l_player: IG_AI_PLAYER
			l_logic: IG_LOGIC
			l_move: IG_MOVE
			i: INTEGER
		do
			create l_logic
			create l_player.make_ai_player (l_logic, 1)

			from
				i := 0
			until
				i = 100
			loop
				i := i + 1
				l_move := l_player.next_move
				assert ("AI move is valid", l_logic.gameboard.is_move_valid (l_move))
			end
		end

	test_ai_player_name
			-- Test the name of the AI player
		note
			testing:  "covers/{IG_AI_PLAYER}"
			testing:  "user/IG"
		local
			l_player: IG_AI_PLAYER
		do
			create l_player.make_ai_player (create {IG_LOGIC}, 3)
			assert ("AI name not set yet", l_player.name.is_empty)
			l_player.set_name ("Wall-e")
			assert ("AI name player set", l_player.name.is_equal ("Wall-e"))
		end

end





