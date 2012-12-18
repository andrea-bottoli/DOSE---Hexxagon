note
	description: "The game board."
	author: "Stefano Di Palma"
	date: "08/12/2012"
	revision: "1.0"

class
	B8_BOARD

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			height:=20
			width:=20
			create placed_game_tiles.make (84)
			create holes.make (400)
		end

feature {NONE} -- Attribute

	placed_game_tiles:ARRAYED_LIST[B8_GAME_TILE]
			-- the game tales which are placed on the board

	holes:ARRAYED_LIST[B8_MONOMINO]
			-- the empty placec of the board

	width:INTEGER
			-- the width of the board

	height:INTEGER
			-- the height of the board

feature -- Access

	add_game_tile(game_tile: B8_GAME_TILE)
			-- add the game tile to the board
		local
			i:INTEGER
		do
			placed_game_tiles.force (game_tile)
			from i:=1
			until i>holes.count
			loop
				if(game_tile.has_monomino (holes[i]))then
					holes.prune_all (holes[i])
				else
					i:=i+1
				end
			end
		end

	remove_game_tile(game_tile: B8_GAME_TILE)
			-- add the game tile to the board
		local
			i:INTEGER
		do
			placed_game_tiles.prune_all (game_tile)
			from i:=1
			until i>game_tile.get_monomini.count
			loop
				holes.force (game_tile.get_monomini[i])
				i:=i+1
			end
		end

	can_be_placed(game_tile: B8_GAME_TILE):BOOLEAN
			-- true if the game tile can be placed on the board
		local
			i:INTEGER
			adjacent:BOOLEAN
			tileX:INTEGER
			tileY:INTEGER
		do
			adjacent:=False
			Result:=game_tile.is_placed_correctly (Current)
			from i:=1
			until i>placed_game_tiles.count or Result=False
			loop
				if(game_tile.check_rule (placed_game_tiles[i], Current)) then
					if(game_tile.get_color=placed_game_tiles[i].get_color and game_tile.is_adjacent (placed_game_tiles[i], Current))then
						adjacent:=True
					end
				else
					Result:=False
				end
				i:=i+1
			end
			if(Result)then
				if(not adjacent)then
					from i:=1
					until i>game_tile.get_monomini.count or adjacent
					loop
						tileX:=game_tile.get_monomini[i].get_x
						tileY:=game_tile.get_monomini[i].get_y
						if((tileX=0 and tileY=0) or (tileX=0 and tileY=height-1) or (tileX=width-1 and tileY=0) or (tileX=width-1 and tileY=height-1))then
							adjacent:=True
						end
						i:=i+1
					end
				end
				Result:=adjacent
			end
		end

	generate_holes
			-- generate holes
		local
			x,y:INTEGER
		do
			from x:=0
			until x>=width
			loop
				from y:=0
				until y>=height
				loop
					holes.force (create {B8_MONOMINO}.make (x,y))
					y:=y+1
				end
				x:=x+1
			end
		ensure
			holes_generated: holes.count>0
		end

	has_hole(monomino:B8_MONOMINO):BOOLEAN
			-- generate holes
		local
			i:INTEGER
		do
			Result:=False
			from i:=1
			until i>holes.count or Result
			loop
				if(holes[i].get_x=monomino.get_x and holes[i].get_y=monomino.get_y)then
					Result:=True
				end
				i:=i+1
			end
		end

	get_placed_tiles_with_color(a_color:INTEGER):ARRAYED_LIST[B8_GAME_TILE]
		local
			l_placed:ARRAYED_LIST[B8_GAME_TILE]
			i:INTEGER
		do
			create l_placed.make(21)
			from i:=1
			until i>placed_game_tiles.count
			loop
				if(placed_game_tiles[i].get_color=a_color) then
					l_placed.force (placed_game_tiles[i])
				end
				i:=i+1
			end
			Result:=l_placed
		end

	get_placed_tiles:like placed_game_tiles
		do
			Result:= placed_game_tiles
		end

	get_placed_number:INTEGER
			-- returns the number of placed game tiles
		do
			Result:=placed_game_tiles.count
		ensure
			correct_result: Result=placed_game_tiles.count
		end

	get_width:INTEGER
			-- returns the width of the board
		do
			Result:=width
		ensure
			correct_result: Result=width
		end

	set_width(a_width: like width)
			-- sets the width of the board
		do
			width := a_width
		ensure
			width_set: width = a_width
		end

	get_height:INTEGER
			-- returns the height of the board
		do
			Result:=height
		ensure
			correct_result: Result=height
		end

	set_height(a_height: like height)
			-- sets the height of the board
		do
			height:=a_height
		ensure
			height_set: height = a_height
		end

	get_holes: like holes
		do
			Result:=holes
		end

invariant
	check_dimension: width>0 and height>0
end
