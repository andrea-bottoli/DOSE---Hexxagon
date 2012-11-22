note
	description: "The BOARD class Of the Logic Sub Component"
	author: "Milano8"
	date: "13.11.2012"
	revision: "0.0.2"

class
ZB_BOARD

feature

--board: HASH_TABLE[ZB_POSITION,ZB_MAP_CARD->HASHABLE]

 placeable(position:ZB_POSITION;mapCard:ZB_MAP_CARD): BOOLEAN
--returns true if the map card is placeable in the position
	require
		position /=void and mapCard /=void
		do
			--impl
		ensure
			true
		end


placeMapCard(position:ZB_POSITION;mapCard:ZB_MAP_CARD)
--place a map card in the board game
	require
		placeable(position,mapCard)
		do
			--impl
			ensure
				mapCard.placed
		end


moveZombie(position1,position2:ZB_POSITION)
--move a zombie from position1 to position2
	require
		position1/=void and position2 /=void
		and getMapCard(position1).zombiePosition[getMapCard(position1).cardLinearMapping(position1)]
		and not getMapCard(position2).zombiePosition[getMapCard(position2).cardLinearMapping(position2)]
	do
		--impl
		ensure
		not getMapCard(position1).zombiePosition[getMapCard(position1).cardLinearMapping(position1)]
		and getMapCard(position2).zombiePosition[getMapCard(position2).cardLinearMapping(position2)]

	end
getMapCard(position:ZB_POSITION):ZB_MAP_CARD
--returns the map card at the position
	require
		position/=void
		do
			--impl
		ensure
			true
		end

end
