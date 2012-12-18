note
	description: "Summary description for {GR11_SPECIAL_CARD_DRECKACH_2}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "0.2"

class
	GR11_SPECIAL_CARD_DRECKACH_2
	--dreakach 2 : resurrect one squadron
	--problemi cosa chiamo per resuscitare???
	--prendo ship squadrone eliminati

inherit
	GR11_SPECIAL_CARD

create
	make


feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_DRECKACH_2}
				name_id:="DRECKACH_2"
				always:=FALSE
				end_of_turn:=TRUE
			end


end


