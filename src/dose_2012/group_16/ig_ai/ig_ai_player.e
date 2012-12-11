note
	description : "This class implements  a machine player"
	author	    : "Emilia Cioroaica, Adriana Selleri Rocha"
	date        : "$Date$"
	revision    : "$Revision$"

class
	IG_AI_PLAYER

inherit
	IG_PLAYER

create
	make_ai_player

feature -- Initialization

	make_ai_player(a_gamestate: IG_LOGIC; computer_level: INTEGER)
		require
			level_in_range: computer_level > 0 and computer_level <=3

			--Added by fbesser
			game_state_not_void: a_gamestate /= Void
		do
			gamestate := a_gamestate
			level := computer_level
			-- Create a new ai_player  with level of difficulty "computer_level"

			create tiles.make

		ensure
			level_set: level = computer_level
			gamestate_reference_created: gamestate = a_gamestate
		end

-- easy level aiming at scoring at least 1 point
-- we replace the dummy implementation of easy_level with this when we are sure it is working :D
feature -- implement the easy level
	medium_level() : IG_MOVE
	local
		l_easy_move : IG_MOVE
		x : INTEGER
		y : INTEGER
		board_x : INTEGER
		board_y : INTEGER
		board_c : STRING
		i : INTEGER
		valid_move : BOOLEAN
		free_pos_around_color : ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		j : INTEGER
		free_pos_for_move : ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		l_rotation : INTEGER
		l_free_pos_1stRound: ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		count: INTEGER
		l_fixed_hexes: ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		l_tile: IG_TILE
		l_first_hex :IG_HEX
		l_second_hex: IG_HEX
		ii:INTEGER
		x_ii:INTEGER
		y_ii:INTEGER
		k:INTEGER
		do

		--	create l_fixed_hexes.make_empty
		create	l_fixed_hexes.make_filled ([0,0],1, 6)
		create	l_free_pos_1stround.make_filled ([0,0], 1, 6)
		create  free_pos_for_move.make_filled ([0,0], 1, 6)
		create free_pos_around_color.make_filled ([0,0], 1,6)
		l_easy_move:=Void
		l_fixed_hexes.put([8,3],1) --blue
		l_fixed_hexes.put ([3,5], 2) --green
		l_fixed_hexes.put ([3,10], 3) --red
		l_fixed_hexes.put ([8,13], 4) --pink
		l_fixed_hexes.put ([13,10], 5) --yelloW
		l_fixed_hexes.put ([13,5], 6) --orange
		l_rotation:=0


		--we check if it is our first move
		if gamestate.gameboard.moves_count <= gamestate.gameboard.num_players then
			--look around fixed hexes  for a free place to put our first tile
			from
			until l_easy_move/=Void
			loop

			--l_easy_move:=Void
			from i:=1 --i :iterates through fixed positions
			until i>6
			loop
				count:=0
				l_free_pos_1stRound := find_neighbour_hexes(l_fixed_hexes.at(i).x,l_fixed_hexes.at (i).y,"")
				from ii:=1 -- we iterate through free positions are around the color on the board
				until ii>6
				loop
					if(l_free_pos_1stRound.at (ii)/=Void and l_free_pos_1stRound.at (ii).x/= -1)
					then
						count:=count+1
						x_ii:=l_free_pos_1stRound.at (ii).x
						y_ii:=l_free_pos_1stRound.at (ii).y
					end --end if
				ii:=ii+1
				end --loop ii
				if (count=3) then
					-- we found a free position to play, next we check our colors
					l_easy_move := return_move_with_color (gamestate.gameboard.gameboard.item(l_fixed_hexes.at (i).x,l_fixed_hexes.at (i).y).color)
					if l_easy_move/=Void then
						l_easy_move.set_position (x_ii,y_ii)
						free_pos_for_move:=find_neighbour_hexes(x_ii,y_ii,"")
						from
							k:=1
						until
							k>6 and l_rotation >0
						loop
							if( free_pos_for_move.at (k) /=Void and free_pos_for_move.at (k).x/=-1) then
							l_rotation:=return_rotation (x_ii, y_ii, free_pos_for_move.at (k).x, free_pos_for_move.at (k).y)
							end
							k:=k+1
						end
						l_easy_move.set_rotation (l_rotation)
					end
				end--end if count

				if l_easy_move/=Void then
					if(gamestate.gameboard.is_move_valid (l_easy_move))
					then
						Result:=l_easy_move
					else
						l_easy_move:=Void
					end
				end
			i:=i+1
			end --end loop i

			if(l_easy_move=Void) then
				gamestate.swap_tiles (Current)
			end
		end --end looping
	 else
	 	---
	 	-- GENERAL CASE
	 	---
	 	---
			--for all positions in the board
	from

	until l_easy_move/=Void

	loop

	from board_x := 1
	until  board_x > gamestate.gameboard.gameboard.width
	loop
		from board_y := 1
		until board_y > gamestate.gameboard.gameboard.height
		loop
			-- we identify a color on the board
				if gamestate.gameboard.gameboard.item (board_x, board_y) /=Void and gamestate.gameboard.gameboard.item(board_x,board_y).color /= ""
				then
					-- we find the free positions around that color
				free_pos_around_color := find_neighbour_hexes(board_x, board_y,"")
				-- we iterate into the vector of free positions around the color of a hex on the board
				from j:=1
				until j>6
				loop
					-- we identify the next free position to make a move
					free_pos_for_move := find_neighbour_hexes(free_pos_around_color.item (j).x,free_pos_around_color.item (j).y,"")
					from --iterate though free_pos_for_move
						k:=1
					until
						k>6 and l_rotation >0
					loop
						if( free_pos_for_move.at (k) /=Void and free_pos_for_move.at (k).x/=-1) then
						l_rotation:=return_rotation (free_pos_around_color.item (j).x,free_pos_around_color.item (j).y, free_pos_for_move.at (k).x, free_pos_for_move.at (k).y)
						end --end if
						k:=k+1
					end --end loop k

						l_easy_move := return_move_with_color(gamestate.gameboard.gameboard.item(board_x,board_y).color)
						--If found a tile with that color
						if l_easy_move/=Void then
							print("FOUND Tile with color")
							print("%N")

							l_easy_move.set_position (free_pos_around_color.item (j).x,free_pos_around_color.item (j).y)

							if(gamestate.gameboard.is_move_valid (l_easy_move))
							then
								Result:=l_easy_move
							else
								l_easy_move:=Void

							end --end if valid_move

						end --if l_easy_move/=Void
					j:=j+1
				end -- end from j:=1
				end -- big if position is ocuppied
			board_y := board_y + 1
		end -- end from board_y
		board_x := board_x + 1
		end -- end from board_x

	if(l_easy_move=Void) then
		gamestate.swap_tiles (Current)
	end
	end--loop
	end -- end if first_move or other move
end


feature -- return the rotation based on position of 2 hexes
	return_rotation (x1,y1,x2,y2:INTEGER) : INTEGER
	local
		rotation : INTEGER
		do
			if(x1.is_equal(x2)and y1=y2-1) then rotation:= 1 end --ok
			if((x2=x1-1) and ((((x1\\2)=1) and (y2=y1+1)) or ((x1\\2)=0 and (y2=y1)))) then rotation:=2 end
			if((x2=x1-1) and ((((x1\\2)=0) and (y2=y1-1)) or ((x1\\2)=1 and (y2=y1)))) then rotation:=3 end
			if(x1.is_equal (x2) and y1=y2+1) then rotation := 4 end--ok
			if((x2=x1+1) and ((((x1\\2)=0) and (y2=y1-1)) or ((x1\\2)=1 and (y2=y1)))) then rotation:=5 end
			if((x2=x1+1) and ((((x1\\2)=1) and (y2=y1+1)) or ((x1\\2)=0 and (y2=y1)))) then rotation:=6 end
		Result:=rotation
		end

feature -- return a move with a specific color or void
	return_move_with_color(color:STRING) : IG_MOVE
	local
		i: INTEGER
		l_move : IG_MOVE
		l_hex : IG_HEX
	do

		l_move:=Void
		from
			i:=1 --we look our rack of tiles
		until
			i>6 or l_move/=Void
		loop
			if(tiles.at(i).first_hex.color.is_equal (color) )

			then
				create	l_move.make_with_tile (tiles.at(i))
			--	l_move.set_rotation (1)
			elseif (tiles.at (i).second_hex.color.is_equal (color) ) then
				create l_move.make_with_tile (tiles.at (i))
			--	l_move.set_rotation (4)

				l_move.tile.make_with_hexes (l_move.tile.second_hex,l_move.tile.first_hex)
			else
				l_move := Void
			end -- end if
		i:=i+1
		end -- end loop
		Result := l_move
	end


feature -- find neighbour hexes with specific condition
	find_neighbour_hexes(hex_x, hex_y:INTEGER; a_color : STRING) : ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
	local
		i:INTEGER
		fit_positions : ARRAY[TUPLE[x:INTEGER;y:INTEGER]]
		neighbour_hex:TUPLE[x:INTEGER;y:INTEGER]
		rot:INTEGER
		do
			rot:=1
			create fit_positions.make_filled ([0,0], 1, 6)
			from i:=1
			until i>6
			loop

				rot:=((i+3) \\ 6)+1

				neighbour_hex:= gamestate.gameboard.position_from_coordinates_and_rotation(hex_x,hex_y, rot ) -- rotation4 = direction1
				if (gamestate.gameboard.gameboard.item (neighbour_hex.x,neighbour_hex.y)/=Void)  then
					if (gamestate.gameboard.gameboard.item (neighbour_hex.x,neighbour_hex.y).color.is_equal (a_color))
					then fit_positions.put ([neighbour_hex.x,neighbour_hex.y], i)
					else fit_positions.put ([-1, -1],i)
					end
				else fit_positions.put (Void,i)
				end
			i:=i+1
			end

	Result := fit_positions
		end

-- dummy easy level with aleatory moves

feature -- implement the easy level
	easy_level () : IG_MOVE
	local
		l_easy_move : IG_MOVE
		random_number : RANDOM
		random_X : INTEGER
		random_Y : INTEGER
		i : INTEGER
		board_x :INTEGER
		board_y : INTEGER
		valid_move : BOOLEAN
		l_time:TIME
		l_seed:INTEGER
		do
			create l_time.make_now
			l_seed:=l_time.second
			create random_number.set_seed (l_seed)
			valid_move := FALSE
			from board_x:=1
			until board_x>gamestate.gameboard.gameboard.width or valid_move
			loop
				from board_y :=1
				until board_y>gamestate.gameboard.gameboard.height or valid_move
				loop
					if(gamestate.gameboard.gameboard.item (board_x,board_y)/=Void and gamestate.gameboard.gameboard.item (board_x, board_y).color.is_equal ("")) then
					create l_easy_move.make_with_tile (tiles.at (1))
					l_easy_move.set_position (board_x, board_y)
					from i := 1
					until  valid_move or i > 6
					loop
						l_easy_move.set_rotation (i)
						valid_move := gamestate.gameboard.is_move_valid(l_easy_move)
						if not valid_move
						then i:=i+1
						end
					end -- end of small (rotation) loop
					end --end if
					board_y:=board_y+1
				end--end board_y

				board_x:=board_x+1
			end --end board_x
			print("Rotation")
			print(l_easy_move.rotation)
			Result := l_easy_move

		end

feature -- implement the difficult level
	difficult_level () : IG_MOVE
		do
			Result := easy_level()
		end


feature --
	next_move: IG_MOVE
		require else
			game_state_not_void : gamestate /= Void
			-- We need to know the game state to calculate the next move
			board_size_not_void: gamestate.gameboard.gameboard.width > 0 and gamestate.gameboard.gameboard.height > 0
			-- We need to know the size of the board to identify which moves are valid
		local
			l_move: IG_MOVE
		do
			-- Sends the next move of an AI Player to the LOGIC	component
			inspect level
			when 1 then l_move := easy_level()
			when 2 then l_move := medium_level()
			when 3 then l_move := difficult_level()
			else
			l_move := easy_level()
		end
		Result := l_move
		ensure then
			valid_move: gamestate.gameboard.is_move_valid(Result)
			result_not_void: Result /= Void
		end



feature
points_for_move (a_move: IG_MOVE): TUPLE[first_color, second_color: INTEGER]
		-- The number of points for potentially making the given move.
	require
		valid_move: gamestate.gameboard.is_move_valid (a_move)
	local
		neighbors1 : ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		neighbors2 : ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		i:INTEGER
		x:INTEGER
		y:INTEGER
		points:INTEGER
	do
		create	neighbors1.make_filled ([0,0], 1, 6)
		create	neighbors2.make_filled ([0,0], 1, 6)
		neighbors1 := find_neighbour_hexes (a_move.x_position, a_move.y_position, a_move.tile.first_hex.color)
		points:=0
		from i:=1
		until i>6
		loop
			if(neighbors1.at(i)/=Void and neighbors1.at(i).x/=-1) then
				points:=points+1
				x:=neighbors1.at (i).x
				y:=neighbors1.at (i).y
				neighbors2:=find_neighbour_hexes (x,y, a_move.tile.first_hex.color)
				from

				until gamestate.gameboard.gameboard.item (x,y).color /= a_move.tile.first_hex.color or (x>gamestate.gameboard.gameboard.width and y>gamestate.gameboard.gameboard.height )
				loop
					if(neighbors2.at (i)/=Void and neighbors2.at (i).x/=-1) then
						points:=points+1
					end
					x:=neighbors2.at (i).x
					y:=neighbors2.at (i).y
				end
			end
		i:=i+1
		end --end loop
		create Result
		Result.first_color := points
		print("Points for color ")
		print(a_move.tile.first_hex.color)
		print("= ")
		print(points)
		print("%N")
	ensure
		non_negative_points: Result.first_color >= 0 and Result.second_color >= 0
	end



feature -- Access
	gamestate: IG_LOGIC
		-- Keeps a reference to the game state
	level: INTEGER
		-- Contains the level of difficulty of the machine player, selected by the user in the GUI
end


