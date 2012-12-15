note
	description: "The features presented in this class will be exposes to the GUI component. The GUI component can call these feature to inform the NET client about player's actions."
	author: "Gabriele Fanchini"
	date: "13.11.2012"
	revision: "1.2"

deferred class
	G5_INET_TO_GUI

feature {ANY} --GUI

--	create_game(my_name: STRING; supply_cards_set: ARRAY[STRING])
		-- this method is invoked when a player wants to create a new match.
		-- my_name is the name that the player will use in the match, and supply_cards_set contains the list of cards' ID
		-- that will be used in the match
--	require
--		valid_arg: my_name /= void
--		valid_arg: supply_cards_set /= void
--		valid_sice: supply_cards_set.count = 10
--		valid_supply_cards:
--			supply_cards_set.for_all (agent (card: STRING): BOOLEAN do Result := (card /= void) end)
--	do
--	ensure
		-- the software identifies the local machine, which invoked this feature, as a host and
		-- it starts waiting for other players.
		-- The host will be informed when a new player enters the match so that it can decide
		-- to start the match at any time (if there are at least two players).
--	end

--	start_game_command()
--		-- this feature is invoked when the host player decides to start the game or, on the other hand,
--		-- when the number of player for the game reaches four
--		require
--			valid_arg:	number_of_players >= 2 and
--					  	number_of_players <= 4

--		do
--		ensure
--			-- this feature inform the logic that the match can start.
--			-- logic will send another message that informs all players that the game has started and
--			-- which are the names of the involved players.
--		end

	connect(my_name: STRING; server_ip: STRING; server_port: INTEGER)
		-- this feature asks to the NET component to establish a connection with the server indicated using server_ip and
		-- server_port and to inform it that the player would like to join a match using the name "my_name".
		require
			-- a valid server_ip
			valid_port: server_port > 1024 and server_port < 5000
			valid_arg: my_name /= void and not(my_name.is_equal (""))
			-- my_name isn't already in use. In this case the host informs the player that his name is invalid and close the
			-- connection, the player can try to re-connect using another name.
		deferred
		ensure
			-- If all the requirements are satisfied and the return value is true (and so the name is not in use), it is ensured that
			-- the connection with the server is correctly established and the player has joined the game.
			-- Otherwise the connection is not established.
		end

	rematch(my_name: STRING)
		-- this feature is invoked to inform the host that the player with name "my_name" would like to play
		-- another match with the same players and the same cards set.
		require
			valid_arg: my_name /= void
			valid_arg: my_name.is_equal (player_name)
		deferred
		ensure
		end

	play_card(card: STRING)
	-- this feature is invoked by the GUI to inform which card the player wants to play
		require
			valid_card_id:
				card /= void and (card.starts_with ("K") xor card.starts_with ("T") xor card.starts_with ("V")
				xor card.starts_with ("M") xor card.starts_with ("C"))
		deferred
		ensure
			-- this message will be sent to the host
		end

	selected_from_supply(cards: ARRAY[STRING])
	-- this feature is invoked by the GUI to inform the NET about cards chosen from a pop-up
		require
			-- a feature pop_up_selection has been invoked before and the attribute "cards_are_from" is equal to SUPPLY.
			-- All cards included in the feature pop_up_selection will be sent if chosen by the user.
			consistent_cards_array:
				cards.for_all (agent (card: STRING): BOOLEAN do Result :=
				(card /= void and (card.starts_with ("K") xor card.starts_with ("T") xor card.starts_with ("V")
				xor card.starts_with ("M") xor card.starts_with ("C"))) end)
		deferred
		ensure
			-- this message will be sent to the host
		end

	select_from_hand(cards: ARRAY[STRING])
	-- this feature is invoked by the GUI to inform the NET about cards chosen from a pop-up
		require
			-- a feature pop_up_selection has been invoked before and the attribute "cards_are_from" is equal to HAND.
			-- All cards are included in cards sent before in the feature pop_up_selection.
			consistent_cards_array:
				cards.for_all (agent (card: STRING): BOOLEAN do Result :=
				(card /= void and (card.starts_with ("K") xor card.starts_with ("T") xor card.starts_with ("V")
				xor card.starts_with ("M") xor card.starts_with ("C"))) end)
		deferred
		ensure
			-- this message will be sent to the host
		end

	next_phase()
	-- this feature is invoked when the player expresses his/her intention to move to the next phase of the turn
		require
			true
		deferred
		ensure
			-- the state of the game will be updated to the next turn phase
		end

	pass_turn()
	-- this feature is invoked when the player expresses his/her intention to pass the turn
		require
			true
		deferred
		ensure
			-- the state of the game will be updated and the next player can start his/her turn
		end

	leave_game()
	-- this feature is invoked when the player expresses his/her intention to leave the match
		require
			-- there is a match (running or ended but that can be re-matched)
		deferred
		ensure
			-- the server will be notified and the match can continue if the client was not the host.
			-- Otherwise the match will be ended.
		end

	trashed_by_thief(thief_map: HASH_TABLE[ARRAY[STRING],STRING])
		require

		deferred
		ensure
		end

	gained_by_thief(thief_map: HASH_TABLE[ARRAY[STRING],STRING])
		require

		deferred
		ensure
		end

	keep_or_not_card_response(cards: ARRAY[STRING])
	 	require
	 		valid_arg: cards /= void
	 	deferred
	 	ensure
	 	end


--	look_in_trash_pile()
		-- this feature is invoked when the player asks to see which cards are in the trash pile
--		require
--			true
--		do
--		ensure
			-- the net asks to the host the list of cards in the trash pile.
			-- the server will provide the list using other messages
--		end


feature -- Status Report

	number_of_players: INTEGER
		-- indicates the number of players that are playing the current game.

	player_name: STRING
		-- this is the valid name that this client used to connect to the server.

end
