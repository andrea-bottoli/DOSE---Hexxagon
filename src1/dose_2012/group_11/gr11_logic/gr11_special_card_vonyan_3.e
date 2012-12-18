note
	description: "Summary description for {GR11_SPECIAL_CARD_VONYAN_3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_SPECIAL_CARD_VONYAN_3
	--vonyan 3 : a squadron can teleport
	--problemi come ci passa il messaggio
	--devo verificare collisioni

inherit
	GR11_SPECIAL_CARD

create
	make


feature {NONE}--inizializer
		--create action for this specific card
		make
			do
				action_special_card:=create {GR11_ACTION_VONYAN_2}
				name_id:="VONYAN_2"
				always:=TRUE
				end_of_turn:=FALSE
			end
end
