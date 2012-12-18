note
	description: "Summary description for {GR11_SPECIAL_CARD_VALKIRYE_2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_SPECIAL_CARD_VALKYRIE_2
	--valkyrie 2 : capital ship can shoot straight ahead of 9 hexagon

inherit
	GR11_SPECIAL_CARD

create
	make

feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_VALKYRIE_2}
				name_id:="VALKYRIE_2"
				always:=TRUE
				end_of_turn:=FALSE
			end

end
