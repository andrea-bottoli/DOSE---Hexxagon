note
	description: "Represents/Simulates the overall control of the game."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_HEXXAGON  -- simulates the game and it controls everything about the game

create make_hexxagon

feature {NONE}

	board: XX_BOARD  -- board of the game
	players: LINKED_LIST[XX_PLAYER] -- linked list of the players of the game
	players_id: LINKED_LIST[INTEGER] -- uniques ids of each player
	now_playing: INTEGER -- who's turn is now
	chat_enabled: BOOLEAN  --true if chat enabled
	timer: DOUBLE  -- timer about a move reaction
	has_winner: BOOLEAN  -- true if there is a winner
	dice: XX_RANDOM  -- dice rolling at the beginning of the game
	single_player: BOOLEAN  -- true if it is in single player mode
	multi_player: BOOLEAN  -- true if it is in single player mode
	server_mode: BOOLEAN  -- true if it is in server mode
	client_mode: BOOLEAN  -- true if it is in client  mode
	end_game: BOOLEAN  -- true if the game ended


feature {ANY}

	make_hexxagon()  -- Cunstructor of object hexxagon
	do

	end


feature {XX_LAUNCHER}

	new_game()
	do

	end

feature {NONE}

	initialize_board()
	do

	end

	initialize_players()
	do

	end

	initialize_sigle_player_mode()
	do

	end

	initialize_multi_player_mode()
	do

	end

	initialize_server_mode()
	do

	end

	initialize_client_mode()
	do

	end


	establish_net_connection()
	do

	end



feature {ANY}

	set_now_playing(value: INTEGER)
	do

	end

	set_chat_enabled(value: BOOLEAN)
	do

	end

	set_has_winner(value: BOOLEAN)
	do

	end

	get_now_playing(): INTEGER
	do

	end

	get_chat_enabled(): BOOLEAN
	do

	end

	get_has_winner(): BOOLEAN
	do

	end

	get_player_dice(id: INTEGER) : INTEGER
	do

	end


	send_player_move(move: INTEGER) : BOOLEAN
	do

	end

	cell_acceptable_moves() : ARRAY[INTEGER]
	do

	end

	get_cell_info(num: INTEGER) : XX_CELL
	do

	end

	get_players_id(): LINKED_LIST [INTEGER]
	do

	end

	get_player_info(id: INTEGER) : XX_PLAYER
	do

	end

	get_board(): XX_BOARD
	do

	end

	serialize_message(msg: STRING)
	do

	end


	deserialize_message()
	do

	end

end
