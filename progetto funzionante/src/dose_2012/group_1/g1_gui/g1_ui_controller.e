note
	description: "Summary description for {G1_UI_CONTROLLER}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_UI_CONTROLLER

feature {NONE}

	port: INTEGER
	server_ip: STRING
	player_name: STRING
	match_name: STRING
	match_list: HASH_TABLE[STRING,INTEGER]
	players_list: HASH_TABLE[STRING,INTEGER]

feature {ANY} -- Initial operation
	--- The following feature are called to initialize the GUI

	set_player_name (playername:STRING)
		--- This method is called to set the name of the player
		require
			playername /= Void
		do
		ensure
			player_name = playername
		end

	set_match_name (matchname:STRING)
		--- The method sets the name of the joined match
		--- It is called by LOGIC subcomponent to set the selected match
		require
			matchname /= Void
		do
		ensure
			match_name = matchname
		end

	get_player_name() : STRING
		--- This feature is called by LOGIC subcomponent o by each GUI to get the name of the current player
		--- Player's name is useful to associate the idPlayer, saved on LOGIC subcomponent, with a human-readable identificator
		require
		do
		ensure
			Result = player_name
		end

	list_match (matchlist:ARRAY[ARRAY[STRING]])
		--- The function must be called after the client has asked to know the all matches started on the server.
		--- If the matchlist is empty, that means NO match is started
		--- The matchlist must contain at least:
		--- 1) ID of each match
		--- 2) Name of each match
		--- 3) Player already joined on the match
		require
		do
		ensure
			matches_saved: match_list = matchlist
		end


feature {ANY} -- Game operation
		--- These feature has called when the game is started

	set_players_list (playerlist: ARRAY[ARRAY[STRING]])
		--- This method is used to communicate to the current client all the player joined in the match
		--- It is called by LOGIC subcomponent when the game is starting.
		--- The matrix must contain at least for each player:
		--- 1. Player's ID
		--- 2. Player's Name
		--- 3. Player's country
		--- 4. Money
		require
			playerlist /= Void
		do
		ensure
			players_list = playerlist
		end


	update_state (message:G1_MESSAGE)
		--- The feature is called by LOGIC subcomponent every time there is changes of the client owner.
		--- This function is separated by the general message because the massage passed on the parameter must have personal information such as money, property, houses, hotels, etc...
		require
			message /= Void
		do
		ensure
		end

	set_turn(turn: G1_MESSAGE)
		--- This method is used to set the next turn player.
		--- The turn communicated should have the player's ID, to identify how is the next player.
		require
			turn /= Void
		do
		ensure
			players_list = old players_list
		end

	set_message(message: G1_MESSAGE)
		--- This procedure is used to receive information not catched by update_state and update_token.
		--- That information are natural language message or
		require
			message /= Void
		do
		ensure
		end

	update_token(token:G1_MESSAGE)
		--- update_token is used when a turn is finished. It's called by LOGIC to update all information of each player who has been modified in some way in the turn
		--- The message should have at least the player's ID and its money.
		require
			token /= Void
		do
		ensure
		end

	property_info(information:G1_MESSAGE)
		--- The method receives information on a specific property.
		--- This information has asked previously by the client, when the client owner has arrived on this property.
		--- The message will contain information about the owner and the possibility of buy house or home
		require
			information /= Void
		do
		ensure
			players_list = old players_list
		end


end
