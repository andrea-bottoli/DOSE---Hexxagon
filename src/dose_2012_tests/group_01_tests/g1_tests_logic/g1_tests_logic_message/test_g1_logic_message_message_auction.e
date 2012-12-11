note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Group1-Milano7"
	date: "21\11\2012"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MESSAGE_MESSAGE_AUCTION

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
			assert ("not_implemented", False)
		end

	on_clean
			-- <Precursor>
		do
			assert ("not_implemented", False)
		end

feature -- Test routines

	test_G1_Logic_message_message_auction
			-- New test routine
		note
			testing:  "user/G1", "covers/{G1_MESSAGE_AUCTION}"
		local
			msg_auction: G1_MESSAGE_AUCTION
		do
			create msg_auction.make_auction(100)
			assert ("Message Auction: Auction:100 ", msg_auction.price_auction.is_equal (100))
		end

end


