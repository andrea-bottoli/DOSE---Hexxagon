note
 description: "Summary description for {TILE_PART}."
 author: "Anastasia, Angel Kyriako"
 date: "15/12/2012"
 revision: "3.0"

class
 G10_TILE

create
 make

-- attributes
feature{ANY}

 --IsTowerInCenter: BOOLEAN

 PlayerID: INTEGER
 Rotation: INTEGER --  0-0, 1-90, 2-180, 3-270
 degrees_rotated : STRING
 tile_id : STRING
 Parts: ARRAY2[G10_TILE_PART] -- 9 numbers to describe groung of tile in 4 corners, 4 edges and center


feature{ANY}
 FindPlacesForFollower():ARRAYED_LIST[G10_TILE_PART]
 do
 end



--Description of this tile part texture(grass = 0, road = 1, building = 2)
 setType(type: INTEGER)
 do
-- 	inspect type						ERROR try to run it.
-- 	 when 1-- cherch
-- 	 	then
--			Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(0)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(0)
-- 	 		Parts.item (1,1).make(2)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(0)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 2--cherch+road
-- 	 	then
--			Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(0)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(0)
-- 	 		Parts.item (1,1).make(2)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 3--fulltown+shield
-- 	 	then
-- 	 		Parts.item (0,0).make(2)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(2)
-- 	 		Parts.item (1,0).make(2)
-- 	 		Parts.item (1,1).make(2)
-- 	 		Parts.item (1,2).make(2)
-- 	 		Parts.item (2,0).make(2)
-- 	 		Parts.item (2,1).make(2)
-- 	 		Parts.item (2,2).make(2)
-- 	 when 4--town+grass
-- 	 	then
--			Parts.item (0,0).make(2)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(2)
-- 	 		Parts.item (1,0).make(2)
-- 	 		Parts.item (1,1).make(2)
-- 	 		Parts.item (1,2).make(2)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(0)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 5--town+road
-- 	 	then
-- 	 		Parts.item (0,0).make(2)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(2)
-- 	 		Parts.item (1,0).make(2)
-- 	 		Parts.item (1,1).make(2)
-- 	 		Parts.item (1,2).make(2)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 6--town+diagonalgrass
-- 	 	then
-- 	 		Parts.item (0,0).make(2)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(2)
-- 	 		Parts.item (1,1).make(0)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(0)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 7--town+diagonalroad
-- 	 	then
-- 	 		Parts.item (0,0).make(2)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(2)
-- 	 		Parts.item (1,1).make(1)
-- 	 		Parts.item (1,2).make(1)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 8--town+doublegrass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(0)
-- 	 		Parts.item (1,1).make(0)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(2)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 9--town+town+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(2)
-- 	 		Parts.item (1,1).make(0)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(0)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 10--doubletown+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(0)
-- 	 		Parts.item (1,1).make(0)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(2)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 11--grass+town
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(0)
-- 	 		Parts.item (1,1).make(0)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(0)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 12--leftdiagonalroad+town+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(1)
-- 	 		Parts.item (1,1).make(1)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 13--rightdiagonalroad+town+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(0)
-- 	 		Parts.item (1,1).make(1)
-- 	 		Parts.item (1,2).make(1)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 14--crossroad+town+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(1)
-- 	 		Parts.item (1,1).make(1)
-- 	 		Parts.item (1,2).make(1)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 15--horizontroad+town+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(2)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(1)
-- 	 		Parts.item (1,1).make(1)
-- 	 		Parts.item (1,2).make(1)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(0)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 16--vertroad+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(1)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(0)
-- 	 		Parts.item (1,1).make(1)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 17--diagonalroad+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(0)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(1)
-- 	 		Parts.item (1,1).make(1)
-- 	 		Parts.item (1,2).make(0)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 18--triplecrossroad+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(0)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(1)
-- 	 		Parts.item (1,1).make(1)
-- 	 		Parts.item (1,2).make(1)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
-- 	 when 19--qadrcrossroad+grass
-- 	 	then
-- 	 		Parts.item (0,0).make(0)
-- 	 		Parts.item (0,1).make(1)
-- 	 		Parts.item (0,2).make(0)
-- 	 		Parts.item (1,0).make(1)
-- 	 		Parts.item (1,1).make(1)
-- 	 		Parts.item (1,2).make(1)
-- 	 		Parts.item (2,0).make(0)
-- 	 		Parts.item (2,1).make(1)
-- 	 		Parts.item (2,2).make(0)
--  	else
--  	end
 end
feature
	get_parts():ARRAY2[G10_TILE_PART]
	do
		Result:=Parts
	end
 get_rotation():INTEGER
 do
  Result:=Rotation
 end

 rotateCounterClockwise()
 do
  Rotation:=Rotation-1
 end

 rotateClockwise()
 do
  Rotation:=Rotation+1
 end

 set_rotation(TheRotation:INTEGER)
 do
  Rotation:=TheRotation
 end

 get_player_id():INTEGER
 do
  result:= PlayerID
 end

 set_player_id(aPlayerID:INTEGER)
 do
  PlayerID:=aPlayerID
 end

 getTilePart(i:INTEGER j:INTEGER):G10_TILE_PART
 do
  Result:=Parts.item (i, j)
 end

 findChip():TUPLE[i:INTEGER j:INTEGER]
 local
  t: TUPLE[i:INTEGER; j:INTEGER]
  i:INTEGER
  j:INTEGER
 do
  t:=[-1, -1]
  from i := 0 until i >= 3
  loop
   from j := 0 until j >= 3
   loop
    if(Parts.item(i, j).Chip /= void)
    then
     t:=[i, j]
    end
    j := j + 1
   end
   i := i + 1
  end
  Result:=t
 end

feature

 make()
 local
 	DefaultPart:G10_TILE_PART
 do
	PlayerID:=0
	Rotation:=0
	degrees_rotated := "0"
	tile_id := "1"
	create DefaultPart.make (0)
	create Parts.make_filled (DefaultPart, 3, 3)
 end

end
