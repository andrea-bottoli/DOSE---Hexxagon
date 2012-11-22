note
	description: "Class that represents a message of auction for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_AUCTION
inherit

	G1_MESSAGE

create
	make, make_auction

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
		end

	make_auction (a_price_auction: integer)
		require
			valid_price: a_price_auction > 0
		do
		end

feature -- Measurent

	price_auction: INTEGER
			-- Price imposed by the player to purchase the property


end
