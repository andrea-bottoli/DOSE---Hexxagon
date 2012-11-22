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
		do
			create msg_trade_t.make_trade (5, 10, 5)
			assert ("Message Trade: Player:5, Offer:10, Deed:5 : ", msg_trade_t.id_player.is_equal (5) and msg_trade_t.id_deed_offered.is_equal (5) and msg_trade_t.price_offered.is_equal (10))
		end
end
