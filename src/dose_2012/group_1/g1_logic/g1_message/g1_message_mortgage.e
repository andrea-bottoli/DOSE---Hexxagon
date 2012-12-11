note
	description: "Class that represents a message of mortgage for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7: Federico Pereyra"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_MORTGAGE

inherit

	G1_MESSAGE

create
	make, make_mortgage

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
			mortgage_id_deed := 0
			unmortgage_id_deed := 0
		end

	make_mortgage (a_mortgage_id_deed: INTEGER; a_unmortgage_id_deed: INTEGER)
		require
			valid_mortgage: a_mortgage_id_deed >= 0 and a_mortgage_id_deed < 29
			valid_unmortgage: a_unmortgage_id_deed >= 0 and a_unmortgage_id_deed < 29
		do
			mortgage_id_deed := a_mortgage_id_deed
			unmortgage_id_deed := a_unmortgage_id_deed
		end

feature --Measurent

	mortgage_id_deed: INTEGER
			-- Id representing the property mortgage
			-- If the value is zero, it does not mortgage

	unmortgage_id_deed: INTEGER
			-- Id representing the property unmortgage
			-- If the value is zero, it does not unmortgage

end
