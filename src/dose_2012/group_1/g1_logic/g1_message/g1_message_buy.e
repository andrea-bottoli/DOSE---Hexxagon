note
	description: "Class that represents a message of buy for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_BUY

inherit

	G1_MESSAGE

create
	make_buy

feature -- Initialization

	make_buy (a_player_id: INTEGER; a_buy: BOOLEAN)
		require
			valid_id_player: a_player_id > 0
		do
			player_id := a_player_id
			buy := a_buy
		end

feature --Measurent

	player_id: INTEGER
			-- Id of the player who buy a deed.

	buy: BOOLEAN
			-- If you "buy" is true, the player buys the property in that position.
			-- Else is auction for property

end
