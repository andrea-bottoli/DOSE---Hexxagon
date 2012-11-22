note
	description: "The map card class Of the Logic Sub Component"
	author: "Milano8"
	date: "13.11.2012"
	revision: "0.0.2"

class
	ZB_MAP_CARD

feature	-- Implementation
placed: BOOLEAN

idMapCard: INTEGER

zombiePosition: ARRAY[BOOLEAN]

walkable:ARRAY[BOOLEAN]

buildingPosition:ARRAY[BOOLEAN]

tokenPosition: ARRAY[CHARACTER]

rotate()
--rotate the map card
	require
		not placed
		do
			--impl
			ensure
				true
		end

cardLinearMapping(position:ZB_POSITION): INTEGER
--returns the linear mapped position
	require
		position/=void
		do
			--impl
			ensure
				result>=0 and result<9
		end

pushZombie(position:ZB_POSITION)
--put a zombie in the position
	require
		not zombiePosition[cardLinearMapping(position)] and walkable[cardLinearMapping(position)]
		do
			--impl
			ensure
				zombiePosition[cardLinearMapping(position)]
		end


popZombie(position:ZB_POSITION)
--delete a zombie in the position
	require
		zombiePosition[cardLinearMapping(position)]
		do
			--impl
			ensure
				not zombiePosition[cardLinearMapping(position)]
		end



end
