note
	description: "A Weapon card in the hand of a player"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_WEAPON_CARD

inherit
	CU_CARD

create
	make

feature
	weapon: INTEGER --refers to the INTEGER constant defined in CU_ENUM_WEAPONS

feature --Constructor
	make(a_id: INTEGER)
		require
			valid_id: a_id>=0 and a_id<=5
		do
			weapon:=a_id
		end
end
