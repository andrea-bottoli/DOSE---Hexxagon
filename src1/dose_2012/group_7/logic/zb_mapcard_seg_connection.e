note
	description: "Summary description for {ZB_MAPCARD_SEG_CONNECTION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ZB_MAPCARD_SEG_CONNECTION
	inherit
	ZB_ARC
		redefine
			node1,node2,make,printArc
		end

	create
		make
	feature
		node1,node2:ZB_MAPCARD_SEGMENT

		make(nod1,nod2: ZB_MAPCARD_SEGMENT)
			do
				node1:=nod1
				node2:=nod2
			end

		printArc
			do
				print("("+node1.position.x.out+","+node1.position.y.out+";"+node2.position.x.out+","+node2.position.y.out+")")
			end

end
