note
	description: "Summary description for {XX_AI_STATE}."
	author: "Huda Touny - Nada Feteha"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_AI_STATE
create make

feature {XX_AI_SELECT_MOVE}
	board:XX_BOARD
	value:INTEGER

	make--(the_board:XX_BOARD ;the_value:INTEGER)
	do
		create board.make_board
		value:=0
	end

	set_board(the_board:XX_BOARD)
	do
		board:=the_board
	end

	set_value(v:INTEGER)
	do
		value:=v
	end
end
