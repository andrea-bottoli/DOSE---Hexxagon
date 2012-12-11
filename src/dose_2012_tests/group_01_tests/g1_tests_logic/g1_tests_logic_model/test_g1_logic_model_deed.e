note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_DEED

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

	test_make_deed
		note
			testing: "covers/{G1_DEED}.make_deed"
			testing: "user/G1"
		local
			deed_t : G1_DEED
		do
			create deed_t.make_deed (100, 1, "cell 1")
			assert("Morgaged_value is 50, Price is 100", deed_t.get_morgaged_value.is_equal (50) and deed_t.get_price.is_equal (100) and deed_t.is_mortgaged.is_equal(FALSE) and deed_t.is_sold.is_equal(FALSE))
		end

	test_set_Morgaged_Value
		note
			testing: "covers/{G1_DEED}.set_Morgaged_Value"
			testing: "user/G1"
		local
			deed_t : G1_DEED
		do
			create deed_t.make_deed (100, 2, "cell 2")
			deed_t.set_morgaged_value (100)
			assert("Morgaged_value is 50", deed_t.mortgaged_value.is_equal (50) )
		end

	test_set_Price
		note
			testing: "covers/{G1_DEED}.set_price"
			testing: "user/G1"
		local
			deed_t : G1_DEED
		do
			create deed_t.make_deed (100, 3, "cell 3")
			deed_t.set_price (400)
			assert("Price is 400", deed_t.price.is_equal (400) )
		end

	test_set_Owner
		note
			testing: "covers/{G1_DEED}.set_owner"
			testing: "user/G1"
		local
			deed_t: G1_DEED
			player_t: G1_PLAYER
		do
			create deed_t.make_deed (100, 4, "cell 4")
			create player_t.make (1, "Player")
			deed_t.set_owner (player_t)
			assert ("not_implemented", deed_t.owner.get_id_player.is_equal (player_t.get_id_player))
		end

end


