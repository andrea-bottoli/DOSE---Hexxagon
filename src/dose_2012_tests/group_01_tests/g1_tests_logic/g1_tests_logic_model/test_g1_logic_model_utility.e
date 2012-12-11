note
	description: "Summary description for {TEST_G1_LOGIC_MODEL_UTILITY}."
	author: "Jiang Wu - MILANO7"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_UTILITY

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

	test_make_utility
		note
			testing: "covers/{G1_UTILITY}.make_utility"
			testing: "user/G1"
		local
			utility_t: G1_UTILITY
		do
			create utility_t.make_utility (14, "Electrical")
			assert ("Utility: 14, Electrical, 150, 75: ", utility_t.id_cell.is_equal (14) and utility_t.name_cell.is_equal ("Electrical") and utility_t.price.is_equal (150) and utility_t.mortgaged_value.is_equal (75))
		end

	test_l_rent_value
		note
			testing: "covers/{G1_UTILITY}.l_rent_value"
			testing: "user/G1"
		local
			utility_t: G1_UTILITY
			owner_t: G1_PLAYER
		do
			create utility_t.make_utility (14, "Electrical")
			create owner_t.make (2, "Player")
			utility_t.set_owner (owner_t)
			assert ("Rent value, not same owner, dice 12: ", utility_t.l_rent_value (12).is_equal (48))
		end

--	test_set_same_owner
--		note
--			testing: "covers/{G1_UTILITY}.set_same_owner"
--			testing: "user/G1"
--		local
--			utility_t: G1_UTILITY
--		do
--			create utility_t.make_utility (14, "Electrical")
--			utility_t.set_same_owner (FALSE)
--			assert ("Rent value, same owner, dice 10: ", utility_t.l_rent_value (10).is_equal (40))
--			utility_t.set_same_owner (TRUE)
--			assert ("Rent value, not same owner, dice 10: ", utility_t.l_rent_value (10).is_equal (100))
--		end

		--	test_buy
		--		note
		---			testing: "covers/{G1_UTILITY}.buy"
		--			testing: "user/G1"
		--		local
		--			utility_t: G1_UTILITY
		--			player_t: G1_PLAYER
		--		do
		--			create utility_t.make_utility(14,"Electrical",10,5)
		--			create player_t.make (5)
		--			utility_t.buy (player_t)
		--			-- assert ("Owner is player 5: ", utility_t.)
		--		end

		--	test_sell_utility
		--	    note
		--			testing: "covers/{G1_UTILITY}.sell_utility"
		--			testing: "user/G1"
		--		local
		--			utility_t: G1_UTILITY
		--			player_t: G1_PLAYER
		--		do
		--			create utility_t.make_utility(14,"Electrical",10,5)
		--			create player_t.make (5)
		--			utility_t.sell_utility(player_t)
		--			-- assert ("Owner is player 5: ", utility_t.)
		--		end

end
