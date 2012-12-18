note
	description: "Class that represents a message of dice."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_DICE

inherit

	G1_MESSAGE

create
	make, make_dice

feature -- Initialization

	make
			-- Initialize the message whit default value
		do
			dice := 0
		end

	make_dice (a_dice: INTEGER)
			-- Initialize the message with a valid value of dice
		require
			valid_dice: a_dice > 0 and a_dice < 7
		do
			dice := a_dice
		end

feature --Measurent

	dice: INTEGER
			-- Value of the dice

end
