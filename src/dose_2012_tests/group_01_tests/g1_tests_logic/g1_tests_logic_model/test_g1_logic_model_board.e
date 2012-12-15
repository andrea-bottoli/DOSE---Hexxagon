note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_BOARD

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
		end

	on_clean
			-- <Precursor>
		do
		end

feature -- Test routines

	test_make
		note
			testing: "covers/{G1_BOARD}.make"
			testing: "user/G1"
		local
			board_t : G1_BOARD
			player_t : G1_PLAYER
		do
			create player_t.make (1, "hola")
			create board_t.make_with_player (player_t)
			assert ("not_implemented", true)
		end

	test_get_next_card_chance
		note
			testing: "covers/{G1_BOARD}.get_next_card_chance"
			testing: "user/G1"
		local
			board_t : G1_BOARD
		do
			create board_t.make
			assert ("not_implemented", True)
		end

	test_get_next_card_comunity
		note
			testing: "covers/{G1_BOARD}.get_next_card_comunity"
			testing: "user/G1"
		local
			board_t : G1_BOARD
		do
			create board_t.make
			assert ("not_implemented", True)
		end

	test_withdraw_bank
		note
			testing: "covers/{G1_BOARD}.withdraw_bank"
			testing: "user/G1"
		local
			board_t : G1_BOARD
			player_t : G1_PLAYER
		do
			create player_t.make (1, "player1")
			create board_t.make_with_player (player_t)
			board_t.withdraw_bank (1000)
			assert ("Money Bank: 49000", board_t.bank.money_available=49000)
		end

	test_deposit_bank
		note
			testing: "covers/{G1_BOARD}.deposit_bank"
			testing: "user/G1"
		local
			board_t : G1_BOARD
			bank_t : G1_BANK
		do
			create bank_t.make
			board_t.withdraw_bank (5000)
			board_t.deposit_bank (1000)
			assert ("Money Bank: 16000", bank_t.money_available.is_equal(46000))
		end

	test_move_player
		note
			testing: "covers/{G1_BOARD}.move_player"
			testing: "user/G1"
		local
			board_t : G1_BOARD
			player_t : G1_PLAYER
		do
			create board_t.make
			create player_t.make (2, "Player")
			assert ("not_implemented", True)
		end

end


