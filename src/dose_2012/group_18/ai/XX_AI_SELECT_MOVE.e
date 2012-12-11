note
	description: "Summary description for conection btween AI & LOGIC {XX_AI_SELECT_MOVE}"
	author: "Huda Touny - Nada Feteha"
	date: "2-11-2012"
	revision: "$Revision$"

class
	XX_AI_SELECT_MOVE

create calculate_best_move

feature {NONE}
	AI_Calculation_Move: ARRAY[INTEGER]
   	all_calls:ARRAY[XX_AI_CELL_CALCULATION]
    i:INTEGER
    min:XX_AI_CELL_CALCULATION
    max:XX_AI_CELL_CALCULATION

   get_min(min_move:ARRAY[XX_AI_CELL_CALCULATION]):XX_AI_CELL_CALCULATION
	do
		min:= min_move.at (0)
		from i:= 1 until i = min_move.upper
		loop
			if min.value > min_move.at (i).value then
				min:= min_move.at (i)
			end
			i := i+1
			Result := min
		end
	end

   get_max(max_move:ARRAY[XX_AI_CELL_CALCULATION]):XX_AI_CELL_CALCULATION
	do
		max:=max_move.at(0)
		from i:= 1 until i = max_move.upper
		loop
			if max.value < max_move.at (i).value then
				max:= max_move.at (i)
			end
			i := i+1
			Result := max
		end
	end
	---////////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
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

	get_Best_Move():INTEGER
		do
			Result:= AI_Calculation_Move.at(1)
			ensure Result >=0 and Result< 58
		end

	get_Previos_Move():INTEGER
		do
			Result:= AI_Calculation_Move.at(0)
			ensure Result>=0 and Result< 58
		end

end-- class XX_AI_SELECT_MOVE
