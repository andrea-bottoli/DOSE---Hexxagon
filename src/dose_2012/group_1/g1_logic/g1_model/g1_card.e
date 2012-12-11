note
	description: "Class representing the cards in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7 : Leonardo Marmol"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_CARD

create
	make,make_card

feature -- Attributes

	id: INTEGER

	message: STRING

	type : INTEGER
		-- comunity_chest = 0
		-- chance = 1

feature -- Initialization

	make
			-- Initialize the Card whit default values
		do
			id := 1
			message := ""
			type := 0
		end

	make_card (a_id: INTEGER; a_message: STRING; a_type: INTEGER)
			-- Initialize card whit parameters
		require
			valid_id: a_id >= 0
			valid_type_card: a_type = 0 or a_type = 1
			valid_msg_card : a_message /= Void
		do
			id := a_id
			message := a_message
			type := a_type
		ensure
			valid_id_card: id = a_id
			valid_msg: message = a_message
			valid_type : type = a_type
		end

feature -- Basic Operations

	set_id_card (a_id : INTEGER)
		do
			id := a_id
		ensure
			valid_set_id : id = a_id
		end

	set_msg_card (a_message :STRING)
		do
			message := a_message
		ensure
			valid_set_msg : message = a_message
		end

	set_type_card (a_type : INTEGER)
		do
			type := a_type
		ensure
			valid_set_tipe_card : type = a_type
		end

invariant
	valid_id_comunity : type = 0 implies (id >= 0 and id < 17)
	valid_id_chance : type = 1 implies (id >= 16 and id <32)
	valid_message : message /= Void
	valid_type : type = 0 or type =1

end
