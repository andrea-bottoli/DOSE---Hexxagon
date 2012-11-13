note
	description: "Summary description for {XX_MOVEMESSAGES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	XX_MOVEMESSAGES

	create make_message

feature {NONE}

	piece:INTEGER --which piece is going to be moved
	to_position:INTEGER --where that piece is going to be moved
	case:INTEGER --1 if only piece is sent, 2 if only move is sent, 3 if both sent

feature {ANY}

	make_message()
	do

	end

feature {ANY}

	make_possible_moves(which:INTEGER; where_to:INTEGER)	--Constructor of object Player
	do

	end

	read_message()--reads message
	do

	end

end
