note
	description: "Represents/Simulates the possible moves of a player at runtime of the game."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_POSSIBLE_MOVES

create make_possible_moves

feature {NONE}

	possible_moves: TUPLE	-- tuple with possible moves
	piece:INTEGER 	--which piece is going to be moved
	to_position:INTEGER 	--where that piece is going to be moved
	case:INTEGER 	--1 if only piece is sent, 2 if only move is sent, 3 if both sent

feature {ANY}

	make_possible_moves()
	do

	ensure
		valid_possible_moves: possible_moves /= Void
	end

feature {ANY}

	check_possible_moves(pos_moves: TUPLE)
	require else pos_moves /= Void
	do

	ensure possible_moves /= Void and possible_moves = pos_moves
	end

	receive_board(board: XX_BOARD)
	require
		valid_board: board /= Void
	do

	end

	get_possible_moves(): TUPLE
	do

	ensure
		valid_possible_moves: (Result /= Void) and (Result = possible_moves)
	end

	message_possible_moves(which:INTEGER; where_to:INTEGER)
	require
		valid_indexes: (which>=0 and which<=57) and (where_to>=0 and where_to<=57)
	do

	ensure then piece = which and to_position = where_to
	end

	read_message(msg: STRING)	-- Reads message
	require
		valid_msg: (msg /= Void and msg.is_equal("") = False)
	do

	end

end


