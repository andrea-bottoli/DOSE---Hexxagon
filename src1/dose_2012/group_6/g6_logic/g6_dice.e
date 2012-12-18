note
	description: "Represents the dice"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_DICE

create
	make

feature {ANY} -- Initialization

	make
			-- Create a dice
		local
			t: TIME
		do
			create r.make
			create t.make_now
			r.set_seed (t.second)
			consecutive_double := 0
		end

feature {NONE} -- Internal representation

	consecutive_double: INTEGER -- to count how many consecutive repetitions occurs

	r: RANDOM -- to generate random values

feature {ANY} -- basic operations

	throw_dice: INTEGER
			-- throw dice
		local
			dice1, dice2: INTEGER
		do
			dice1 := r.item \\ 6 + 1
			r.forth
			dice2 := r.item \\ 6 + 1
			r.forth
			if (dice1 = dice2) then
				consecutive_double := consecutive_double + 1
			else
				consecutive_double := 0
			end
			Result := dice1 + dice2
		ensure
			Result >= 1 and Result <= 12
		end

	reset_dice
			-- when the current player change, the repetitions counts resets to 0
		do
			consecutive_double := 0
		end

	ban: BOOLEAN
			-- should the player be banned?
		do
			Result := consecutive_double = 2
		end

end
