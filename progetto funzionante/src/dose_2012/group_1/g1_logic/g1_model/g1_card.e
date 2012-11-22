note
	description: "Class representing the cards in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_CARD

create
	make

feature -- Attributes

	id: INTEGER

	message: STRING

	tipe : INTEGER
		-- comunity_chest = 0
		-- chance = 1

feature -- Initialization

	make
			-- Initialize the Card whit default values
		do
		end

	make_card (id_card: INTEGER; message_card: STRING; tipe_card: INTEGER)
			-- Initialize card whit parameters
		require
			valid_id: id_card > 0
			valid_type_card: tipe_card = 0 or tipe_card = 1
			valid_msg_card : message_card /= Void
		do
		ensure
			valid_id_card: id = id_card
			valid_msg: message_card = message
			valid_tipe : tipe_card = tipe
		end

feature -- Basic Operations

	set_id_card (id_card : INTEGER)
		do
		ensure
			valid_set_id : id = id_card
		end

	set_msg_card (msg :STRING)
		do
		ensure
			valid_set_msg : message = msg
		end

	set_tipe_card (tipe_card : INTEGER)
		do
		ensure
			valid_set_tipe_card : tipe = tipe_card
		end

invariant
	valid_id : tipe = 0 implies (id > 0 and id < 17)
	valid_id : tipe = 1 implies (id > 16 and id <33)
	valid_message : message /= Void
	valid_tipe : tipe = 0 or tipe =1

end
