note
	description: "Summary description for {IG_GAMEBOARD}."
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_GAMEBOARD

create
	make

feature {NONE} -- Implementation

	make (number_players:INTEGER)
			--Set the game board based on the number of players.
		require
			valid_players: number_players >= 2 and number_players <= 4
		do
			num_players:=number_players
			create default_empty_hex.make ("")
			create gameboard.make_filled (default_empty_hex, 15, 15) -- Initialize 15x15 matrix using an empty hex
			if num_players.is_equal (2) then
				set_void_positions_2players -- Set Void positions on matrix for 2 players
			elseif num_players.is_equal (3) then
				set_void_positions_3players -- Set Void positions on matrix for 3 players
			else
				set_void_positions_4players -- Set Void positions on matrix for 4 players
			end

			place_initial_hexes
			moves_count := 0
		ensure
			no_moves_executed: moves_count = 0
			valid_gameboard_players: not gameboard.is_empty and num_players.is_equal (number_players)
		end

	set_void_positions_2players
		local
			i, j: INTEGER
		do
			from
				i:=0
			until
				i>14
			-- Loop to Columns 1 to 15
			loop
				i:=i+1
				from
					j:=0
				until
					j>14
				-- Loop to Lines 1 to 15
				loop
					j:=j+1
					-- Column 1, 2, 14 and 15 All lines are not valid for only 2 players
					if i=1 or i=2 or i=14 or i=15 then
						gameboard.put (Void, i, j)
					end
					-- Column 3 and 13 Lines 1, 2, 3, 4, 11, 12, 13, 14 and 15 are not valid for only 2 players
					if (i=3 or i=13) and ((j>=1 and j<=4) or (j>=11 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 4 and 12, Lines 1, 2, 3, 4, 12, 13, 14 and 15 are not valid for only 2 players
					if (i=4 or i=12) and ((j>=1 and j<=4) or (j>=12 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 5 and 11, Lines 1, 2, 3, 12, 13, 14 and 15 are not valid for only 2 players
					if (i=5 or i=11) and ((j>=1 and j<=3) or (j>=12 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 6 and 10, Lines 1, 2, 3, 13, 14 and 15 are not valid for only 2 players
					if (i=6 or i=10) and ((j>=1 and j<=3) or (j>=13 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 7 and 9, Lines 1, 2, 13, 14 and 15 are not valid for only 2 players
					if (i=7 or i=9) and (j=1 or j=2 or j=13 or j=14 or j=15) then
						gameboard.put (Void, i, j)
					end
					-- Column 8, Lines 1, 2, 14 and 15 are not valid for only 2 players
					if i=8 and (j=1 or j=2 or j=14 or j=15) then
						gameboard.put (Void, i, j)
					end
				end
			end
		end

	set_void_positions_3players
		local
			i, j: INTEGER
		do
			from
				i:=0
			until
				i>14
			-- Loop to Columns 1 to 15
			loop
				i:=i+1
				from
					j:=0
				until
					j>14
				-- Loop to Lines 1 to 15
				loop
					j:=j+1
					-- Column 1 and 15 All lines are not valid for only 3 players
					if i=1 or i=15 then
						gameboard.put (Void, i, j)
					end
					-- Column 2 and 14, Lines 1, 2, 3, 4, 12, 13, 14 and 15 are not valid for only 3 players
					if (i=2 or i=14) and ((j>=1 and j<=4) or (j>=12 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 3 and 13, Lines 1, 2, 3, 12, 13, 14 and 15 are not valid for only 3 players
					if (i=3 or i=13) and ((j>=1 and j<=3) or (j>=12 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 4 and 12, Lines 1, 2, 3, 13, 14 and 15 are not valid for only 3 players
					if (i=4 or i=12) and ((j>=1 and j<=3) or (j>=13 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 5 and 11, Lines 1, 2, 13, 14 and 15 are not valid for only 3 players
					if (i=5 or i=11) and (j=1 or j=2 or (j>=13 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 6 and 10, Lines 1, 2, 14 and 15 are not valid for only 3 players
					if (i=6 or i=10) and (j=1 or j=2 or j=14 or j=15) then
						gameboard.put (Void, i, j)
					end
					-- Column 7 and 9, Lines 1, 14 and 15 are not valid for only 3 players
					if (i=7 or i=9) and (j=1 or j=14 or j=15) then
						gameboard.put (Void, i, j)
					end
					-- Column 8, Lines 1 and 15 are not valid for only 3 players
					if i=8 and (j=1 or j=15) then
						gameboard.put (Void, i, j)
					end
				end
			end
		end

	set_void_positions_4players
		local
			i, j: INTEGER
		do
			from
				i:=0
			until
				i>14
			-- Loop to Columns 1 to 15
			loop
				i:=i+1
				from
					j:=0
				until
					j>14
				-- Loop to Lines 1 to 15
				loop
					j:=j+1
					-- Column 1 and 15, Lines 1, 2, 3, 12, 13, 14 and 15 are not valid for only 4 players
					if (i=1 or i=15) and ((j>=1 and j<=3) or (j>=12 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 2 and 14, Lines 1, 2, 3, 13, 14 and 15 are not valid for only 4 players
					if (i=2 or i=14) and ((j>=1 and j<=3) or (j>=13 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 3 and 13, Lines 1, 2, 13, 14 and 15 are not valid for only 4 players
					if (i=3 or i=13) and (j=1 or j=2 or (j>=13 and j<=15)) then
						gameboard.put (Void, i, j)
					end
					-- Column 4 and 12, Lines 1, 2, 14 and 15 are not valid for only 4 players
					if (i=4 or i=12) and (j=1 or j=2 or j=14 or j=15) then
						gameboard.put (Void, i, j)
					end
					-- Column 5 and 11, Lines 1, 14 and 15 are not valid for only 4 players
					if (i=5 or i=11) and (j=1 or j=14 or j=15) then
						gameboard.put (Void, i, j)
					end
					-- Column 6 and 10, Lines 1 and 15 are not valid for only 4 players
					if (i=6 or i=10) and (j=1 or j=15) then
						gameboard.put (Void, i, j)
					end
					-- Column 7 and 9, Line 15 are not valid for only 4 players
					if (i=7 or i=9) and j=15 then
						gameboard.put (Void, i, j)
					end
				end
			end
		end

feature -- Status Setting

	set_tile_on_board (ig_move:IG_MOVE; ig_player:IG_PLAYER)
			--Set the tile on board based on a player move.
		require
			is_move_valid(ig_move)
		local
			ig_tile:IG_TILE
			l_pos: like position_from_coordinates_and_rotation
		do
			ig_tile := ig_move.tile
			l_pos := position_from_coordinates_and_rotation (ig_move.x_position, ig_move.y_position, ig_move.rotation)

				--Save the first hex face from tile
			gameboard.put (ig_tile.first_hex, ig_move.x_position, ig_move.y_position)
				--Save the second hex face from tile
			gameboard.put (ig_tile.second_hex, l_pos.x, l_pos.y)
				-- Remove the tile
			ig_player.tiles.prune_all (ig_tile)
			moves_count := moves_count + 1
		ensure
			moves_count_increased: moves_count = old moves_count + 1
			tile_removed: not ig_player.tiles.has (ig_move.tile)
			--Fbesser: Maybe some sort of gameboard.has(ig:move.tile)?
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

				neighbour_hex:= position_from_coordinates_and_rotation(hex_x,hex_y, rot ) -- rotation4 = direction1
				if (gameboard.item (neighbour_hex.x,neighbour_hex.y)/=Void)  then
					if (gameboard.item (neighbour_hex.x,neighbour_hex.y).color.is_equal (a_color))
					then fit_positions.put ([neighbour_hex.x,neighbour_hex.y], i)
					else fit_positions.put ([-1, -1],i)
					end
			else fit_positions.put (Void,i)
		--	else fit_positions.put ([-1, -1],i)
			end
			i:=i+1
		end

		Result := fit_positions
	end


feature

	points_for_move (a_move: IG_MOVE): TUPLE[first_color, second_color: INTEGER]
		-- The number of points for potentially making the given move.
	require
		valid_move: is_move_valid (a_move)
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
			if(neighbors1.at (i)/=Void and neighbors1.at(i).x/=-1) then
				points:=points+1
				x:=neighbors1.at (i).x
				y:=neighbors1.at (i).y
				from
				until neighbors2.at(i)=Void or neighbors2.at (i).x=-1 or not (gameboard.item (x,y).color.is_equal (a_move.tile.first_hex.color)) or x>gameboard.width or y>gameboard.height
				loop
					neighbors2:=find_neighbour_hexes (x,y, a_move.tile.first_hex.color)


					if(neighbors2.at (i)/=Void and neighbors2.at (i).x/=-1) then
						points:=points+1
						x:=neighbors2.at (i).x
						y:=neighbors2.at (i).y
					end
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


		---for the second hex

		neighbors1 := find_neighbour_hexes (a_move.x_position, a_move.y_position, a_move.tile.second_hex.color)
		points:=0
		from i:=1
		until i>6
		loop
			if(neighbors1.at (i)/=Void and neighbors1.at(i).x/=-1) then
				points:=points+1
				x:=neighbors1.at (i).x
				y:=neighbors1.at (i).y
				from
				until neighbors2.at(i)=Void or neighbors2.at (i).x=-1 or not (gameboard.item (x,y).color.is_equal (a_move.tile.first_hex.color)) or x>gameboard.width or y>gameboard.height
				loop
					neighbors2:=find_neighbour_hexes (x,y, a_move.tile.second_hex.color)


					if(neighbors2.at (i)/=Void and neighbors2.at (i).x/=-1) then
						points:=points+1
						x:=neighbors2.at (i).x
						y:=neighbors2.at (i).y
					end
				end
			end
		i:=i+1
		end --end loop

		Result.second_color := points
		print("Points for color ")
		print(a_move.tile.second_hex.color)
		print("= ")
		print(points)
		print("%N")

	ensure
		non_negative_points: Result.first_color >= 0 and Result.second_color >= 0
	end

	is_move_valid(ig_move:IG_MOVE): BOOLEAN
		local
			l_pos: like position_from_coordinates_and_rotation
			i_x, i_y, j_x, j_y: INTEGER
			l_in_bounds: BOOLEAN
		do
			i_x := ig_move.x_position
			i_y := ig_move.y_position
			l_pos := position_from_coordinates_and_rotation (i_x, i_y, ig_move.rotation)
			j_x := l_pos.x
			j_y := l_pos.y

			l_in_bounds := True
				-- Check we are still within the matrix boundaries
			if i_x <= 0 or i_x > gameboard.width or i_y <= 0 or i_y > gameboard.height then
				l_in_bounds := False
			end
			if j_x <= 0 or j_x > gameboard.width or j_y <= 0 or j_y > gameboard.height then
				l_in_bounds := False
			end

			if l_in_bounds then
				Result := (gameboard[i_x, i_y] = default_empty_hex) and (gameboard[j_x, j_y] = default_empty_hex)
			else
				Result := False
			end

--			if (moves_count = 0) then
--				if num_players = 2 then
--			    		--Default blue color
--			    		--2 players
--			    	if l_in_bounds then
--						Result := (((i_x = 7 or i_y = 3) or (i_x = 8 or i_y = 4) or (i_x = 9 or i_y = 3))
--						             and (ig_move.tile.first_hex.color = default_blue_hex.color)) or
--						             (((j_x = 7 or j_y = 3) or (j_x = 8 or j_y = 4) or (j_x = 9 or j_y = 3))
--						             and (ig_move.tile.second_hex.color = default_blue_hex.color))

--					else
--						Result := False

--					end

--					--Default green color
--					--2 players
--					if l_in_bounds then
--						Result := (((i_x = 4 or i_y = 5) or (i_x = 4 or i_y = 6) or (i_x = 3 or i_y = 6))
--								 and (ig_move.tile.first_hex.color = default_green_hex.color)) or
--									 (((j_x = 4 or j_y = 5) or (j_x = 4 or j_y = 6) or (j_x = 3 or j_y = 6))
--								and (ig_move.tile.second_hex.color = default_green_hex.color))

--					else
--						Result := False

--					end

--					--Default red color
--					--2 players
--					if l_in_bounds then
--						Result := (((i_x = 3 or i_y = 9) or (i_x = 4 or i_y = 10) or (i_x = 11 or i_y = 10))
--								 and (ig_move.tile.first_hex.color = default_red_hex.color)) or
--									 (((j_x = 3 or j_y = 9) or (j_x = 4 or j_y = 10) or (j_x = 11 or j_y = 10))
--								and (ig_move.tile.second_hex.color = default_red_hex.color))

--					else
--						Result := False

--					end

--					--Default pink color
--					--2 players
--					if l_in_bounds then
--						Result := (((i_x = 7 or i_y = 12) or (i_x = 8 or i_y = 12) or (i_x = 9 or i_y = 12))
--								 and (ig_move.tile.first_hex.color = default_pink_hex.color)) or
--									 (((j_x = 7 or j_y = 12) or (j_x = 8 or j_y = 12) or (j_x = 9 or j_y = 12))
--								and (ig_move.tile.second_hex.color = default_pink_hex.color))

--					else
--						Result := False

--					end

--					--Default yellow color
--					--2 players
--					if l_in_bounds then
--						Result := (((i_x = 12 or i_y = 11) or (i_x = 12 or i_y = 10) or (i_x = 13 or i_y = 9))
--								 and (ig_move.tile.first_hex.color = default_yellow_hex.color)) or
--									 (((j_x = 12 or j_y = 11) or (j_x = 12 or j_y = 10) or (j_x = 13 or j_y = 9))
--								and (ig_move.tile.second_hex.color = default_yellow_hex.color))

--					else
--						Result := False

--					end

--					--Default orange color
--					--2 players
--					if l_in_bounds then
--						Result := (((i_x = 13 or i_y = 6) or (i_x = 12 or i_y = 6) or (i_x = 12 or i_y = 5))
--								 and (ig_move.tile.first_hex.color = default_orange_hex.color)) or
--									 (((j_x = 13 or j_y = 6) or (j_x = 12 or j_y = 6) or (j_x = 12 or j_y = 5))
--								and (ig_move.tile.second_hex.color = default_orange_hex.color))

--					else
--						Result := False

--					end

--				elseif num_players = 3 then

--					--Default blue color
--			    		--3 players
--			    		if l_in_bounds then
--						Result := (((i_x = 7 or i_y = 2) or (i_x = 8 or i_y = 3) or (i_x = 9 or i_y = 2))
--						             and (ig_move.tile.first_hex.color = default_blue_hex.color)) or
--						             (((j_x = 7 or j_y = 2) or (j_x = 8 or j_y = 3) or (j_x = 9 or j_y = 2))
--						             and (ig_move.tile.second_hex.color = default_blue_hex.color))

--					else
--						Result := False

--					end

--					--Default green color
--					--3 players
--					if l_in_bounds then
--						Result := (((i_x = 2 or i_y = 6) or (i_x = 3 or i_y = 5) or (i_x = 3 or i_y = 4))
--								 and (ig_move.tile.first_hex.color = default_green_hex.color)) or
--									 (((j_x = 2 or j_y = 6) or (j_x = 3 or j_y = 5) or (j_x = 3 or j_y = 4))
--								and (ig_move.tile.second_hex.color = default_green_hex.color))

--					else
--						Result := False

--					end

--					--Default red color
--					--3 players
--					if l_in_bounds then
--						Result := (((i_x = 2 or i_y = 10) or (i_x = 3 or i_y = 10) or (i_x = 3 or i_y = 11))
--								 and (ig_move.tile.first_hex.color = default_red_hex.color)) or
--									 (((j_x = 2 or j_y = 10) or (j_x = 3 or j_y = 10) or (j_x = 3 or j_y = 11))
--								and (ig_move.tile.second_hex.color = default_red_hex.color))

--					else
--						Result := False

--					end

--					--Default pink color
--					--3 players
--					if l_in_bounds then
--						Result := (((i_x = 7 or i_y = 13) or (i_x = 8 or i_y = 13) or (i_x = 9 or i_y = 13))
--								 and (ig_move.tile.first_hex.color = default_pink_hex.color)) or
--									 (((j_x = 7 or j_y = 13) or (j_x = 8 or j_y = 13) or (j_x = 9 or j_y = 13))
--								and (ig_move.tile.second_hex.color = default_pink_hex.color))

--					else
--						Result := False

--					end

--					--Default yellow color
--					--3 players
--					if l_in_bounds then
--						Result := (((i_x = 13 or i_y = 11) or (i_x = 13 or i_y = 10) or (i_x = 14 or i_y = 10))
--								 and (ig_move.tile.first_hex.color = default_yellow_hex.color)) or
--									 (((j_x = 13 or j_y = 11) or (j_x = 13 or j_y = 10) or (j_x = 14 or j_y = 10))
--								and (ig_move.tile.second_hex.color = default_yellow_hex.color))

--					else
--						Result := False

--					end

--					--Default orange color
--					--3 players
--					if l_in_bounds then
--						Result := (((i_x = 13 or i_y = 4) or (i_x = 13 or i_y = 5) or (i_x = 14 or i_y = 6))
--								 and (ig_move.tile.first_hex.color = default_orange_hex.color)) or
--									 (((j_x = 13 or j_y = 4) or (j_x = 13 or j_y = 5) or (j_x = 14 or j_y = 6))
--								and (ig_move.tile.second_hex.color = default_orange_hex.color))

--					else
--						Result := False

--					end


--				else
--					--Default blue color
--			    		--4 players
--			    		if l_in_bounds then
--						Result := (((i_x = 7 or i_y = 1) or (i_x = 8 or i_y = 2) or (i_x = 9 or i_y = 1))
--						             and (ig_move.tile.first_hex.color = default_blue_hex.color)) or
--						             (((j_x = 7 or j_y = 1) or (j_x = 8 or j_y = 2) or (j_x = 9 or j_y = 1))
--						             and (ig_move.tile.second_hex.color = default_blue_hex.color))

--					else
--						Result := False

--					end

--					--Default green color
--					--4 players
--					if l_in_bounds then
--						Result := (((i_x = 2 or i_y = 4) or (i_x = 2 or i_y = 5) or (i_x = 1 or i_y = 5))
--								 and (ig_move.tile.first_hex.color = default_green_hex.color)) or
--									 (((j_x = 2 or j_y = 4) or (j_x = 2 or j_y = 5) or (j_x = 1 or j_y = 5))
--								and (ig_move.tile.second_hex.color = default_green_hex.color))

--					else
--						Result := False

--					end

--					--Default red color
--					--4 players
--					if l_in_bounds then
--						Result := (((i_x = 1 or i_y = 10) or (i_x = 2 or i_y = 11) or (i_x = 2 or i_y = 12))
--								 and (ig_move.tile.first_hex.color = default_red_hex.color)) or
--									 (((j_x = 1 or j_y = 10) or (j_x = 2 or j_y = 11) or (j_x = 2 or j_y = 12))
--								and (ig_move.tile.second_hex.color = default_red_hex.color))

--					else
--						Result := False

--					end

--					--Default pink color
--					--4 players
--					if l_in_bounds then
--						Result := (((i_x = 7 or i_y = 14) or (i_x = 8 or i_y = 14) or (i_x = 9 or i_y = 14))
--								 and (ig_move.tile.first_hex.color = default_pink_hex.color)) or
--									 (((j_x = 7 or j_y = 14) or (j_x = 8 or j_y = 14) or (j_x = 9 or j_y = 14))
--								and (ig_move.tile.second_hex.color = default_pink_hex.color))

--					else
--						Result := False

--					end

--					--Default yellow color
--					--4 players
--					if l_in_bounds then
--						Result := (((i_x = 14 or i_y = 12) or (i_x = 14 or i_y = 11) or (i_x = 15 or i_y = 10))
--								 and (ig_move.tile.first_hex.color = default_yellow_hex.color)) or
--									 (((j_x = 14 or j_y = 12) or (j_x = 14 or j_y = 11) or (j_x = 15 or j_y = 10))
--								and (ig_move.tile.second_hex.color = default_yellow_hex.color))

--					else
--						Result := False

--					end

--					--Default orange color
--					--4 players
--					if l_in_bounds then
--						Result := (((i_x = 14 or i_y = 4) or (i_x = 14 or i_y = 5) or (i_x = 15 or i_y = 5))
--								 and (ig_move.tile.first_hex.color = default_orange_hex.color)) or
--									 (((j_x = 14 or j_y = 4) or (j_x = 14 or j_y = 5) or (j_x = 15 or j_y = 5))
--								and (ig_move.tile.second_hex.color = default_orange_hex.color))

--					else
--						Result := False

--					end


--			end
			--TODO: Remove when no longer necessary.

--	end


				-- If this is the first move, then the tile must be placed near
				-- one of the initial hexes with a matching color.
			if moves_count < num_players then
				-- TODO: find whether the tile has a neighbor with one matching color.
			end
				-- For debug purposes only
--			print ("(" + i_x.out + "," + i_y.out + ") - (" + j_x.out + "," + j_y.out + ") rotation: " + ig_move.rotation.out + " valid? " + Result.out + "%N")
	end

	can_add_tile: BOOLEAN
			-- Return True if at least one more tile can be added to the game board.
		local
			l_found: BOOLEAN
			i, j, d: INTEGER
			l_pos: like position_from_coordinates_and_rotation
		do
			Result := false
			l_found := False
				-- Iterate over the game board and check whether an empty hex
				-- has a neighbour which is also an empty hex.
				-- If that is the case, we can end the loop and return `True'.
			from i := 1 until i > gameboard.width or l_found loop
				from j := 1 until j > gameboard.height or l_found loop
					if attached gameboard[i, j] as l_hex then
							-- If the hex is empty, look for an empty neighbour
						if l_hex = default_empty_hex then
								-- Check in all directions whether there is an empty neighbour
							from d := 1	until d > 6 or l_found loop
								l_pos := position_from_coordinates_and_rotation (i, j, d)
								if is_valid_position (l_pos.x, l_pos.y) and then gameboard[l_pos.x, l_pos.y] = default_empty_hex then
									Result := True
									l_found := True
								end
								d := d + 1
							end
						end
					end
					j := j + 1
				end
				i := i + 1
			end
		end

feature -- Access

	moves_count: INTEGER
			-- The number of total moves executed on the board.

	gameboard: ARRAY2 [IG_HEX]
		-- 2dim-array for the board of the game. The board size depends on the number of players.

	num_players: INTEGER
		-- Number of players of the game

	default_empty_hex: IG_HEX
		-- Default Empty Hex

	default_blue_hex: IG_HEX
		-- Default blue hex

	default_green_hex: IG_HEX
		-- Default green hex

	default_red_hex: IG_HEX
		-- Default red hex

	default_pink_hex: IG_HEX
		-- Default purple hex

	default_yellow_hex: IG_HEX
		-- Default yellow hex

	default_orange_hex: IG_HEX
		-- Default orange hex

	position_from_coordinates_and_rotation (a_x, a_y, a_rotation: INTEGER): TUPLE[x, y: INTEGER]
			-- Compute the position of the second hex, given a position and rotation of the first tile.
		require
			valid_rotation: a_rotation >= 1 and a_rotation <= 6
		do
			create Result
			Result.x := a_x
			Result.y := a_y
			if a_rotation = 1 then
					-- Second hex is below
				Result.y := a_y + 1
			elseif a_rotation = 2 then
					-- Second hex bottom-left
				Result.x := a_x - 1
					-- If the column is odd, the row is one below
				if a_x \\ 2 = 1 then
					Result.y := a_y + 1
				end
			elseif a_rotation = 3 then
					-- Second hex top-left
				Result.x := a_x - 1
					-- If the column is even, the row is one above
				if a_x \\ 2 = 0 then
					Result.y := a_y - 1
				end
			elseif a_rotation = 4 then
					-- Second hex is above
				Result.y := a_y - 1
			elseif a_rotation = 5 then
					-- Second hex top-right
				Result.x := a_x + 1
					-- If the column is even, the row is one above
				if a_x \\ 2 = 0 then
					Result.y := a_y - 1
				end
			elseif a_rotation = 6 then
					-- Second hex bottom-right
				Result.x := a_x + 1
					-- If the column is odd, the row is one below
				if a_x \\ 2 = 1 then
					Result.y := a_y + 1
				end
			end
		end

feature {NONE} -- Implementation

	place_initial_hexes
		do
			create default_blue_hex.make ("b")
			create default_green_hex.make ("g")
			create default_red_hex.make ("r")
			create default_pink_hex.make ("p")
			create default_yellow_hex.make ("y")
			create default_orange_hex.make ("o")

			gameboard.put (default_blue_hex, 8, 3) -- Blue Hex at column 8, line 3
			gameboard.put (default_green_hex, 3, 5) -- Green Hex at column 3, line 5
			gameboard.put (default_red_hex, 3, 10) -- Red Hex at column 3, line 10
			gameboard.put (default_pink_hex, 8, 13) -- Pink Hex at column 8, line 13
			gameboard.put (default_yellow_hex, 13, 10) -- Yellow Hex at column 13, line 10
			gameboard.put (default_orange_hex, 13, 5) -- Orange Hex at column 13, line 5
		end

	is_valid_position (a_x, a_y: INTEGER): BOOLEAN
			-- Is the given position within the game board boundaries?
		do
			Result := a_x > 0 and a_x <= gameboard.width and a_y > 0 and a_y <= gameboard.height
		end

end
