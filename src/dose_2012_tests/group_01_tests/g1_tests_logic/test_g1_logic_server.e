note
	description: "Summary description for {TEST_G1_LOGIC_SERVER}."
	author: "Jiang Wu - MILANO7"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"


class
	TEST_G1_LOGIC_SERVER

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
		do
		end

	on_clean
		do
		end


feature -- Test routines

	test_add_player
		note
			testing: "covers/{G1_LOGIC_SERVER}.add_player"
			testing: "user/G1"
		local
			game: G1_LOGIC_SERVER
			player_t : G1_PLAYER
		do
			create game.make()
			create player_t.make (005, "Player")
			assert ("Player 5 added on game: ", game.l_client_list.has (player_t))
		end

	test_remove_player
		note
			testing: "covers/{G1_LOGIC_SERVER}.remove_player"
			testing: "user/G1"
		local
			game: G1_LOGIC_SERVER
			player_t : G1_PLAYER
		do
			create game.make()
			create player_t.make (005, "Player")
			assert ("Player 5 removed: ", game.l_client_list.has (player_t).negated)
		end
end
