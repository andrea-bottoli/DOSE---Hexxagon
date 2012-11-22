note
	description: "A Room card in the hand of a player"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ROOM_CARD

inherit
	CU_CARD

create
	make

feature --Access
	room: INTEGER --refers to the INTEGER defined in CU_ENUM_ROOMS
feature -- Constructor
	make(a_room: INTEGER)
		require
			valid_room: a_room>=0 and a_room<=8
		do
		end
end
