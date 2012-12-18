note
	description: "Summary description for {ZB_NODE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ZB_NODE

	create
		make

	feature
		make(id1:INTEGER)
		require
			true
			do
				id:=id1
				create arcList.make
		ensure
			true
			end



		addArc(arc:ZB_ARC)
			do
				arcList.extend (arc)
			end

		printID
			require
				true
			do
				print(id.out+"%N")
			ensure
				true
			end

		printArcs
			do
				from
					arcList.start
				until
					arcList.exhausted
				loop
					arcList.item.printarc
					print(" ")
					arcList.forth
				end
				print("%N")
			end

		successorsSet:LINKED_LIST[ZB_NODE]
			local
				stack:LINKED_LIST[ZB_NODE]
			do
				create stack.make
				from
					arclist.start
				until
					arclist.exhausted
				loop
					stack.extend (arclist.item.node2)
					arclist.forth
				end
				Result:=stack
			end

	feature
		id:INTEGER
		arcList:LINKED_LIST[ZB_ARC]



end
