note
	description: "Represents/Simulates the possible moves of a player at runtime of the game."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_POSSIBLE_MOVES

create make_possible_moves

feature {NONE}

	piece:INTEGER			--which piece is going to be moved
	to_position:INTEGER		--where that piece is going to be moved
	type:INTEGER			--1 if gui/net sends, 2 if ai sends
							--if gui/net sends (1 number) put the same in both piece and to_position and type:=1
							--if ai sends (2 numbers)put the piece to move in piece and the move to to_positon and type:=2

feature {ANY}


	make_possible_moves()	--constructor
	do
		piece:=0
		to_position:=0
		type:=0

	ensure
		ensure_piece: (piece = 0)
		ensure_to_position: (to_position = 0)
		ensure_tpe: (type = 0)

	end

feature {ANY}


	get_piece():INTEGER		--returns the piece to move
	do
		Result := piece

	ensure
		valid_possible_moves: (Result = piece)
	end


	get_position():INTEGER	--returns the place to move the piece
	do
		Result := to_position

	ensure
		valid_possible_moves: (Result = to_position)
	end


	get_type():INTEGER		--returns the type (if gui/net send it or ai send it)
	do
		Result:=type

	ensure
		valid_possible_moves: (Result = type)
	end


	set_move(which:INTEGER; where_to:INTEGER; case:INTEGER)	--sets the move to send
	require
		valid_indexes: (which>=0 and which<=57) and (where_to>=0 and where_to<=57) and (case>0 and case <=2)
	do
		piece:=which
		to_position:=where_to
		type:=case
	ensure then piece = which and to_position = where_to and type = case
	end


	set_piece(which:INTEGER)	--sets the piece on the move to send
	require
		valid_indexes: (which>=0 and which<=57)
	do
		piece:=which
	ensure then piece = which
	end


	set_position(where_to:INTEGER)	--sets the position on the move to send
	require
		valid_indexes:	(where_to>=0 and where_to<=57)
	do
		to_position:=where_to
	ensure then to_position = where_to
	end


	set_type(case:INTEGER)	--sets the move to send
	require
		valid_indexes: (case>0 and case <=2)
	do
		type:=case
	ensure then type = case
	end

end


