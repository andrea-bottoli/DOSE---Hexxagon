note
	description: "Summary description for {ZB_GRAPH}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ZB_GRAPH

	create
		make

	feature
		make
			do
				create nodes.make
				create arcs.make
			end

		createNode(id:INTEGER)
			local
				tmpNode:ZB_NODE
			do
				create tmpNode.make (id)
				nodes.extend(tmpNode)
			end

		fetchNode(id:INTEGER):ZB_NODE
			do
				Result:=Void
					from
						nodes.start
					until
						nodes.exhausted
					loop
						if nodes.item.id=id then Result:=nodes.item end
						nodes.forth
					end

			end

		createArc(node1ID,node2ID:INTEGER)
			local
				tmpArc12:ZB_ARC
				tmpArc21:ZB_ARC
			do
				create tmpArc12.make (fetchNode(node1ID), fetchNode(node2ID))
				create tmpArc21.make (fetchNode(node2ID), fetchNode(node1ID))

				arcs.extend (tmpArc12)
				arcs.extend (tmpArc21)
				fetchNode(node1ID).arclist.extend (tmpArc12)
				fetchNode(node2ID).arclist.extend (tmpArc21)

			end

		printGraph
			do
				from
					nodes.start
				until
					nodes.exhausted
				loop
					print("Node ")
					nodes.item.printid
					print("Arcs : ")
					nodes.item.printarcs
					nodes.forth
				end
			end

		printArcs
			do
				from
					arcs.start
				until
					arcs.exhausted
				loop
					arcs.item.printarc
					print(" ")
					arcs.forth
				end
				print("%N")
			end


		searchPathInverse(StartNode,EndNode:ZB_NODE):LINKED_LIST[ZB_NODE]
			local
				stack:LINKED_LIST[ZB_NODE]
				tmp:LINKED_LIST[ZB_NODE]
				tmp2:LINKED_LIST[ZB_ARC]
				tmpArc:ZB_ARC
				currentNode:ZB_NODE
			do
				create stack.make
				create tmp2.make
				stack.extend (StartNode)

				from
					stack.start
				until
					stack.has(EndNode) or stack.exhausted
				loop
					tmp:=stack.item.successorsset
						from
							tmp.start
						until
							tmp.exhausted
						loop
							if not stack.has (tmp.item) then
								stack.extend (tmp.item)
								create tmpArc.make (tmp.item, stack.item)
								tmp2.extend (tmpArc)
							end
							tmp.forth
						end

					stack.forth
				end
				if stack.has (EndNode) then

				create stack.make

				from
					currentNode:=EndNode
				until
					currentNode=StartNode

				loop
					stack.extend (currentNode)
						from
							tmp2.start
						until
							tmp2.item.node1=currentNode
						loop
							tmp2.forth
						end
						currentNode:=tmp2.item.node2
					end
				end
				stack.extend (StartNode)
				Result:=stack
			end

	searchPath(StartNode,EndNode:ZB_NODE):LINKED_LIST[ZB_NODE]
		do
			Result:=searchPathInverse(EndNode,StartNode)
		end

	feature
		nodes:LINKED_LIST[ZB_NODE]
		arcs:LINKED_LIST[ZB_ARC]
end
