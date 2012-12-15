note
	description: "The map card class Of the Logic Sub Component"
	author: "Milano8"
	date: "13.11.2012"
	revision: "0.0.2"

deferred class
	ZB_MAP_CARD
		inherit
			ZB_GRAPH
			redefine
				nodes,arcs
				end


	feature
		nodes:LINKED_LIST[ZB_MAPCARD_SEGMENT]
		arcs:LINKED_LIST[ZB_MAPCARD_SEG_CONNECTION]
		type:INTEGER
		zombieToPlace:INTEGER -- Number of zombie to be placed on the card

		setZombieToPlace(int:INTEGER)
		do
			zombieToPlace:=int
		end

		rotate(clockwise:BOOLEAN)
			local
				tmpM11,tmp01,tmp11,tmpM10,tmp10,tmpM1M1,tmp0M1,tmp1M1:ZB_MAPCARD_SEGMENT
			do
				if clockwise then
					tmpM11:=fetchMapCardSegment(-1,1)
					tmp01:=fetchMapCardSegment(0,1)
					tmp11:=fetchMapCardSegment(1,1)
					tmpM10:=fetchMapCardSegment(-1,0)
					tmp10:=fetchMapCardSegment(1,0)
					tmpM1M1:=fetchMapCardSegment(-1,-1)
					tmp0M1:=fetchMapCardSegment(0,-1)
					tmp1M1:=fetchMapCardSegment(1,-1)

					tmpM11.position.setx (-1)
					tmpM11.position.sety (-1)
					tmp01.position.setx (-1)
					tmp01.position.sety (0)
					tmp11.position.setx (-1)
					tmp11.position.sety (1)
					tmpM10.position.setx (0)
					tmpM10.position.sety (-1)
					tmp10.position.setx (0)
					tmp10.position.sety (1)
					tmpM1M1.position.setx (1)
					tmpM1M1.position.sety (-1)
					tmp0M1.position.setx (1)
					tmp0M1.position.sety (0)
					tmp1M1.position.setx (1)
					tmp1M1.position.sety (1)

				else
					rotate(true)
					rotate(true)
					rotate(true)

				end
			end


		createMapCardSegment(x,y:INTEGER)
			local
				tmp:ZB_MAPCARD_SEGMENT
				tmpPos:ZB_POSITION
			do
				create tmpPos.make (x, y)
				create tmp.makepos (tmpPos)
				nodes.extend (tmp)
				print("%NCreo segmento:"+x.out+","+y.out+"%N")
			end

		fetchMapCardSegment(x,y:INTEGER):ZB_MAPCARD_SEGMENT
		local

			position:ZB_POSITION
			do
				create position.make (x, y)
			Result:=Void
				from
					nodes.start
				until
					nodes.exhausted
				loop

					if nodes.item.position.is_equal (position) then
						Result:=nodes.item
						end
					nodes.forth
				end
		end

		connectSegments(x1,y1,x2,y2:INTEGER)
			local
				tmpArc12:ZB_MAPCARD_SEG_CONNECTION
				tmpArc21:ZB_MAPCARD_SEG_CONNECTION
				position1,position2:ZB_POSITION
			do
				create position1.make (x1, y1)
				create position2.make (x2, y2)
				create tmpArc12.make (fetchMapCardSegment(position1.x,position1.y), fetchMapCardSegment(position2.x,position2.y))
				create tmpArc21.make (fetchMapCardSegment(position2.x,position2.y), fetchMapCardSegment(position1.x,position1.y))

				arcs.extend (tmpArc12)
				arcs.extend (tmpArc21)
				fetchMapCardSegment(position1.x,position1.y).arclist.extend (tmpArc12)
				fetchMapCardSegment(position2.x,position2.y).arclist.extend (tmpArc21)

			end





end
