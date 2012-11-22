note
	description: "Summary description for {G21_CELL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_CELL

create
	make
feature
	element:CHARACTER_8
	card:G21_CARD
	isOccupied:BOOLEAN

	make
	do
		element := ' ' -- this means that this cell isn't occupied(no element or card is exist)
	end


end
