note
	description: "Summary description for {GR11_SPECIAL_CARD_EARTHERS_3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_SPECIAL_CARD_EARTHERS_3
	--earther 3 : self-destruction
	--problemi : se la faccio esplodere dalla action devo contare navi distrutte e punteggio
inherit
	GR11_SPECIAL_CARD

create
	make

feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_EARTHERS_3}
				name_id:="EARTHERS_3"
				always:=TRUE
				end_of_turn:=FALSE
			end

end
