note
	description: "Represents/Simulates the behaviour of a player of game Hexxagon."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_PLAYER

create make_player

feature {NONE}

	player_id: INTEGER	-- Unique player id
	colour_piece: STRING -- Constant colour piece
	is_enabled: BOOLEAN -- True if player's turn
	total_pieces: INTEGER  --Total pieces of stone at the board

feature {ANY}

	make_player(id: INTEGER; colour: STRING)	--Constructor of object Player
	require id>=0 and (colour_piece.is_equal("Rubies") = True or colour_piece.is_equal("Pearls") = True)
	do

	ensure player_id = id and colour_piece.is_equal(colour) = True
	end

feature {NONE}

	set_player_id(id: INTEGER) 	-- Set the unique player id
	require id>=0
	do

	ensure player_id = id
	end

	set_colour_piece(piece: STRING) -- Set the constant colour piece of the player
	require (colour_piece.is_equal("Rubies") = True or colour_piece.is_equal("Pearls") = True)
	do

	ensure colour_piece.is_equal(piece) = True
	end

feature {ANY}

	set_is_enabled(en: BOOLEAN)	-- Set True if player's turn
	require en = True or en = False
	do

	ensure is_enabled = en
	end

	set_total_pieces(inc: INTEGER) --Set the total pieces of the player by incrementing/decrementing the pieces
	require inc>=0 and inc<=58
	do

	ensure total_pieces = inc
	end

	get_player_id(): INTEGER  -- Get the unique player id
	do

	ensure Result = player_id
	end

	get_colour_piece(): STRING  -- Get the constant colour of player
	do

	ensure Result.is_equal(colour_piece) = True
	end

	get_is_enabled(): BOOLEAN	-- Get the information if player's turn
	do

	ensure Result = is_enabled
	end

	get_total_pieces(): INTEGER	-- Get the number of total pieces of stones
	do

	ensure Result = total_pieces
	end

end
