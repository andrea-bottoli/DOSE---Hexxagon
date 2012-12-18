note
	description: "Summary description for {GR11_SPECIAL_CARD_DRECKACH_3}."
	author: "Milano4"
	date: "1/12/2012"
	revision: "0.1"

class
	GR11_SPECIAL_CARD_DRECKACH_3
	--dreakach 3 : player have three movement card at each turn

inherit
	GR11_SPECIAL_CARD

create
	make


feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_DRECKACH_3}
				name_id:="DRECKACH_3"
				always:=TRUE
				end_of_turn:=FALSE
			end



end


