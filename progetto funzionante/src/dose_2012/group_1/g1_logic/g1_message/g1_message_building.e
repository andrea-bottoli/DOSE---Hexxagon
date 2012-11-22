note
	description: "Class that represents a message of building for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_BUILDING

inherit

	G1_MESSAGE

create
	make, make_building

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
		end

	make_building (a_id_deed_build: INTEGER; a_id_deed_sell: INTEGER)
		require
			valid_id: a_id_deed_build >= 0 and a_id_deed_build < 29
			valid_id: a_id_deed_sell >= 0 and a_id_deed_sell < 29
		do
		end

feature --Measurent

	id_deed_build: INTEGER
			--Indicates the id where we will buy a house or hotel
			--If the value is zero, it does not buy

	id_deed_sell: INTEGER
			--Indicates the id where we will sell a house or hotel
			--If the value is zero, it does not sell

end
