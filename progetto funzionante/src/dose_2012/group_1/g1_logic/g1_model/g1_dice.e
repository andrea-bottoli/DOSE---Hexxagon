note
	description: "Class that represents a dice in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_DICE

create
	make_dice

feature -- Attributes

	values_d: ARRAY [INTEGER] -- Dice is represented by an array of intger [1..6].

	value: INTEGER -- Is one value of the dice.

feature -- Initialization

	make_dice
			-- Initialize dice
		do
		ensure
			valid_values1: values_d [1] = 1 and values_d [2] = 2 and values_d [3] = 3
			valid_values2: values_d [4] = 4 and values_d [5] = 5 and values_d [6] = 6
			valid_value: value = 0
		end

feature -- Procedures

		-- procedures to get the values of a dice.

	get_value_dice (): INTEGER
			-- Gets one value of the dice.
		do
		ensure
			valid_value: value > 0 and value < 7
		end
invariant
	valid_value: value > 0

end
