note
	description: "Class that represents a message of cash on the net"
	author: "Group 1:  Rio Cuarto 7 - Milano 7: Federico Pereyra"
	date: ""
	revision: "$Revision$"

class
	G1_MESSAGE_CASH

inherit

	G1_MESSAGE

create
	make

feature -- Initialization

	make (a_id_player: INTEGER; a_action: BOOLEAN; a_price: INTEGER)
		require
			valid_player: a_id_player > 0
			valid_price: a_price > 0
		do
			id_player := a_id_player
			action := a_action
			price := a_price
		ensure
			valid_player: id_player = a_id_player
			valid_action: action = a_action
			valid_price: a_price = a_price
		end

feature -- Measurent

	id_player: INTEGER
			-- Id of the player

	action: BOOLEAN
			-- If False means that money is deducted else is added

	price: INTEGER
			-- The price is discounted or added

end
