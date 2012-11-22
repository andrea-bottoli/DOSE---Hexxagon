note
	description: "Class that represents a message of name player for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_NAME

inherit

	G1_MESSAGE

create
	make, make_name

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
		end

	make_name (a_name: STRING)
		do
		end

feature --Measurent

	name: STRING
			-- Name of the player

end
