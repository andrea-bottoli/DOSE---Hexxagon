note
	description: "Class that represents a message of token for net."
	author: "Manuel Varela -> Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_TOKEN

create
	make, make_token

feature -- Initialization

	make
			-- Initialize the message with default values
		do
			id_token := 0
		end

	make_token (a_id_token: INTEGER)
			-- Initialize the message with the ID of the selected TOKEN
		require
			valid_token: a_id_token > 0 and a_id_token <= 12
		do
			id_token := a_id_token
		end

feature --Measurent

	id_token: INTEGER
			-- Represents the selected token identifier

feature -- Basic operations

	set_id_token (a_id: INTEGER)
		do
			id_token := a_id
		end

end
