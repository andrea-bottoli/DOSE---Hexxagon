note
	description: "Summary description for {GR11_SPECIAL_CARD_DRECKACH_1}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "0.2"

class
	GR11_SPECIAL_CARD_DRECKACH_1
	--dreckach 1 : shield for capital ship
	--problemi scudi ???
	--problemi attivata ultimi 3 turni

inherit
	GR11_SPECIAL_CARD


create
	make



feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_DREAKACH_1}
				name_id:="DREAKACH_1"
				always:=TRUE
				end_of_turn:=FALSE
			end


end


