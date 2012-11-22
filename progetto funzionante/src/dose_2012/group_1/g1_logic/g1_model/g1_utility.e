note
	description: "Class representing a Utility space (like 'Electric Company' and 'Water Works' in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_UTILITY

inherit

	G1_DEED

create
	make_utility

feature -- Initialization

	make_utility (a_id: INTEGER; a_name: STRING; a_price: INTEGER; a_mortgaged_value: INTEGER)
			-- Initialize the Utility with its values.
		require
			valid_id: a_id >= 0 and a_id <= 39
			valid_name: a_name /= void
			valid_mortgage_value: a_mortgaged_value > 0 and (a_mortgaged_value = a_price / 2)
			valid_price: a_price > 0
		do
		ensure
			valid_id: id_cell = a_id
			valid_name: name_cell = a_name
			valid_price: price = a_price
			valid_m_value: a_mortgaged_value = a_mortgaged_value
			valid_mortgage: mortgage = False
			valid_sold: sold = False
			valid_owner: l_same_owner = False
		end

feature -- Status report

	l_same_owner: BOOLEAN
			-- have both utilities the same owner?

	l_rent_value (a_dice: INTEGER): INTEGER
			-- rent value of the current utility.
		require
			valid_dice: a_dice >= 2 and a_dice <= 12
		do
		ensure
			l_same_owner implies Result = a_dice * 4
			not l_same_owner implies Result = a_dice * 10
		end

feature --Basic operations

	set_same_owner (a_same_owner: BOOLEAN)
			-- Set value of same_owner on the current Utility.
		do
		ensure
			a_same_owner = l_same_owner
		end

	buy (a_owner: G1_PLAYER)
			--a_ownerId is the new owner of the current utility.
		do
		end

	sell_utility (a_owner: G1_PLAYER) -- Why ID e not CLASS? (Jiang)
			-- The current utility is traded to another player.
		do
		end

invariant
	price = 150

end
