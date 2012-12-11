note
	description: "Logic ocmponent rapresenting a player of th blockus game"
	author: "Andrea Braschi"
	date: "08/12/2012"
	revision: "1.1"

class
	B8_PLAYER

create
	make

feature {NONE} -- Initialization

	make(a_id:like id)
			-- Initialization for `Current'.
		do
			id:=a_id
			can_move:=True
			create tiles.make (21)
		end

feature {NONE} -- attributes

	id:INTEGER
			-- user's id

	tiles: ARRAYED_LIST[B8_GAME_TILE]
			-- user's game tiles

	last_placed: B8_GAME_TILE
			-- last placed tile

	can_move:BOOLEAN
			-- if the player can make a move

feature -- public functions

	get_tiles: like tiles
			-- returns the array of tails
		do
			Result:=tiles
		end


	get_tile(a_type:INTEGER): B8_GAME_TILE
			--given a color and a type returns the corresponding tile.
			--In the case that it would not be founded returns void
		require
			correct_type: a_type>=0 and a_type<=20
		local
			i:INTEGER

		do
			Result:=void
			from i:=1
			until i>tiles.count or Result /= void
			loop
				if tiles[i].get_type = a_type then
					Result:=tiles[i]
				end
				i:=i+1
			end
		end

	add_tile(a_tile: B8_GAME_TILE)
			-- add tile in the array
		do
			tiles.force (a_tile)
		end

	remove_tile(a_tile: B8_GAME_TILE)
			-- removes tile from the array
		do
			tiles.prune_all (a_tile)
		end

	can_make_a_move(a_logic:B8_LOGIC):BOOLEAN
			-- true if the player can play
		local
			i,j,r,p,c:INTEGER
			l_adj: ARRAYED_LIST[B8_MONOMINO]
			l_placed:ARRAYED_LIST[B8_GAME_TILE]
		do
			if can_move then
				Result:=False
				if tiles.count=21 then
					Result:=True
				end
				l_placed:=a_logic.get_board.get_placed_tiles_with_color(tiles[1].get_color)
				from p:=1--for every tile to place
				until p>tiles.count or Result
				loop
					from i:=l_placed.count
					until i<=0 or tiles.count=0 or Result
					loop
						l_adj:=l_placed[i].get_adjacent(a_logic.get_board,l_placed)
						from j:=1
						until j>l_adj.count or Result
						loop
							from r:=0		--for every possible rotation
							until r>3 or Result
							loop
								from c:=1
								until c>tiles[p].get_monomini.count or Result
								loop
									tiles[p].place (l_adj[j].get_x,l_adj[j].get_y,c)
									if a_logic.get_board.can_be_placed(tiles[p]) then
										Result:=True
									end
									c:=c+1
								end
								tiles[p].place (0,0,1)
								tiles[p].rotate (1,1)
								r:=r+1
								if(tiles[p].get_monomini.count=1)then
									r:=4
								end
							end
							tiles[p].reset_position(1)
							j:=j+1
						end
						i:=i-1
					end
					p:=p+1
				end
				if(Result=False)then
					can_move:=False
				end
			end
		end

	has_a_game_tile(tile: B8_GAME_TILE):BOOLEAN
			-- true if the passed tile is in the array
		do
			Result:= tiles.has (tile)
		end

	get_score:INTEGER
			-- returns the users score
		local
			i: INTEGER
		do
			Result:=0
			if tiles.count = 0 then
				if last_placed.get_monomini.count = 1 then
					Result:= Result+5
				end
				Result:=Result+15
			end
			if Result=0 then
				from i:=1
				until i> tiles.count
				loop
					Result:= Result - tiles[i].get_monomini.count
					i:=i+1
				end
			end
		end

	get_last_placed:like last_placed
			-- returns the last placed tile
		do
			Result:= last_placed
		end

	set_last_placed(a_tile:like last_placed)
			-- set the last placed tiles
		do
			last_placed:=a_tile
		end

invariant
	correct_id: id>=0 and id<=3

end
