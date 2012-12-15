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
		i : INTEGER
		board_x :INTEGER
		board_y : INTEGER
		valid_move : BOOLEAN
		do
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
			Result := l_easy_move

		end

feature -- implement the difficult level
	medium_level () : IG_MOVE
	local
		l_easy_move : IG_MOVE
		board_x : INTEGER
		board_y : INTEGER
		i : INTEGER
		free_pos_around_color : ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		j : INTEGER
		free_pos_for_move : ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		l_rotation : INTEGER
		l_free_pos_1stRound: ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		count: INTEGER
		l_fixed_hexes: ARRAY [ TUPLE[x:INTEGER;y:INTEGER]]
		ii:INTEGER
		x_ii:INTEGER
		y_ii:INTEGER
		k:INTEGER


		l_found: BOOLEAN
			 d: INTEGER
			l_pos: like gamestate.gameboard.position_from_coordinates_and_rotation
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


			l_found := False
				-- Iterate over the game board and check whether an empty hex
				-- has a neighbour which is also an empty hex.
				-- If that is the case, we can end the loop and return `True'.
			from i := 1 until i > gamestate.gameboard.gameboard.width or l_found loop
				from j := 1 until j > gamestate.gameboard.gameboard.height or l_found loop
					if attached gamestate.gameboard.gameboard[i, j] as l_hex then
						--look for a non-empty hex
						if l_hex.color/=""
						then
							--check if we have tile(move) wit the color
							l_easy_move := return_move_with_color (l_hex.color)
						end
						if l_easy_move/=Void then
						--get a vector of free pos around that color that can be played				
						free_pos_around_color:=find_neighbour_hexes (i,j,"")
						from k:=1
						until k>6 or l_found
						loop
							if
								free_pos_around_color.at (k) /= Void and free_pos_around_color.at (k).x /=-1
							then
--							if gamestate.gameboard.gameboard[free_pos_around_color.at (k).x,free_pos_around_color.at (k).y] = gamestate.gameboard.default_empty_hex then
								-- Check in all directions whether there is an empty neighbour
							from d := 1	until d > 6 or l_found loop
								l_pos := gamestate.gameboard.position_from_coordinates_and_rotation (free_pos_around_color.at (k).x,free_pos_around_color.at (k).y, d)
								if gamestate.gameboard.is_valid_position (l_pos.x, l_pos.y) and then gamestate.gameboard.gameboard[l_pos.x, l_pos.y] = gamestate.gameboard.default_empty_hex then
									l_found := True
									l_easy_move.set_position (free_pos_around_color.at (k).x,free_pos_around_color.at (k).y)
									l_rotation := return_rotation (free_pos_around_color.at (k).x,free_pos_around_color.at (k).y, l_pos.x, l_pos.y)

									l_easy_move.set_rotation (l_rotation)
									Result:=l_easy_move
								end -- we found 2nd free positions
								d := d + 1
							end -- from d := 1	until d > 6 or l_found loop
						end -- if neighbor not void
						k:=k+1
						end --found 1st neighbor free
						end --if move/=void
							-- If the hex is empty, look for an empty neighbour
							if l_easy_move/=Void
							then Result:=l_easy_move
							end
					end
					j := j + 1
				end
				i := i + 1
			end
	end -- end if first or further moves
end


feature -- Access
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
			when 3 then l_move := medium_level()
			else
			l_move := easy_level()
		end
		Result := l_move
		ensure then
			valid_move: gamestate.gameboard.is_move_valid(Result)
			result_not_void: Result /= Void
		end

	points_for_move (a_move: IG_MOVE): TUPLE[first_color, second_color: INTEGER]
		-- The number of points for potentially making the given move.
		require
			valid_move: gamestate.gameboard.is_move_valid (a_move)
		do
			Result := gamestate.gameboard.points_for_move (a_move)
		ensure
			non_negative_points: Result.first_color >= 0 and Result.second_color >= 0
	end

feature {NONE} -- Implementation

	gamestate: IG_LOGIC
		-- Keeps a reference to the game state
	level: INTEGER
		-- Contains the level of difficulty of the machine player, selected by the user in the GUI
end


