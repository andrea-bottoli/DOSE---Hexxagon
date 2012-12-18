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

	dice: INTEGER -- The valor of a dice.

feature -- Initialization

	make_dice
			-- Initialize the dice.
		local
			rand: RANDOM
			time: TIME
		do
			create rand.make
			create time.make_now_utc
			rand.set_seed (time.milli_second)
			dice := (rand.i_th (1) \\ 6) + 1
		end

feature -- Procedures

		-- procedures to get the values of a dice.

	get_value_dice (): INTEGER
			-- Gets one value of the dice.
		do
			result := dice
		end

invariant
	valid_dice: dice > 0 and dice < 7

end
