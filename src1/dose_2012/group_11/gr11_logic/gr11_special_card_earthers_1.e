note
	description: "Summary description for {GR11_SPECIAL_CARD_EARTHERS_1}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "0.3"

class
	GR11_SPECIAL_CARD_EARTHERS_1
	--earther 1 : elite ship

inherit
	GR11_SPECIAL_CARD

create
	make

feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_EARTHERS_1}
				name_id:="EARTHERS_1"
				always:=TRUE
				end_of_turn:=FALSE
			end

end

