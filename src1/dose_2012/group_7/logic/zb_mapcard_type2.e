note
	description: "Summary description for {ZB_MAPCARD_TYPE2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ZB_MAPCARD_TYPE2
	inherit
		ZB_MAP_CARD

	create
		makeCard

	feature
		makeCard
			local
				tmpSeg:ZB_MAPCARD_SEGMENT
		 do
				create nodes.make
				create arcs.make

		 		createMapCardSegment(-1, 1)
		 		createMapCardSegment(0, 1)
		 		createMapCardSegment(1, 1)
				createMapCardSegment(-1, 0)
				createMapCardSegment(0, 0)
				createMapCardSegment(1, 0)
				createMapCardSegment(-1, -1)
				createMapCardSegment(0, -1)
				createMapCardSegment(1, -1)

				tmpSeg:=fetchMapCardSegment(0,1)
				tmpSeg.setWalkable
				tmpSeg:=fetchMapCardSegment(0,0)
				tmpSeg.setWalkable
				tmpSeg:=fetchMapCardSegment(0,-1)
				tmpSeg.setWalkable


				connectSegments(0,1,0,0)
				connectSegments(0,0,0,-1)
				type:=2
				zombieToPlace:=2
		 end
end
