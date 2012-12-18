note
	description: "Summary description for {G21_ELEMENTAL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_ELEMENTAL
inherit
	G21_RULES
	redefine isMakeChange,makechangeandupdate end
create
	make

	feature
	make(board:ARRAY2[G21_CELL])
		do
			init(board)
		end
	fillBoardWithElements
	local
			i:INTEGER
			j:INTEGER
			rand:G21_NEXT_RANDOM
			maxElements:INTEGER
			elem:INTEGER
			decision:INTEGER
	do
		create rand.make
		maxelements := 1
		from
				i:= 1
		until
				i > 3
		loop
			from
					j := 1
			until
					j > 3
			loop
					decision := rand.nextnum (2)
					--print("decision = ")
					--print(decision)
					--print("%N")
					--print("max elements = ")
					--print(maxelements)
					--print("%N")
					if(decision = 1 and maxelements <= 4)
					then
						elem := rand.nextnum (8)
					--	print("elements = ")
					--	print(elem)
					--	print("%N")
						if(elem = 1)then gameboard.item (i, j).setelement ('f') end
						if(elem = 2)then gameboard.item (i, j).setelement ('i') end
						if(elem = 3)then gameboard.item (i, j).setelement ('t') end
						if(elem = 4)then gameboard.item (i, j).setelement ('e') end
						if(elem = 5)then gameboard.item (i, j).setelement ('w') end
						if(elem = 6)then gameboard.item (i, j).setelement ('n') end
						if(elem = 7)then gameboard.item (i, j).setelement ('p') end
						if(elem = 8)then gameboard.item (i, j).setelement ('h') end
						maxelements := maxelements + 1
					end
					j := j + 1
			end
				i := i + 1
		end

	end
	isMakeChange(pos_X:INTEGER_32 ; pos_Y:INTEGER_32 ; card:G21_CARD):BOOLEAN
	do

	end

	makeChangeAndUpdate(pos_X:INTEGER_32 ; pos_Y:INTEGER_32 ):ARRAY2[G21_CELL]
	local
		inc:INTEGER
	do
		inc := 0
		if(gameboard.item (pos_x, pos_y).getelement /= ' ')
		then
			if(gameboard.item (pos_x, pos_y).getcard.getelement =
			gameboard.item (pos_x, pos_y).getelement)
			then
				inc := 1
			else
				inc := -1
			end
		end
		gameboard.item (pos_x, pos_y).getcard.setbottom (
		gameboard.item (pos_x, pos_y).getcard.getbottom + inc)

		gameboard.item (pos_x, pos_y).getcard.settop (
		gameboard.item (pos_x, pos_y).getcard.gettop + inc)

		gameboard.item (pos_x, pos_y).getcard.setright (
		gameboard.item (pos_x, pos_y).getcard.getright + inc)

		gameboard.item (pos_x, pos_y).getcard.setleft (
		gameboard.item (pos_x, pos_y).getcard.getleft + inc)

		Result := gameboard
	end

end
