note
	description: "Summary description for {ZB_ARC}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ZB_ARC
	create
		make
	feature

		node1, node2: ZB_NODE

		make(nod1,nod2: ZB_NODE)
			do
				node1:=nod1
				node2:=nod2
			end

		printArc
			do
				print("("+node1.id.out+","+node2.id.out+")")
			end

end
