note
	description: "Class that represents a deed in the game."
	author: "Group 1 - Rio Cuarto 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_DEED

inherit

	G1_CELL

create
	make_deed

feature {ANY} -- Attributes

	mortgaged_value: INTEGER

	price: INTEGER

	mortgage: BOOLEAN -- True: mortgaged, False: unmortgaged

	sold: BOOLEAN -- True: sold, False: unsold

feature -- Initialization

	make_deed (m_value: INTEGER; price_d: INTEGER)
			-- Initialize the deed.
		require
			valid_m_value: m_value > 0 and (m_value = price_d / 2)
			valid_price_d: price_d > 0 and price_d < 1500
		do
		ensure
			valid_price_d: price = price_d
			valid_m_value: mortgaged_value = m_value
			valid_mortgage: mortgage = False
			valid_sold: sold = False
		end

feature -- Procedures

		-- procedures to set the values of a deed.

	set_Morgaged_Value (m_value: INTEGER)
			-- Sets the mortgaged value of the deed.
		require
			valid_m_value: m_value > 0 and (m_value = price / 2)
		do
		ensure
			valid_m_value: mortgaged_value = m_value
		end

	set_Price (price_d: INTEGER)
			-- Sets the price of the deed.
		require
			valid_price_d: price_d > 0 and price_d < 1500
		do
		ensure
			valid_price_d: price = price_d
		end

		-- procedures to get the values of a deed.

	get_Morgaged_Value (): INTEGER
			-- gets the mortgaged value of the deed.
		do
		ensure
			valid_m_value: mortgaged_value > 0 and (mortgaged_value = price / 2)
		end

	get_Price (): INTEGER
			-- gets the price of the deed.
		do
		ensure
			valid_price_d: price > 0 and price < 1500
		end

	is_mortgaged (): BOOLEAN
			-- returns if the deed is mortgaged or not.
		do
		ensure
			valid_morgage: mortgage = True or mortgage = False
		end

	mortgage_deed
			-- Sets the mortgage in true.
		require
			valid_mortgage: mortgage = False
		do
		ensure
			valid_mortgage: mortgage = True
		end

	unmortgage_deed
			-- Sets the mortgage in false.
		require
			valid_mortgage: mortgage = True
		do
		ensure
			valid_mortgage: mortgage = False
		end

	is_sold (): BOOLEAN
			-- returns if the deed is sold or not.
		do
		ensure
			valid_sold: sold = True or sold = False
		end

	sell_deed
			-- Sets the sold in true.
		require
			valid_sold: sold = False
		do
		ensure
			valid_sold: sold = True
		end

	unsold_deed
			-- Sets the sold in false.
		require
			valid_sold: sold = True
		do
		ensure
			valid_sold: sold = False
		end

invariant
	valid_price_d: price > 0
	valid_m_value: mortgaged_value > 0
	valid_mortgage: mortgage = True or mortgage = False
	valid_sold: sold = True or sold = False

end
