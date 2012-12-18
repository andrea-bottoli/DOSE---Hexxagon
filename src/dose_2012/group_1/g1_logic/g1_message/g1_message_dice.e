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
	make_dice

feature -- Initialization


	make_dice (a_dice_1: INTEGER; a_dice_2: INTEGER)
			-- Initialize the message with a valid value of dice
		require
			valid_dice_1: a_dice_1 > 0 and a_dice_1 < 7
			valid_dice_2: a_dice_2 > 0 and a_dice_2 < 7
		do
			dice_1 := a_dice_1
			dice_2 := a_dice_2
		end

feature --Measurent

	dice_1: INTEGER
			-- Value of the dice 1

	dice_2: INTEGER
			-- Value of the dice 2

end
