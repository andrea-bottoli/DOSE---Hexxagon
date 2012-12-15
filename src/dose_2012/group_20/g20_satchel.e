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
		make_random
		local
			i: INTEGER
			randTile: G20_TILE
		do
			create satchel.make(1,6)
			from i:=1
			until i>6
			loop
				create randTile.make_random
				satchel.put(randTile, i)
				i := i + 1
			end
		end

		TakeTile(position: INTEGER): G20_TILE
			require
				(1<=position) and (position<=6)
			do
				Result := satchel.item (position)
			end

		DeleteTile(position: INTEGER)
			require
				(1<=position) and (position<=6)
			local
				newTile: G20_TILE
			do
				create newTile.make_random
				satchel.put(newTile,position)
			end

end
