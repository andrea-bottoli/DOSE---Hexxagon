note
	description: "Summary description for {GR11_SPECIAL_CARD_EARTHERS_2}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "0.2"

class
	GR11_SPECIAL_CARD_EARTHERS_2
	--earther 2 : squadrons shoot through asteroid and fire range of 10

inherit
	GR11_SPECIAL_CARD

create
	make

feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_EARTHERS_2}
				name_id:="EARTHERS_2"
				always:=TRUE
				end_of_turn:=FALSE
			end

end

