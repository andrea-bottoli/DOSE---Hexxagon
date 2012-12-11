note
	description: "Class that represents a message of name player for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7: Federico Pereyra"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_NAME

inherit
	G1_MESSAGE
	redefine
		get_message --Implemented to test Network part... (Jiang)
	end

create
	make, make_name

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
			create name.make_empty
		end

	make_name (a_name: STRING)
		do
			name := a_name
		end

feature --Measurent

	name: STRING
			-- Name of the player

	get_message: STRING --Implemented to test Network part... (Jiang)
	do
		Result := name
	end
end
