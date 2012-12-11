note
	description: "A Suspect card in the hand of a player"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SUSPECT_CARD

inherit
	CU_CARD

create
	make

feature --Access
	suspect: INTEGER --refers to the INTEGER constant defined in CU_ENUM_SUSPECTS

feature --Constructor
	make(a_id: INTEGER)
		require
			valid_id: a_id>=0 and a_id<=5
		do
			suspect:=a_id
		end
end
