note
	description: "Summary description for {TEST_G1_LOGIC_MESSAGE_MESSAGE_TRADE}."
	author: "Jiang Wu - MILANO7"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MESSAGE_MESSAGE_TRADE

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

	test_make_trade
		note
			testing: "covers/{G1_MESSAGE_TRADE}.make_trade"
			testing: "user/G1"
		local
			msg_trade_t: G1_MESSAGE_TRADE
			p1, p2: G1_PLAYER
			d1, d2: G1_DEED
			c1, c2: G1_CARD
		do
			create p1.make (1, "Player 1")
			create p2.make (2, "Player 2")
			create d1.make_deed (100, 1, "Deed 1")
			create d2.make_deed (100, 2, "Deed 2")
			create c1.make_card (1, "Get out of jail", 0)
			create c2.make_card (2, "Get out of jail", 1)
			create msg_trade_t.make_trade (p1.id_player, d1.id_cell, c1.id, p2.id_player, d2.id_cell, c2.id, True)
			assert ("Message Trade: Player:5, Offer:10, Deed:5 : ", msg_trade_t.id_player1.is_equal (1) and msg_trade_t.id_player1.is_equal (2))
		end
end
