note
	description: "Summary description for {XX_AI_CELL_CALCULATION}."
	author: "Nada Feteha"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_AI_CELL_CALCULATION
create make

feature {XX_AI_SELECT_MOVE}
	cell_id: INTEGER
	childern:ARRAY[XX_AI_CELL_CALCULATION]
	available:INTEGER
	make(cell_id_temp:INTEGER ; Available_temp:INTEGER )
		do
			cell_id:=cell_id_temp
			available:=Available_temp
			create childern.make (0, 57)
		end
end
