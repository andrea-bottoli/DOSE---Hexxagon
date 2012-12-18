note
	description: "Summary description for {G21_RULESCONTAINER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_RULESCONTAINER
create
	make
feature
	openRule:G21_OPEN
	elementalRule:G21_ELEMENTAL
	sameRule:G21_RULE_SAME
	plusRule:G21_RULE_PLUS
	sameWallRule:G21_RULE_SAMEWALL
	activeOpen(gameBoard:ARRAY2[G21_CELL])
	do
		create openrule.make(gameboard)
	end
	activeElemental(gameBoard:ARRAY2[G21_CELL]):ARRAY2[G21_CELL]
	do
		create elementalrule.make(gameboard)
		elementalrule.fillboardwithelements
		Result := elementalrule.getgameboard
	end
	activeSame(gameBoard:ARRAY2[G21_CELL])
	do
		create samerule.make(gameboard)
	end
	activeSameWall(gameBoard:ARRAY2[G21_CELL])
	do
		create samerule.make(gameboard)
	end
	activePlus(gameBoard:ARRAY2[G21_CELL])
	do
		create samerule.make(gameboard)
	end
	make
	do

	end
	updateGameBoard(row:INTEGER;colum:INTEGER;cell:G21_CELL)
	do
		if(openrule /= void)then
			openrule.setCell(row,colum,cell)
		end
		if(elementalrule /= void)then
			elementalrule.setcell (row, colum, cell)
		end
		if(samerule /= void)then
			samerule.setcell (row, colum , cell)
		end
		if(samewallrule /= void)then
			samewallrule.setcell (row, colum , cell)
		end
		if(plusrule /= void)then
			plusrule.setcell (row, colum , cell)
		end
	end
	makeChangesAndFlips(row:INTEGER ; colum:INTEGER):ARRAY2[G21_CELL]
	local
		newBoard:ARRAY2[G21_CELL]
	do
		create newboard.make_filled (void, 1, 3)
		if(openrule /= void)then
			newboard.copy (openrule.makechangeandupdate (row, colum))
		end
		if(elementalrule /= void)then
			newboard.copy (elementalrule.makechangeandupdate (row, colum))
		end
		if(samerule /= void)then
			newboard.copy (samerule.makechangeandupdate (row, colum))
		end
		if(samewallrule /= void)then
			newboard.copy (samewallrule.makechangeandupdate (row, colum))
		end
		if(plusrule /= void)then
			newboard.copy (plusrule.makechangeandupdate (row, colum))
		end

		Result := newboard
	end

end
