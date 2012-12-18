note
	description: "Summary description for {G21_RULE_SAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_RULE_SAMEWALL
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
	isMakeChange(pos_X:INTEGER_32 ; pos_Y:INTEGER_32 ; card:G21_CARD):BOOLEAN
	do

	end

	makeChangeAndUpdate(pos_X:INTEGER_32 ; pos_Y:INTEGER_32 ):ARRAY2[G21_CELL]
	local
		num:INTEGER
	do

		num := gameboard.item (pos_x, pos_y).getplayernumber

		if(pos_x = 1 and gameboard.item (pos_x, pos_y).getcard.gettop = 10)
		then

			if(gameboard.item (pos_x+1, pos_y).isoccupied = true)
			then
				if(gameboard.item (pos_x+1, pos_y).getcard.gettop = gameboard.item (pos_x, pos_y).getcard.getbottom)
				then
					gameboard.item (pos_x+1, pos_y).setplayernumber (num)
				end
			end

			if(pos_y+1 <= 3 and gameboard.item (pos_x, pos_y+1).isoccupied = true)
			then
				if(gameboard.item (pos_x, pos_y+1).getcard.getleft = gameboard.item (pos_x, pos_y).getcard.getright)
				then
					gameboard.item (pos_x, pos_y+1).setplayernumber (num)
				end
			end

			if(pos_y-1 >= 1 and gameboard.item (pos_x, pos_y-1).isoccupied = true)
			then
				if(gameboard.item (pos_x, pos_y-1).getcard.getright = gameboard.item (pos_x, pos_y).getcard.getleft)
				then
					gameboard.item (pos_x, pos_y-1).setplayernumber (num)
				end
			end

			if(pos_x = 3 and gameboard.item (pos_x, pos_y).getcard.getbottom = 10)
			then

			if(gameboard.item (pos_x-1, pos_y).isoccupied = true)
			then
				if(gameboard.item (pos_x-1, pos_y).getcard.getbottom = gameboard.item (pos_x, pos_y).getcard.gettop)
				then
					gameboard.item (pos_x-1, pos_y).setplayernumber (num)
				end
			end

			if(pos_y+1 <= 3 and gameboard.item (pos_x, pos_y+1).isoccupied = true)
			then
				if(gameboard.item (pos_x, pos_y+1).getcard.getleft = gameboard.item (pos_x, pos_y).getcard.getright)
				then
					gameboard.item (pos_x, pos_y+1).setplayernumber (num)
				end
			end

			if(pos_y-1 >= 1 and gameboard.item (pos_x, pos_y-1).isoccupied = true)
			then
				if(gameboard.item (pos_x, pos_y-1).getcard.getright = gameboard.item (pos_x, pos_y).getcard.getleft)
				then
					gameboard.item (pos_x, pos_y-1).setplayernumber (num)
				end
			end

			end

			if(pos_y = 1 and gameboard.item (pos_x, pos_y).getcard.getleft = 10)
			then
				if(gameboard.item (pos_x, pos_y+1).isoccupied = true)
				then
					if(gameboard.item (pos_x, pos_y+1).getcard.getleft = gameboard.item (pos_x, pos_y).getcard.getright)
					then
						gameboard.item (pos_x, pos_y+1).setplayernumber (num)
					end
				end

			if(pos_x+1 <= 3 and gameboard.item (pos_x+1, pos_y).isoccupied = true)
			then
				if(gameboard.item (pos_x+1, pos_y).getcard.gettop = gameboard.item (pos_x, pos_y).getcard.getbottom)
				then
					gameboard.item (pos_x+1, pos_y).setplayernumber (num)
				end
			end

			if(pos_x-1 >= 1 and gameboard.item (pos_x-1, pos_y).isoccupied = true)
			then
				if(gameboard.item (pos_x-1, pos_y).getcard.getbottom = gameboard.item (pos_x, pos_y).getcard.gettop)
				then
					gameboard.item (pos_x-1, pos_y).setplayernumber (num)
				end
			end

			end

			if(pos_y = 3 and gameboard.item (pos_x, pos_y).getcard.getright = 10)
			then
				if(gameboard.item (pos_x, pos_y-1).isoccupied = true)
				then
					if(gameboard.item (pos_x, pos_y-1).getcard.getright = gameboard.item (pos_x, pos_y).getcard.getleft)
					then
						gameboard.item (pos_x, pos_y-1).setplayernumber (num)
					end
				end

				if(pos_x+1 <= 3 and gameboard.item (pos_x+1, pos_y).isoccupied = true)
				then
					if(gameboard.item (pos_x+1, pos_y).getcard.gettop = gameboard.item (pos_x, pos_y).getcard.getbottom)
					then
						gameboard.item (pos_x+1, pos_y).setplayernumber (num)
					end
				end

			if(pos_x-1 >= 1 and gameboard.item (pos_x-1, pos_y).isoccupied = true)
			then
				if(gameboard.item (pos_x-1, pos_y).getcard.getbottom = gameboard.item (pos_x, pos_y).getcard.gettop)
				then
					gameboard.item (pos_x-1, pos_y).setplayernumber (num)
				end
			end

			end


		end





		Result := gameboard
	end


end
