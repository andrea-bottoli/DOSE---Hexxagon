note
	description: "Class that represents a message of trade for net."
	author: "Manuel Varela  -> Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_TRADE

create
	make, make_trade

feature -- Initialization

	make
			-- Initialize the message with default values.
		do
			id_player := 0
			price_offered := 0
			id_deed_offered := 0
		end

	make_trade (a_id_player: INTEGER; a_price_offered: INTEGER; a_id_deed_offered: INTEGER)
			-- Initialize the message with the ID of the player, price offered for trade and de ID of the DEED offered.
		require
			valid_id_player: a_id_player > 0 and a_id_player <= 6
			valid_price: a_price_offered > 0 and a_price_offered < 20000
			valid_deed: a_id_deed_offered > 0 and a_id_deed_offered < 29
		do
			id_player := a_id_player
			price_offered := a_price_offered
			id_deed_offered := a_id_deed_offered
		end

feature -- Measurents

	id_player: INTEGER
			-- Represents the player is offered an trade

	price_offered: INTEGER
			-- Price offered by the player

	id_deed_offered: INTEGER
			-- Deed offered by the player

feature -- Basic operations

	set_id_player (a_id_player: INTEGER)
		do
			id_player := a_id_player
		end

	set_price_offered (a_price_offered: INTEGER)
		do
			price_offered := a_price_offered
		end

	set_id_deed_offered (a_id_deed_offered: INTEGER)
		do
			id_deed_offered := a_id_deed_offered
		end

end
