note
	description: "Class that represents a message of token for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_TOKEN

create
	make, make_token

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
		end

	make_token (a_id_token: INTEGER)
		require
			valid_token: a_id_token > 0 and a_id_token <= 12
		do
		end

feature --Measurent

	id_token: INTEGER
			-- Represents the selected token identifier

end
