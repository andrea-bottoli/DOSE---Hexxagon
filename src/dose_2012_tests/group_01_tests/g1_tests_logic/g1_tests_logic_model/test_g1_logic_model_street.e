note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_STREET

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

	test_make_street
		note
			testing: "covers/{G1_STREET}.make_street"
			testing: "user/G1"
		local
			street_t: G1_STREET
			rent_values: ARRAY [INTEGER]
		do
			create rent_values.make_filled (50, 1, 3) -- This is the error.
			create street_t.make_street (5, "Pippo Street", 100, rent_values, 60)
			assert ("Id is 5, Name is Pippo Street, Price is 100", street_t.id_cell.is_equal (5) and street_t.name_cell.is_equal ("Pippo Street") and street_t.price.is_equal (100))
			assert ("Rent values is 50", street_t.l_rent_values [1].is_equal (50))
			assert ("Rent values is 1", street_t.l_rent_values [2].is_equal (1))
			assert ("Rent values is 3", street_t.l_rent_values [3].is_equal (3))
			assert ("Mortgage value is 50, Mortgage is false, Sold is false, Initial number of houses is 0, Initial number of hotels is 0", street_t.mortgaged_value.is_equal (50) and not street_t.mortgage and not street_t.sold and street_t.l_number_of_houses.is_equal (0) and street_t.l_number_of_hotels.is_equal (0))
		end

	test_build
		note
			testing: "covers/{G1_STREET}.build"
			testing: "user/G1"
		local
			street_t: G1_STREET
			rent_values: ARRAY [INTEGER]
			player_t: G1_PLAYER
		do
			create rent_values.make_filled (50, 1, 3)
			create street_t.make_street (5, "Pippo Street", 100, rent_values, 60)
			create player_t.make (3, "Player")
			street_t.set_owner (player_t)
			street_t.build
			assert ("Number of houses is 1", street_t.l_number_of_houses.is_equal (1))
			street_t.build
			street_t.build
			street_t.build
			assert ("Number of hotels is 1", street_t.l_number_of_hotels.is_equal (1))
		end

	test_sell_building
		note
			testing: "covers/{G1_STREET}.sell_building"
			testing: "user/G1"
		local
			street_t: G1_STREET
			rent_values: ARRAY [INTEGER]
			player_t: G1_PLAYER
		do
			create rent_values.make_filled (50, 1, 3)
			create street_t.make_street (5, "Pippo Street", 100, rent_values, 60)
			create player_t.make (3, "Player")
			street_t.set_owner (player_t)
			street_t.build
			street_t.sell_building
			print (street_t.l_number_of_houses)
			assert ("Number of houses is 0", street_t.l_number_of_houses.is_equal (0))
		end

end
