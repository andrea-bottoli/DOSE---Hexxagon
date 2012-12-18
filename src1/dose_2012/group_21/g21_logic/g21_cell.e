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
isOccupied:BOOLEAN
element:CHARACTER_8
card:G21_CARD
playerNumber:INTEGER
setCard(c:G21_CARD)
do
	if(isoccupied = FALSE)then
		card := c
		isoccupied := TRUE
	end
end
setElement(elem:CHARACTER_8)
do
	if(isoccupied = FALSE)then
		element := elem
		--isoccupied := TRUE
	end
end
setPlayerNumber(num:INTEGER)
do
	playernumber := num
end

feature


	make
	do

		create card.make
		isoccupied := false
		element := ' ' -- this means that this cell isn't occupied(no element or card is exist)

	end
	init
	do
		create card.make
		isoccupied := false
		element := ' '
	end


	getIsOccupied:BOOLEAN
	do
		Result := isoccupied
	end

	getElement:CHARACTER_8
	do
		Result := element
	end


	getCard:G21_CARD
	do
		Result := card
	end

	getPlayerNumber:INTEGER_32
	do
		Result := playernumber
	end

	printCell
	do
		print("Cell Info [player number, card name, element] %N")
		print(playernumber)
		print(" ")
		print(card.cardname)
		print(":Element = ")
		print(element)
		print("%N")

	end


end
