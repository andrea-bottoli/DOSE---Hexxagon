note
	description: "Class that represents a message of trade for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_TRADE

create
	make, make_trade

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
		end

	make_trade (a_id_player: INTEGER; a_price_offered: INTEGER; a_id_deed_offered: INTEGER)
		require
			valid_id_player: a_id_player > 0 and a_id_player <= 6
			valid_price: a_price_offered > 0 and a_price_offered < 20000
			valid_deed: a_id_deed_offered > 0 and a_id_deed_offered < 29
		do
		end

feature -- Measurents

	id_player: INTEGER
			-- Represents the player is offered an trade

	price_offered: INTEGER
			-- Price offered by the player

	id_deed_offered: INTEGER
			-- Deed offered by the player

end
