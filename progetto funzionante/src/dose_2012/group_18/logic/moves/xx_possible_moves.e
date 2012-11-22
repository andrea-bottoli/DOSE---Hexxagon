note
	description: "Represents/Simulates the possible moves of a player at runtime of the game."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_POSSIBLE_MOVES

create make_possible_moves

feature {NONE}

	piece:INTEGER 	--which piece is going to be moved
	to_position:INTEGER 	--where that piece is going to be moved
	type:INTEGER 	--1 if only piece is sent, 2 if only move is sent, 3 if both sent

feature {ANY}

	make_possible_moves()
	do

	end

feature {ANY}

	get_piece():INTEGER
	do

	ensure
		valid_possible_moves: (Result = piece)
	end

	get_position():INTEGER
	do

	ensure
		valid_possible_moves: (Result = to_position)
	end

	get_type():INTEGER
	do

	ensure
		valid_possible_moves: (Result = type)
	end

	set_move(which:INTEGER; where_to:INTEGER; case:INTEGER)
	require
		valid_indexes: (which>=0 and which<=57) and (where_to>=0 and where_to<=57) and (case>0 and case <=2)
	do

	ensure then piece = which and to_position = where_to and type = case
	end

end


