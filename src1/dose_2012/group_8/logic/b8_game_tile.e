note
	description: "Logic component rapresenting a game tile"
	author: "Andrea Braschi"
	date: "0.8/12/2012"
	revision: "1.2"

class
	B8_GAME_TILE

create
	make

feature {NONE} -- Initialization

	make(a_color,a_type:INTEGER)
			-- Initialization for 'Current'.
		require
			right_type : a_type>=0 and a_type<=20
			right_color: a_color>=0 and a_color <=3
		do
			rotation:=0
			color:=a_color
			type:=a_type

			create monomini.make(5)
			create extremity.make(5)

			--initialization of the tile in respect of the type code passed (can be optimized with)
			inspect
				a_type
			when  monomino then
				monomini.force(create {B8_monomino}.make(0,0))
				extremity.force (1)
			when  binomino then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(1,0))
				extremity.force (1)
				extremity.force (2)
			when  trinomino1 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(1,0))
				monomini.force(create{B8_monomino}.make(1,1))
				extremity.force (1)
				extremity.force (2)
				extremity.force (3)
			when  trinomino2 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(1,0))
				monomini.force (create{B8_monomino}.make(2,0))
				extremity.force (1)
				extremity.force (3)
			when  tetramino1 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(1,0))
				monomini.force (create{B8_monomino}.make(1,1))
				monomini.force (create{B8_monomino}.make(0,1))
				extremity.force (1)
				extremity.force (2)
				extremity.force (3)
				extremity.force (4)
			when  tetramino2 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(-1,1))
				monomini.force (create{B8_monomino}.make(1,1))
				extremity.force (1)
				extremity.force (3)
				extremity.force (4)
			when  tetramino3 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(1,0))
				monomini.force (create{B8_monomino}.make(2,0))
				monomini.force (create{B8_monomino}.make(3,0))
				extremity.force (1)
				extremity.force (4)
			when  tetramino4 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(-1,1))
				monomini.force (create{B8_monomino}.make(-2,1))
				extremity.force (1)
				extremity.force (2)
				extremity.force (4)
			when  tetramino5 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(1,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(-1,1))
				extremity.force (1)
				extremity.force (2)
				extremity.force (3)
				extremity.force (4)
			when  pentamino1 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(1,1))
				monomini.force (create{B8_monomino}.make(2,1))
				monomini.force (create{B8_monomino}.make(3,1))
				extremity.force (1)
				extremity.force (2)
				extremity.force (5)
			when  pentamino2 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(0,2))
				monomini.force (create{B8_monomino}.make(1,2))
				monomini.force (create{B8_monomino}.make(-1,2))
				extremity.force (1)
				extremity.force (4)
				extremity.force (5)
			when  pentamino3 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(0,2))
				monomini.force (create{B8_monomino}.make(1,2))
				monomini.force (create{B8_monomino}.make(2,2))
				extremity.force (1)
				extremity.force (3)
				extremity.force (5)
			when  pentamino4 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(1,0))
				monomini.force (create{B8_monomino}.make(2,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(-1,1))
				extremity.force (1)
				extremity.force (3)
				extremity.force (4)
				extremity.force (5)
			when  pentamino5 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(-1,1))
				monomini.force (create{B8_monomino}.make(-2,1))
				monomini.force (create{B8_monomino}.make(-2,2))
				extremity.force (1)
				extremity.force (2)
				extremity.force (4)
				extremity.force (5)
			when  pentamino6 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(0,2))
				monomini.force (create{B8_monomino}.make(0,3))
				monomini.force (create{B8_monomino}.make(0,4))
				extremity.force (1)
				extremity.force (5)
			when  pentamino7 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(0,2))
				monomini.force (create{B8_monomino}.make(1,1))
				monomini.force (create{B8_monomino}.make(1,2))
				extremity.force (1)
				extremity.force (3)
				extremity.force (4)
				extremity.force (5)
			when  pentamino8 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(1,0))
				monomini.force (create{B8_monomino}.make(-1,1))
				monomini.force (create{B8_monomino}.make(-1,2))
				extremity.force (1)
				extremity.force (2)
				extremity.force (3)
				extremity.force (4)
				extremity.force (5)
			when  pentamino9 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(1,0))
				monomini.force (create{B8_monomino}.make(0,2))
				monomini.force (create{B8_monomino}.make(1,2))
				extremity.force (1)
				extremity.force (3)
				extremity.force (4)
				extremity.force (5)
			when  pentamino10 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(0,2))
				monomini.force (create{B8_monomino}.make(1,0))
				monomini.force (create{B8_monomino}.make(-1,1))
				extremity.force (1)
				extremity.force (3)
				extremity.force (4)
				extremity.force (5)
			when  pentamino11 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force(create{B8_monomino}.make(0,2))
				monomini.force (create{B8_monomino}.make(1,1))
				monomini.force (create{B8_monomino}.make(-1,1))
				extremity.force (1)
				extremity.force (3)
				extremity.force (4)
				extremity.force (5)
			when  pentamino12 then
				monomini.force (create{B8_monomino}.make(0,0))
				monomini.force (create{B8_monomino}.make(-1,1))
				monomini.force (create{B8_monomino}.make(0,1))
				monomini.force (create{B8_monomino}.make(1,1))
				monomini.force (create{B8_monomino}.make(2,1))
				extremity.force (1)
				extremity.force (2)
				extremity.force (5)
			else
				monomini.force (create{B8_monomino}.make(0,0))

			end
		end

feature ---constants
--type interpretation see the image in blockus on wikipedia
monomino : INTEGER=0
binomino : INTEGER=1
trinomino1 : INTEGER=2
trinomino2 : INTEGER=3
tetramino1 : INTEGER=4
tetramino2 : INTEGER=5
tetramino3 : INTEGER=6
tetramino4 : INTEGER=7
tetramino5 : INTEGER=8
pentamino1 : INTEGER=9
pentamino2 : INTEGER=10
pentamino3 : INTEGER=11
pentamino4 : INTEGER=12
pentamino5 : INTEGER=13
pentamino6 : INTEGER=14
pentamino7 : INTEGER=15
pentamino8 : INTEGER=16
pentamino9 : INTEGER=17
pentamino10 : INTEGER=18
pentamino11 : INTEGER=19
pentamino12 : INTEGER=20
feature {NONE} --attributes
	color: INTEGER
			-- color id
	type: INTEGER
		--type id
	monomini: ARRAYED_LIST[B8_MONOMINO]
			-- list of monomini composing the game tile
	extremity: ARRAYED_LIST[INTEGER]
			-- the index of the extremity of the game tile		

	rotation: INTEGER
		--number of rotation that has been done on the tile


feature -- public functions

	rotate(a_side,a_center:INTEGER)
			--rotate the game tile (a_side=1->right || a_side=-1->left)
		require
			left_or_right: a_side = -1 or a_side = 1
		local
			i: INTEGER
			x_tmp, y_tmp: INTEGER
		do
			rotation:=(rotation+a_side) \\ 4
			if a_side=1 then
				from i:=1
				until i>monomini.count
				loop
					if i/=a_center then
						x_tmp:=monomini[i].get_x - monomini[a_center].get_x
						y_tmp:=monomini[i].get_y-monomini[a_center].get_y
						monomini[i].set_x (monomini[a_center].get_x-y_tmp)
						monomini[i].set_y (monomini[a_center].get_y+x_tmp)
					end
					i:=i+1
				end
			elseif a_side=-1 then
				from i:=1
				until i>monomini.count
				loop
					if i/=a_center then
						x_tmp:=monomini[i].get_x - monomini[a_center].get_x
						y_tmp:=monomini[i].get_y-monomini[a_center].get_y
						monomini[i].set_x (monomini[a_center].get_x+y_tmp)
						monomini[i].set_y (monomini[a_center].get_y-x_tmp)
					end
					i:=i+1
				end
			end
		end

	reset_position(a_center:INTEGER)
	local
		i:INTEGER
	do
		from i:=0
		until rotation=0
		loop
			if rotation>0 then
				i:=-1
			else
				i:=1
			end
			current.rotate (i,a_center)
		end
		current.place(0,0,1)
	end

	place(x,y,a_center: INTEGER)
			--set the position of the tile but DOES NOT place it in the board.
			--call this function before check if the position in which you place it will be right
			--in order to place it you've got to call make_a_move
		local
			i:INTEGER
		do
			from i:=1 --other monominos are placed in respect from the central monomino
			until i>monomini.count
			loop
				if i/=a_center then
					monomini[i].set_x (monomini[i].get_x-monomini[a_center].get_x+x)
					monomini[i].set_y (monomini[i].get_y-monomini[a_center].get_y+y)
				end
				i:=i+1
			end
			monomini[a_center].set_x (x)
			monomini[a_center].set_y (y)
		end

	check_rule(a_tile: B8_GAME_TILE;a_board:B8_BOARD):BOOLEAN
			-- true if this tile has nothing in contrary about placing here the passed tile
		require
			is_placed_correctly_ckr: a_tile.is_placed_correctly(a_board)
		do
			Result:=True
			if(not is_placed_correctly(a_board))then
				Result:= False
			end
			if(is_overlapping(a_tile,a_board))then
				Result:= False
			end

			if Result then
				if a_tile.get_color = color then
					Result:= not is_neighbor (a_tile,a_board)
--				this is not what the rule says
--				else
--					Result:= not is_adjacent (a_tile,a_board)
				end
			end

		end

	is_placed_correctly(a_board:B8_BOARD):BOOLEAN
			--true if the tile has no monomini with coordinates out of the board
		local
			i:INTEGER
		do
			Result:= True
			from i:=1
			until i>monomini.count or Result=False
			loop
				if monomini[i].get_x < 0 or monomini[i].get_y < 0 or
				monomini[i].get_x>=a_board.get_width or monomini[i].get_y>=a_board.get_height  then
					Result := False
				end
				i:=i+1
			end
		end

	has_monomino(a_monomino:B8_MONOMINO):BOOLEAN
			-- check if the game tile has the monomino a_monomino
		local
			i:INTEGER
		do
			Result:=False
			from i:=1
			until i>monomini.count or Result
			loop
				if(monomini[i].get_x=a_monomino.get_x and monomini[i].get_y=a_monomino.get_y)then
					Result:=True
				end
				i:=i+1
			end
		end
	set_rotation(a_i:INTEGER)
		do
			from
			until rotation = a_i
			loop
				if a_i > 0 then
					rotate(1,1)
				elseif a_i <0 then
					rotate(-1,1)
				end
			end

		end

feature {NONE} -- private functions

	is_overlapping(a_tile: B8_GAME_TILE;a_board:B8_BOARD):BOOLEAN
			--true if the tile placed in this position wil be overlapping with the passed (yet placed) game tile
		require
			is_placed_correctly_iov: a_tile.is_placed_correctly(a_board)
		local
			i,j:INTEGER
		do
			Result := False
			from i:=1
			until i> monomini.count or Result
			loop
				from j:=1
				until j> a_tile.get_monomini.count or Result
				loop
					if monomini[i].get_x = a_tile.get_monomini[j].get_x and monomini[i].get_y = a_tile.get_monomini[j].get_y then
						Result := True
					end
					j:=j+1
				end
				i:=i+1
			end
		end

	is_neighbor(a_tile: B8_GAME_TILE;a_board:B8_BOARD):BOOLEAN
				-- true if the tile has a common side the passed tile
		require
			is_placed_correctly_inb: a_tile.is_placed_correctly(a_board)
		local
			i,j:INTEGER
		do
			Result := False
			from i:=1
			until i> monomini.count or Result
			loop
				from j:=1
				until j> a_tile.get_monomini.count or Result
				loop
					if (monomini[i].get_x = a_tile.get_monomini[j].get_x and
			 		(monomini[i].get_y = a_tile.get_monomini[j].get_y+1 or
			 		monomini[i].get_y = a_tile.get_monomini[j].get_y-1)) then
						Result := True
					end
					if (monomini[i].get_y = a_tile.get_monomini[j].get_y and
				 	(monomini[i].get_x = a_tile.get_monomini[j].get_x+1 or
				 	monomini[i].get_x = a_tile.get_monomini[j].get_x-1)) then
						Result := True
					end
					j:=j+1
				end
				i:=i+1
			end
		end

feature -- public functions
	is_neighbor_by_monomino(a_monomino:B8_MONOMINO):BOOLEAN
				-- true if the tile has a common side the passed tile
		local
			i:INTEGER
		do
			Result := False
			from i:=1
			until i> monomini.count or Result
			loop
				if (monomini[i].get_x = a_monomino.get_x and
		 		(monomini[i].get_y = a_monomino.get_y+1 or
		 		monomini[i].get_y = a_monomino.get_y-1)) then
					Result := True
				end
				if (monomini[i].get_y = a_monomino.get_y and
			 	(monomini[i].get_x = a_monomino.get_x+1 or
			 	monomini[i].get_x = a_monomino.get_x-1)) then
					Result := True
				end
				i:=i+1
			end
		end

	get_adjacent(board:B8_BOARD;a_placed:ARRAYED_LIST[B8_GAME_TILE]):ARRAYED_LIST[B8_MONOMINO]
	local
		i,j,a,b,k:INTEGER
		l_array,l_sample:ARRAYED_LIST[B8_MONOMINO]
		l_m:B8_MONOMINO
		ok:BOOLEAN
	do
		create l_array.make (extremity.count*2)
		create l_sample.make(4)
		l_sample.force (create{B8_MONOMINO}.make(1,1))
		l_sample.force (create{B8_MONOMINO}.make(1,-1))
		l_sample.force (create{B8_MONOMINO}.make(-1,1))
		l_sample.force (create{B8_MONOMINO}.make(-1,-1))
		from i:=1
		until i>extremity.count
		loop
			from j:=1
			until j>l_sample.count
			loop
				l_m:=create {B8_MONOMINO}.make(l_sample[j].get_x,l_sample[j].get_y)
				a:=l_m.get_x+monomini[extremity[i]].get_x
				b:=l_m.get_y+monomini[extremity[i]].get_y
				if a>=0 and b>=0 and a<board.get_width and b<board.get_height then
					l_m.set_x (a)
					l_m.set_y (b)
					if not(has_monomino(l_m)) and board.has_hole (l_m) and not(is_neighbor_by_monomino(l_m)) then
						ok:=True
						from k:=1
						until k>a_placed.count or ok=False
						loop
							if(a_placed[k].is_neighbor_by_monomino(l_m))then
								ok:=False
							end
							k:=k+1
						end
						if ok then
							l_array.force (l_m)
						end
					end
				end
				j:=j+1
			end
			i:=i+1
		end
		Result:=l_array
	end

	is_adjacent(a_tile: B8_GAME_TILE;a_board:B8_BOARD):BOOLEAN
				-- true if the tile has a common vertex with the passed tile
		require
			is_placed_correctly_iad: a_tile.is_placed_correctly(a_board)
		local
			i,j:INTEGER
		do
			Result := False
			from i:=1
			until i> monomini.count or Result
			loop
				from j:=1
				until j> a_tile.get_monomini.count or Result
				loop
					if( monomini[i].get_x = a_tile.get_monomini[j].get_x+1 or
				 	monomini[i].get_x = a_tile.get_monomini[j].get_x-1) and
				 	(monomini[i].get_y = a_tile.get_monomini[j].get_y+1 or
				 	monomini[i].get_y = a_tile.get_monomini[j].get_y-1) then
						Result := True
					end
					j:=j+1
				end
				i:=i+1
			end
		end

	get_monomini:like monomini
		--returns the array of monominos
	do
		Result:= monomini
	end

	get_type:like type
	do
		Result:=type
	end

	get_color:like color
	do
		Result:=color
	end

	get_rotation:like rotation
	do
		Result:=rotation
	end


invariant
	correct_color: color>=0 and color<=3
	correct_type: type>=0 and type<=20
	correct_rotation: rotation>=-3 and rotation<=3

end
