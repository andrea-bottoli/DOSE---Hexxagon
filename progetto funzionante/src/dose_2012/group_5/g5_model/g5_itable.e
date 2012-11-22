note
	description: "Summary description for {G5_ITABLE}."
	author: "Team: Rio Cuarto 4"
	date: "$10/11/2012$"
	revision: "$0.4$"

deferred class
	G5_ITABLE

inherit

	G5_ABSTRACT_SUBJECT

feature {G5_INET_TO_LOGIC, TEST_SET_G5_TABLE} -- Initialization

	init_game_default (quantity_player: INTEGER)
			-- feature is called to initialize the game with cards default settings,
			-- quantity_player parameter indicates the quantity of the players who will play.
		require
			number_player_invalid: quantity_player < 5 and quantity_player > 1
		deferred
		ensure
				--the game can begin
		end

	init_game_randomize (quantity_player: INTEGER)
			-- feature is called to initialize the game with a randomly chosen card settings,
			-- quantity_player parameter indicates the quantity of the players who will play.
		require
			number_player_invalid: quantity_player < 5 and quantity_player > 1
		deferred
		ensure
				--the game can begin
		end

	init_game_personalized (quantity_player: INTEGER; cards: ARRAY [STRING])
			-- feature is called to initialize the game with a personalized card settings,
			-- quantity_player parameter indicates the quantity of the players who will play.
		require
			number_player_invalid: quantity_player < 5 and quantity_player > 1
		deferred
		ensure
				--the game can begin
		end

feature {G5_INET_TO_LOGIC,TEST_SET_G5_TABLE} -- Connection-Disconnection

	connection (name_player: STRING): BOOLEAN
			-- this feature is used to inform the LOGIC that a player wants to join
			-- in a match (not already started).
		require
			player_name_valid: name_player /= Void;
		deferred
		ensure
		end

	disconnect (name_player: STRING)
			--this feature is used to inform the LOGIC that a player leave the game
		require
			player_name_valid: name_player /= Void;
		deferred
		ensure
		end

feature {G5_INET_TO_LOGIC,TEST_SET_G5_TABLE} -- Finalization

	restart_game (player_name: STRING): BOOLEAN
			-- function that alerts the server that the player id_player want a rematch.
		require
			player_name_invalid: player_name /= Void;
		deferred
		ensure
		end

end
