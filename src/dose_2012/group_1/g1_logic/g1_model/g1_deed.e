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

	owner: G1_PLAYER

feature -- Initialization

	make_deed (price_d: INTEGER; id_c: INTEGER; name_c: STRING)
			-- Initialize the deed.
		require
			valid_price_d: price_d > 0 and price_d < 1500
		do
			set_morgaged_value (price_d)
			set_price (price_d)
			mortgage := False
			sold := False
			id_cell := id_c
			name_cell := name_c
		ensure
			valid_price_d: price = price_d
			valid_mortgage: mortgage = False
			valid_sold: sold = False
		end

feature -- Procedures

		-- procedures to set the values of a deed.

	set_Morgaged_Value (price_d: INTEGER)
			-- Sets the mortgaged value of the deed.
		require
			valid_price_d: price_d > 0 and price_d < 1500
		do
			mortgaged_value := price_d.integer_quotient (2)
		ensure
			valid_m_value: mortgaged_value > 0 and (mortgaged_value = price_d.integer_quotient (2))
		end

	set_Price (price_d: INTEGER)
			-- Sets the price of the deed.
		require
			valid_price_d: price_d > 0 and price_d < 1500
		do
			price := price_d
		ensure
			valid_price_d: price = price_d
		end

	set_owner (player: G1_PLAYER)
			-- Sets the owner of the deed.
		require
			valid_id_owner: player.id_player > 0
		do
			owner := player
		ensure
			valid_id_owner: player.id_player > 0
		end

		-- procedures to get the values of a deed.

	get_Morgaged_Value (): INTEGER
			-- gets the mortgaged value of the deed.
		do
			result := mortgaged_value
		ensure
			valid_m_value: mortgaged_value > 0 and (mortgaged_value = price.integer_quotient (2))
		end

	get_Price (): INTEGER
			-- gets the price of the deed.
		do
			result := price
		ensure
			valid_price_d: price > 0 and price < 1500
		end

	get_owner (): G1_PLAYER
			-- gets the owner of the deed.
		do
			result := owner
		ensure
			valid_id_owner: owner.id_player > 0
		end

	is_mortgaged (): BOOLEAN
			-- returns if the deed is mortgaged or not.
		do
			result := mortgage
		ensure
			valid_morgage: mortgage = True or mortgage = False
		end

	mortgage_deed
			-- Sets the mortgage in true.
		require
			valid_mortgage: mortgage = False
		do
			mortgage := True
		ensure
			valid_mortgage: mortgage = True
		end

	unmortgage_deed
			-- Sets the mortgage in false.
		require
			valid_mortgage: mortgage = True
		do
			mortgage := False
		ensure
			valid_mortgage: mortgage = False
		end

	is_sold (): BOOLEAN
			-- returns if the deed is sold or not.
		do
			result := sold
		ensure
			valid_sold: sold = True or sold = False
		end

	sell_deed
			-- Sets the sold in true.
		require
			valid_sold: sold = False
		do
			sold := True
		ensure
			valid_sold: sold = True
		end

	unsold_deed
			-- Sets the sold in false.
		require
			valid_sold: sold = True
		do
			sold := False
		ensure
			valid_sold: sold = False
		end

invariant
	valid_price_d: price > 0
	valid_m_value: mortgaged_value > 0
end
