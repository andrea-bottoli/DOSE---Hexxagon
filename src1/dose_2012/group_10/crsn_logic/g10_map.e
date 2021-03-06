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

-- constructors
feature {ANY}
 make()
 do
  create Map.make_filled (void, 72, 72)

  ensure
   Map_not_void : Map /= void
 end

end
