note
	description: "Summary description for conection btween AI & LOGIC {XX_AI_SELECT_MOVE}"
	author: "Huda Touny - Nada Feteha"
	date: "2-11-2012"
	revision: "$Revision$"

class
	XX_AI_SELECT_MOVE

create calculate_best_move

feature{NONE}
	AI_Calculation_Move: ARRAY[INTEGER]

	alfa_beta_Algo()
	do
		create AI_Calculation_Move.make_filled(-1, -1, 2)
		--here
	end

feature {ANY} --Implementation

	calculate_best_move()
		do
			 io.put_string ("Test")
		end
	set_Best_Move():INTEGER
		do
			Result:= AI_Calculation_Move.at(1)
		end
	set_Previos_Move():INTEGER
		do
			Result:= AI_Calculation_Move.at(0)
		end
end-- class XX_AI_SELECT_MOVE
