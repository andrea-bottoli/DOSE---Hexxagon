note
	description: "Represents/Simulates the behaviour of a player of game Hexxagon."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_PLAYER

create make_player

feature {NONE}

	player_id: STRING	-- Unique player id
	colour_piece: STRING -- Constant colour piece
	is_enabled: BOOLEAN -- True if player's turn
	total_pieces: INTEGER  --Total pieces of stone at the board
	priority: INTEGER 	-- Priority to play at game
	ip_net: STRING	-- The IP of the player
	port_number: INTEGER -- The port number of internt connection of the player

feature {ANY}

	make_player(id: STRING; colour: STRING)	--Constructor of object Player
	require
		valid_id: ((id.is_equal("") = False) and (id /= Void))
		valid_colour: ((colour /= Void) and (colour.is_equal("") = False)) and ((colour.is_equal("Rubies") = True) xor (colour.is_equal("Pearls") = True))
	do

	ensure
		ensure_id: (player_id.is_equal(id) = True)
		ensure_colour: (colour_piece.is_equal(colour) = True)
		ensure_isenabled: (is_enabled = False)
		ensure_totalpieces: (total_pieces = 3)
	end

feature {NONE}

	set_player_id(id: STRING) 	-- Set the unique player id
	require
		valid_id: ( id /= Void ) and (id.is_equal("") = False)
 	do

	ensure
		valid_playerid: (player_id.is_equal(id) = True)
	end

	set_colour_piece(piece: STRING) -- Set the constant colour piece of the player
	require
		valid_piece: ((piece.is_equal("Rubies") = True) xor (piece.is_equal("Pearls") = True))
	do

	ensure
		valid_colour_piece: (colour_piece.is_equal(piece) = True) and ((colour_piece.is_equal("Rubies") = True) xor (colour_piece.is_equal("Pearls") = True))
	end

	set_priority(prior: INTEGER)	-- Set the priority to play at game turns
	require
		valid_prior: (prior >=1 and prior <=2)
	do

	ensure
		valid_priority: priority = prior
	end

	set_ip_net(ip: STRING)	-- Set the IP address of the player
	require
		valid_ip: (ip /= Void) and (ip.is_equal("") = False)
	do

	ensure
		valid_ip_net: (ip_net.is_equal(ip) = True)
	end


feature {ANY}

	set_port_number(port: INTEGER)	-- Set the port number of NET connection of the player
	require
		valid_port: (port >0) and (port <= 65535)
	do

	ensure
		valid_portnumber: port_number = port
	end


	set_is_enabled(en: BOOLEAN)	-- Set True if player's turn
	require
		valid_en: (en = True xor en = False)
	do

	ensure
		valid_isenabled: is_enabled = en
	end

	set_total_pieces(total: INTEGER) --Set the total pieces of the player
	require
		valid_total: total>=0 and total<=58
	do

	ensure
		valid_totalpieces: total_pieces = total
	end

	get_ip_net(): STRING	-- Get the ip of the player
	do

	ensure
		valid_ipnet: Result /= Void and ip_net.is_equal(Result) = True
	end

	get_port_number(): INTEGER	-- Get the port number of NET connection of the player
	do

	ensure
		valid_port: Result = port_number
	end


	get_player_id(): STRING -- Get the unique player id
	do

	ensure
		valid_playerid: Result.is_equal( player_id) = True
	end

	get_colour_piece(): STRING  -- Get the constant colour of player
	do

	ensure
		valid_colour_piece: Result.is_equal(colour_piece) = True
	end

	get_is_enabled(): BOOLEAN	-- Get the information if player's turn
	do

	ensure
		valid_isenabled: Result = is_enabled
	end

	get_total_pieces(): INTEGER	-- Get the number of total pieces of stones
	do

	ensure
		valid_total_pieces: Result = total_pieces
	end

	get_priority() : INTEGER	-- Get the priority of player at game turns
	do

	ensure
		valid_priority: Result = priority and (Result >=1 and Result <=2)
	end



	invariant  -- class invariants
		check_colour_piece: (colour_piece /= Void) implies ((colour_piece.is_equal ("Pearls") = True ) xor (colour_piece.is_equal ("Rubies") = True) )
		check_total_pieces: ( total_pieces>=0 and total_pieces<=58 )
		check_priority: (priority /= 0) implies ( priority = 1 xor priority = 2)

end
