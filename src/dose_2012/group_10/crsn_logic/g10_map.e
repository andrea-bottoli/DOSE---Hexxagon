note
 description: "Summary description for {MAP}."
 author: ""
 date: "$Date$"
 revision: "$Revision$"

class
 G10_MAP

create
 make

feature
 Map: ARRAY2[G10_TILE] --http://docs.eiffel.com/static/libraries/base/arrayed_list_flatshort.html
 --TUPLE can be replaced by new CLASS for example
 --ineger in turple is PlayerId
feature
	put_tile(TheTile:G10_TILE TheCoordinate:G10_POSITION ThePlayerID:INTEGER)
	do
		TheTile.set_player_id (ThePlayerID)
		Map.put (TheTile,TheCoordinate.get_x(),TheCoordinate.get_y())
	end

	get_tile(x : INTEGER y : INTEGER) : G10_TILE -- routine returns the tile in (x,y) coordinates of the terrain.
	do
		Result := Map.item (x,y)
	end

	UpdateScores(ThePlayers:G10_PLAYERS):BOOLEAN
	do

	end
	IsEmpty(pos : G10_POSITION):BOOLEAN
	do
		if (Map.item (pos.get_x(),pos.get_y())/= void) then
			Result:= FALSE
		else
			Result:= TRUE
		end
	 end

	-- The method checks whether you can put this tile on this position or not
	can_tile_be_placed(theTile: G10_TILE thePos: G10_POSITION): BOOLEAN
	local
		i: INTEGER
		j: INTEGER
		aLeftTile: G10_TILE
		aRightTile: G10_TILE
		anUpperTile: G10_TILE
		aLowerTile: G10_TILE
		aTileParts: ARRAY2[G10_TILE_PART]
		aTempParts: ARRAY2[G10_TILE_PART]
	do
		if(Map.item (thePos.get_x, thePos.get_y) = void)
		then
			Result := FALSE
		else
			aTileParts := theTile.get_parts()
			aLeftTile := Map.item (thePos.get_x, thePos.get_y - 1)
			aRightTile := Map.item (thePos.get_x, thePos.get_y + 1)
			anUpperTile := Map.item (thePos.get_x - 1, thePos.get_y)
			aLowerTile := Map.item (thePos.get_x + 1, thePos.get_y)

			if(aLeftTile /= void)
			then
				aTempParts := aLeftTile.get_parts()
				from i := 0 until i > 3
				loop
					if(aTileParts.item (i, 0) = aTempParts.item (i, 2))
					then i := i + 1
					else
						Result := FALSE
					end
				end
				elseif(aRightTile /= void)
				then
					aTempParts.wipe_out()
					aTempParts := aRightTile.get_parts()
					from i := 0 until i > 3
					loop
						if(aTileParts.item (i, 2) = aTempParts.item (i, 0))
						then i := i + 1
						else
							Result := FALSE
						end
					end
				elseif(anUpperTile /= void)
				then
					aTempParts.wipe_out()
					aTempParts := anUpperTile.get_parts()
					from j := 0 until j < 3
					loop
						if(aTileParts.item (0, j) = aTempParts.item (2, j))
						then j := j + 1
						else
							Result := FALSE
						end
					end
				elseif(aLowerTile /= void)
				then
					aTempParts.wipe_out()
					aTempParts := aLowerTile.get_parts()
					from j := 0 until j < 3
					loop
						if(aTileParts.item (2, j) = aTempParts.item (0, j))
						then j := j + 1
						else
							Result := FALSE
						end
					end
				end

			Result := TRUE
		end
	end

	--finds possible positions for a follower on a tile for a certain position
	find_places_for_chip(thePosition: G10_POSITION theTile: G10_TILE thePlayer: G10_PLAYER): ARRAYED_LIST[TUPLE[part_x: INTEGER; part_y: INTEGER; type: INTEGER]]
	local
		aTileParts: ARRAY2[G10_TILE_PART]
		i: INTEGER
		j: INTEGER
		aTmpPart: G10_TILE_PART
		aTmpTuple: TUPLE[part_x: INTEGER; part_y: INTEGER; type: INTEGER]
		aTmpResult: ARRAYED_LIST[TUPLE[part_x: INTEGER; part_y: INTEGER; type: INTEGER]]
	do
		if(thePlayer.get_sparechipsamount() /= 0)
		then
			aTileParts := theTile.get_parts()
			from i := 0 until i < 3
			loop
				from j := 0 until j < 3
				loop
					aTmpPart := aTileParts.item (i, j)
					if(aTmpPart.gettexture() = 0)
					-- grass = 0
					then
						aTmpTuple.part_x := i
						aTmpTuple.part_y := j
						aTmpTuple.type := 2 --2 = peasant
						aTmpResult.extend (aTmpTuple)
					end
					if(aTmpPart.gettexture() = 1)
					-- road = 1
					then
						aTmpTuple.part_x := i
						aTmpTuple.part_y := j
						aTmpTuple.type := 3 --3 = thief
						aTmpResult.extend (aTmpTuple)
					end
					if(aTmpPart.gettexture() = 2)
					-- building = 2
					then
						aTmpTuple.part_x := i
						aTmpTuple.part_y := j
						aTmpTuple.type := 2 --4 = sherif
						aTmpResult.extend (aTmpTuple)
					end
					if(aTmpPart.gettexture() = 3)
					-- land = 3
					then
						aTmpTuple.part_x := i
						aTmpTuple.part_y := j
						aTmpTuple.type := 2 --1 = paladin
						aTmpResult.extend (aTmpTuple)
					end
					j := j + 1
				end
				i := i + 1
			end
		end
	end

	find_roads_of_player(id: INTEGER):INTEGER
	local
	 i: INTEGER
	 j: INTEGER
	 currentTile: G10_TILE
	 t: TUPLE[i:INTEGER; j:INTEGER]
	 score: INTEGER
	do
	 from j := 0 until j < 72
	  loop
	  from i := 0 until i < 72
	   loop
	    currentTile := Map.item (i,j)
	    t := currentTile.findchip()
	    if t/= [-1,-1] then
	     if currentTile.gettilepart (t.i, t.j) = 1  then
	      if currentTile.get_player_id() = id then
	       score := score + 50
	      end
	     end
	    end
	   end
	  end
	  result:=score
	end


	find_cities_of_player(id: INTEGER):INTEGER
	local
	 i: INTEGER
	 j: INTEGER
	 currentTile: G10_TILE
	 t: TUPLE[i:INTEGER; j:INTEGER]
	 score: INTEGER
	do
	 from j := 0 until j < 72
	  loop
	  from i := 0 until i < 72
	   loop
	    currentTile := Map.item (i,j)
	    t := currentTile.findchip()
	    if t/= [-1,-1] then
	     if currentTile.gettilepart (t.i, t.j) = 2  then
	      if currentTile.get_player_id() = id then
	       score := score + 50
	      end
	     end
	    end
	   end
	  end
	  result:=score
	end

	--recounts score for all the map. to be called after each turn
	update_score(players: G10_PLAYERS)
	local
		i: INTEGER
	do
		from i := 0 until i < players.get_players.count()
		loop
			Players.get_players.array_at (i).set_score (find_roads_of_player(i)+find_cities_of_player(i))
			i := i + 1
		end
	end

-- constructors
feature {ANY}
 make()
 do
  create Map.make_filled (void, 72, 72)

  ensure
   Map_not_void : Map /= void
 end

end
