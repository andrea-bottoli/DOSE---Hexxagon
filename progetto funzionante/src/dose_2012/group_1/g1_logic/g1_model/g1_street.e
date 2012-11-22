note
	description: "Class representing a Street space in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_STREET

inherit

	G1_DEED

create
	make_street

feature -- Initialization

	make_street (a_id: INTEGER; a_name: STRING; a_price: INTEGER; a_mortgaged_value: INTEGER; a_rent_values: ARRAY [INTEGER])
			-- Initialize the Street with its values.
		require
			valid_id: a_id >= 0 and a_id <= 39
			valid_name: a_name /= void
			valid_mortgage_value: a_mortgaged_value > 0 and (a_mortgaged_value = a_price / 2)
			valid_price: a_price > 0 and a_price < 1500
		do
		ensure
			valid_id: id_cell = a_id
			valid_name: name_cell = a_name
			valid_price_d: price = a_price
			valid_m_value: a_mortgaged_value = a_mortgaged_value
			valid_mortgage: mortgage = False
			valid_sold: sold = False
			valid_rent_values: l_rent_values = a_rent_values
			initial_number_of_houses: l_number_of_houses = 0
			initial_number_of_hotels: l_number_of_hotels = 0
		end

feature -- Status report

	l_number_of_hotels: INTEGER
			-- How many hotels has the current Street?

	l_number_of_houses: INTEGER
			-- How many houses has the current Street?

	l_house_cost: INTEGER
			-- Cost of an House in current Street.

	l_rent_values: ARRAY [INTEGER]
			-- rent_value[0]= rent without buildings, rent_value[1]= rent with a house.... rent_value[5]= rent with an Hotel

feature --Basic operations

	build
			-- Build an House or an Hotel.
		require
				--	valid_owner: l_owner /= void
			space_to_build: l_number_of_houses < 4 or l_number_of_hotels < 1
			not mortgage
		do
		ensure
			valid_build: (old l_number_of_houses = 4 implies l_number_of_hotels = 1) and (old l_number_of_houses /= 4 implies l_number_of_houses = old l_number_of_houses + 1)
		end

	sell_building
			-- Sell an House or an Hotel.
		require
				--valid_owner:   l_owner /= void
			buildin_to_sell: l_number_of_houses > 0 or l_number_of_hotels > 0
			not mortgage
		do
		ensure
			valid_sale: (old l_number_of_hotels = 1 implies (l_number_of_hotels = 0 and l_number_of_houses = 4)) and (old l_number_of_houses = 0 implies l_number_of_houses = old l_number_of_houses - 1)
		end

invariant
	valid_number_of_hotels: l_number_of_hotels <= 1 and l_number_of_hotels >= 0
	valid_number_of_houses: l_number_of_houses <= 4 and l_number_of_houses >= 0
	valid_house_cost: l_house_cost >= 50 and l_house_cost <= 200

end
