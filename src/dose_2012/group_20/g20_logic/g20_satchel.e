note
	description: "Summary description for {SATCHEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_SATCHEL

	create
		make_random

	feature{NONE}
		satchel : ARRAY[G20_TILE]

	feature{ANY}
		make_random(rand:RANDOM)
		local
			i: INTEGER
			randTile: G20_TILE
		do
			create satchel.make(1,6)
			from i:=1
			until i>6
			loop
				create randTile.make_random(rand)
				satchel[i]:=deep_clone(randTile)
				i := i + 1
			end
		end

		TakeTile(position: INTEGER): G20_TILE
			require
				(1<=position) and (position<=6)
			do
				Result := satchel.item (position)
			end

		FindTile(tile: G20_TILE): INTEGER
			local
				i: INTEGER
			do
				Result := 0
				from
					i := 1
				until
					(i > 6) and (Result /= 0)
				loop
					if
						(satchel.item(i).GetColor1 = tile.GetColor1)
						and
						(satchel.item(i).GetColor2 = tile.GetColor2)
					then
						Result := i
					end
					i := i + 1
				end
			end

		DeleteTile(position: INTEGER; rand: RANDOM)
			require
				(1<=position) and (position<=6)
			local
				newTile: G20_TILE
			do
				create newTile.make_random(rand)
				satchel[position].deep_copy(newTile)
			end

end
