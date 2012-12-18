note
	description: "Summary description for {G21_BOARD_CELL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_BOARD_CELL

create
	make

feature
	row : INTEGER
	col : INTEGER
	listener : G21_CARD_MESSAGE

	make
	do

	end

	set(row_a : INTEGER; col_a : INTEGER)
	require
		row_a > 0
		row_a < 4
		col_a > 0
		row_a < 4
	do
		row := row_a
		col := col_a
	ensure
		row = row_a
		col = col_a
	end

	addListener(listener_a: G21_CARD_MESSAGE)
	require
		listener_a /= Void
	do
		listener := listener_a
	ensure
		listener = listener_a
	end

	onClickPlay()
	do
		listener.sendCardPlay(Void, row, col)
	end

end
