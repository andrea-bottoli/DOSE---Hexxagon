note
	description: "Summary description for {GR11_SPECIAL_CARD_VALKYRIE_3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_SPECIAL_CARD_VALKYRIE_3
	--valkyrie 3 : mega weapon
	--problemi deve sparare la special card e calcolo distruzione e ppunteggio

inherit
	GR11_SPECIAL_CARD

create
	make


feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_VALKYRIE_3}
				name_id:="VALKYRIE_3"
				always:=TRUE
				end_of_turn:=FALSE
			end


end
