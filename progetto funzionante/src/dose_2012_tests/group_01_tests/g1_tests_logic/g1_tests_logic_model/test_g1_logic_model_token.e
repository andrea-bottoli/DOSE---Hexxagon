note
	description: "Summary description for {TEST_G1_LOGIC_MODEL_TOKEN}."
	author: "Jiang Wu - MILANO7"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"


class
	TEST_G1_LOGIC_MODEL_TOKEN
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

	test_make
		note
			testing: "covers/{G1_TOKEN}.make"
			testing: "user/G1"
		local
			token_t : G1_TOKEN
		do
			create token_t.make ("Horse")
			assert ("The selected token is Horse: ", token_t.l_name.is_equal("Horse"))
		end

	test_change_position
		note
			testing: "covers/{G1_TOKEN}.change_position"
			testing: "user/G1"
		local
			token_t : G1_TOKEN
		do
			create token_t.make ("Horse")
			token_t.change_position (25)
			assert ("Token is moved to cell 25: ", token_t.l_position.is_equal (25))
		end

	test_set_player
		note
			testing: "covers/{G1_TOKEN}.set_player"
			testing: "user/G1"
		local
			token_t : G1_TOKEN
			player_t : G1_PLAYER
		do
			create token_t.make ("Horse")
			create player_t.make (5)
			token_t.set_player (player_t)
			assert ("Token Horse has assigned to player 5: ", token_t.l_player.get_id_player.is_equal (5))
		end

end
