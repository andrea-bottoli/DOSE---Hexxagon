note
	description: "Class that represents a message of trade for net."
	author: "Manuel Varela  -> Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_TRADE

inherit

	G1_MESSAGE

create
	make_trade

feature -- Initialization

	make_trade (a_p1_id: INTEGER; a_p1_deed_id: INTEGER; a_p1_card_id: INTEGER; a_p2_id: INTEGER; a_p2_deed_id: INTEGER; a_p2_card_id: INTEGER; a_trade: BOOLEAN)
			-- Initialize the message with the ID of the player, price offered for trade and de ID of the DEED offered.
		require
			valid_id_players: a_p1_id > 0 and a_p2_id > 0
			valid_id_deeds: a_p1_deed_id > 0 and a_p2_deed_id > 0
			valid_id_cards: a_p1_card_id > 0 and a_p2_card_id > 0
		do
			id_player1 := a_p1_id
			id_player2 := a_p2_id
			p1_deed_id := a_p1_deed_id
			p2_deed_id := a_p2_deed_id
			p1_card_id := a_p1_card_id
			p2_card_id := a_p2_card_id
			trade := a_trade
		end

feature -- Measurents

	id_player1: INTEGER
			-- Represents the player is offered an trade

	id_player2: INTEGER
			-- Represents the player is offered an trade

	p1_deed_id: INTEGER
			-- Deed offered by the player1

	p2_deed_id: INTEGER
			-- Deed offered by the player2

	p1_card_id: INTEGER
			-- Card offered by the player1

	p2_card_id: INTEGER
			-- Card offered by the player2

	trade: BOOLEAN
			-- True is trade is acepted, else false.

end
