note
	description: "The BOARD class Of the Logic Sub Component"
	author: "Milano8"
	date: "13.11.2012"
	revision: "0.0.2"

class
	ZB_BOARD

		inherit
			ZB_MAP_CARD

		create
			makeBoard
		feature
			makeBoard
				local
				startCard:ZB_MAPCARD_TYPE4

				do

					create startCard.makecard
					nodes:=startCard.nodes
					arcs:=startCard.arcs


				end


			checkSegmentsCoherence(SegToPlace,SegEdge:ZB_MAPCARD_SEGMENT):BOOLEAN
				local
					cond1,cond2,cond3:BOOLEAN
				do
					if SegEdge = Void then Result:=true
						else
							cond1:=SegEdge.walkable and not(SegEdge.building) and SegToPlace.walkable and not(SegToPlace.building)
							cond2:= not(SegToPlace.walkable)and (not(SegEdge.walkable)or SegEdge.building)
							cond3:=SegToPlace.building and (not (SegEdge.walkable or SegEdge.building))
							if cond1 or cond2 or cond3  then
								Result:=true
								else
									Result:=false
							end

					end
				end

			placable(card:ZB_MAP_CARD;x,y:INTEGER):BOOLEAN
				local
						topSegment:ZB_MAPCARD_SEGMENT
						bottomSegment:ZB_MAPCARD_SEGMENT
						rightSegment:ZB_MAPCARD_SEGMENT
						leftSegment:ZB_MAPCARD_SEGMENT
						coordinateOK,topOK,bottomOK,rightOK,leftOK,notBusyOK:BOOLEAN
				do
					if not( x\\3=0 and y\\3=0) then coordinateOK:=false else coordinateOK:=true end
					if fetchMapCardSegment(x,y) = void then notBusyOK:=true else notBusyOK:=false end

					topSegment:=fetchMapCardSegment(x,y+2)
					bottomSegment:=fetchMapCardSegment(x,y-2)
					rightSegment:=fetchMapCardSegment(x+2,y)
					leftSegment:=fetchMapCardSegment(x-2,y)

					if topSegment = Void and bottomSegment = Void and rightSegment = Void and leftSegment = Void then Result:=false

					else
					topOK:=	checkSegmentsCoherence(card.fetchmapcardsegment (0, 1),topSegment)
					rightOK:= checkSegmentsCoherence(card.fetchmapcardsegment (1, 0),rightSegment)
					leftOK:= 	checkSegmentsCoherence(card.fetchmapcardsegment (-1, 0),leftSegment)
					bottomOK:=		checkSegmentsCoherence(card.fetchmapcardsegment (0, -1),bottomSegment)

					if coordinateOK and topOK and bottomOK and rightOK and leftOK and notBusyOK then
						Result:=true
						else
							Result:=false

					end

					end
				end

			placeCard(card:ZB_MAP_CARD;x,y:INTEGER)
				require
					placable(card,x,y)
				local
						topSegment:ZB_MAPCARD_SEGMENT
						bottomSegment:ZB_MAPCARD_SEGMENT
						rightSegment:ZB_MAPCARD_SEGMENT
						leftSegment:ZB_MAPCARD_SEGMENT
				do
					topSegment:=fetchMapCardSegment(x,y+2)
					bottomSegment:=fetchMapCardSegment(x,y-2)
					rightSegment:=fetchMapCardSegment(x+2,y)
					leftSegment:=fetchMapCardSegment(x-2,y)

					from
						card.nodes.start
					until
						card.nodes.exhausted
					loop
						card.nodes.item.position.setx (card.nodes.item.position.x+x)
						card.nodes.item.position.sety (card.nodes.item.position.y+y)
						nodes.extend (card.nodes.item)
						card.nodes.forth
					end

					from
						card.arcs.start
					until
						card.arcs.exhausted
					loop
						arcs.extend (card.arcs.item)
						card.arcs.forth
					end

					if topSegment /= Void then connectSegments(topSegment.position.x,topSegment.position.y,card.fetchmapcardsegment (0+x, 1+y).position.x,card.fetchmapcardsegment (0+x, 1+y).position.y)

					end

					if rightSegment /= Void then connectSegments(rightSegment.position.x,rightSegment.position.y,card.fetchmapcardsegment (1+x, 0+y).position.x,card.fetchmapcardsegment (1+x, 0+y).position.y)

					end

					if leftSegment /= Void then connectSegments(leftSegment.position.x,leftSegment.position.y,card.fetchmapcardsegment (x-1, 0+y).position.x,card.fetchmapcardsegment (x-1, 0+y).position.y)

					end

					if bottomSegment /= Void then connectSegments(bottomSegment.position.x,bottomSegment.position.y,card.fetchmapcardsegment (0+x, y-1).position.x,card.fetchmapcardsegment (0+x, y-1).position.y)

					end


				end


end
