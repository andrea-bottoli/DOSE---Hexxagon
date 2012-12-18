note
	description: "Class representing a Utility space (like 'Electric Company' and 'Water Works' in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7 : Manuel Varela"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_UTILITY

inherit

	G1_DEED
		redefine
			set_owner
		end

create
	make_utility

feature -- Initialization

	make_utility (a_id: INTEGER; a_name: STRING)
			-- Initialize the Utility with its values.
		require
			valid_id: a_id >= 0 and a_id <= 39
			valid_name: a_name /= Void
		do
			id_cell := a_id
			name_cell := a_name
			price := 150
			mortgaged_value := 75
			mortgage := False
			sold := False
		ensure
			valid_id: id_cell = a_id
			valid_name: name_cell = a_name
			valid_price: price = 150
			valid_m_value: mortgaged_value = 75
			valid_mortgage: mortgage = False
			valid_sold: sold = False
		end

feature --Basic operations

	l_rent_value (a_dice: INTEGER): INTEGER
			-- rent value of the current utility.
		require
			valid_dice: a_dice >= 2 and a_dice <= 12
		do
			if owner.number_of_utilities = 2 then
				Result := a_dice * 10
			else
				Result := a_dice * 4
			end
		ensure
			owner.number_of_utilities = 1 implies Result = a_dice * 4
			owner.number_of_utilities = 2 implies Result = a_dice * 10
		end

		--	set_same_owner (a_same_owner: BOOLEAN)
		--			-- Set value of same_owner on the current Utility.
		--		do
		--			l_same_owner := a_same_owner
		--		ensure
		--			a_same_owner = l_same_owner
		--		end

	set_owner (a_owner: G1_PLAYER)
			-- Set the new Owner of the Utility
		require else
			valid_id_owner: a_owner.id_player > 0
		do
			if owner /= Void then
				owner.decrement_number_utilities
			end
			owner := a_owner
			owner.increment_number_utilities
		ensure then
			valid_owner: owner /= Void
		end

invariant
	mortgage implies sold
	mortgaged_value = price.integer_quotient (2)
	price = 150

end
