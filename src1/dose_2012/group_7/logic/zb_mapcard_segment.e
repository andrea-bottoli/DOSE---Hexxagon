note
	description: "Summary description for {ZB_MAPCARD_SEGMENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ZB_MAPCARD_SEGMENT

	inherit
		ZB_NODE
			redefine
				printID
				end
		create
			makePos

	feature

		position:ZB_POSITION
		zombie:BOOLEAN
		walkable:BOOLEAN
		building:BOOLEAN
		type:INTEGER
		token:CHARACTER --h or b

		printID

			do
				print(position.x.out+","+position.y.out+"%N")

			end

		makePos(position1:ZB_POSITION)

			do
				create arcList.make
				position:=position1
				token:='n'
			end

		pushZombie
			do
				zombie:=true
			end

		popZombie
			do
				zombie:=false
			end

		pushToken(t:CHARACTER)--t='b' or t='h'
			require
				t='b' or t='h'
			do
				token:=t
				ensure
					token=t
			end

		popToken
			require
				token/='n'

			do
			
				token:='n'
			ensure
				token='n'
			end

		setWalkable
		do
			walkable:=true
		end


end
