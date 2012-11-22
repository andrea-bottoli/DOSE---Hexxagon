note
	description: "Summary description for {G1_RAILWAY}."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_RAILWAY

inherit

	G1_DEED

create
	make_railway

feature

	number_of_railways: INTEGER

feature -- Initialization

	make_railway
		do
		ensure
			valid_number_railway: number_of_railways = 0
		end

	set_railways (number_railways: INTEGER)
			-- Set the number of the railways
		require
			valid_railways: number_railways > 0
		do
		ensure
			valid_railways: number_of_railways > 0 and number_of_railways = number_railways
		end

	buy (a_owner: G1_PLAYER)
		--a_ownerId is the new owner of the current railway.
		do
		end
end
