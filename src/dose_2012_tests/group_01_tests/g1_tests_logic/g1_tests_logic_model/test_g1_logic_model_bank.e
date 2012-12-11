note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_BANK

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
			testing: "covers/{G1_BANK}.make"
			testing: "user/G1"
		local
			bank_t : G1_BANK
		do
			create bank_t.make
			assert ("The money available is 20000 ", bank_t.money_available.is_equal(20000))
		end

	test_withdraw_money
	    note
			testing: "covers/{G1_BANK}.withdraw_money"
			testing: "user/G1"
		local
			bank_t : G1_BANK
		do
			create bank_t.make
			bank_t.withdraw_money (5000)
			assert ("The money available is 15000 ", bank_t.money_available.is_equal(15000))
		end

	test_deposit_money
	    note
			testing: "covers/{G1_BANK}.deposit_money"
			testing: "user/G1"
		local
			bank_t : G1_BANK
		do
			create bank_t.make
			bank_t.withdraw_money (5000)
			bank_t.deposit_money (2000)
			assert ("The money available is 17000 ", bank_t.money_available.is_equal(17000))
		end
end


