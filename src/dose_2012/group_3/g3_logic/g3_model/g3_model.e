note
	description: "Summary description for {G3_MODEL}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$6 Nov. 2012$"
	revision: "$0.1$"

class
	G3_MODEL

inherit
	G3_ABSTRACT_SUBJECT

create
	make

feature {NONE}

	make
		do
			make_subject
			create table.make
			create score.make
			create players.make
			game_over := False
		end

feature

	turn : G3_PLAYER_ID
			-- Retrieve a id of the player that has to play.
		do
			Result := table.turn
		ensure
			valid_id: is_valid_id(Result)
		end

	team_info ( team_id : INTEGER ) :  TUPLE [player1, player2: STRING; score_global, score_partial: INTEGER]
			-- Retrieve a copy of the score of the game.
		do
		ensure
			Result /= Void
		end

	get_player (id_ : G3_PLAYER_ID) : G3_PLAYER
			-- Retrieve a player associated to an id.
			-- If id_ doesn't correspond some player of the game, VOID is returned.
		require
			valid_arg: id_ /= Void
			valid_id: is_valid_id (id_)
		do
			Result := Void
			from
				players.start
			until
				players.off
			loop
				if players.item.id.is_equal(id_) then
					Result:= players.item
				end
				players.forth
			end
		end

	top_play : G3_COMBINATION
			-- return last combination that was played
		do
			if not table.stack_of_play.is_empty then
				Result := table.stack_of_play.item
			else
				Result := Void
			end

		end

	do_a_pass
			-- Passes the turn to the following one.
		do
			table.set_turn (following_turn)
		end

	do_a_move(move: G3_COMBINATION)
			-- Modifies the model with a new move.
		require
			valid_arg: move /= Void and move.is_valid
		do
			table.add_move (move)
			remove_cards_to_player(get_player (table.turn), move)
			if move.cards.count = 1 and move.cards.first.is_the_dog then
				table.set_dog (turn)
				played_dog
			else
				table.set_turn (following_turn)
			end
		end

	detoned_bomb( id : G3_PLAYER_ID )
			-- The bomb was detonated. The turn has to change and 'id' is the following one.
		require
			valid_arg: id /= Void and is_valid_id(id)
		do
			table.set_turn (id)
		end

	add_player (player : G3_PLAYER)
			-- Add a player to game.
		require
			valid_player : player /= Void
		do
			if number_of_players<4 then
				players.sequence_put (player) --Add player to end
			end
		ensure
			players.count = old players.count + 1 or players.count = 4

		end


	number_of_players : INTEGER
			-- Return the number of connected players to game.
		do
			Result:= players.count
		end

	set_dog(player_id : G3_PLAYER_ID)
		require
			valid_id: is_valid_id (player_id)
		do
			table.set_dog(player_id)
		end

	set_tichu(player_id : G3_PLAYER_ID)
		require
			valid_id: is_valid_id (player_id)
		do
			table.set_tichu(player_id)
		end

	set_grand_tichu(player_id : G3_PLAYER_ID)
		require
			valid_id: is_valid_id (player_id)
		do
			table.set_grand_tichu(player_id)
		end

	deal_the_cards
			-- Deal the cards to all players
		require
			all_players_conected: players.count=4
		local
			deck_:LINKED_LIST[LINKED_LIST[G3_CARD]]
			first_player: G3_PLAYER
			the_mahjongg: G3_CARD
		do
			create first_player.make
			create the_mahjongg.make ("", "THE MAHJONGG", TRUE, 0)
			create deck_.make
			deck_:=shuffle
			deck_.start
			from
				players.start
			until
				players.off
			loop
				players.item.add_cards (deck_.item)
				if players.item.has_card (the_mahjongg) then
					first_player:=players.item
				end
				players.forth
				deck_.forth
			end
			table.set_turn (first_player.id)
		end

feature{NONE}

	following_turn : G3_PLAYER_ID
		require
			not_hand_over: not table.hand_over
		do
			-- Looks up the position of the current turn.
			from
				players.start
			until
				players.item.id.is_equal (table.turn)
			loop
				players.forth
			end
			-- Moves forward to the following player.
			players.forth
			-- Looks up a player who is playing(with cards in the table).
			from
			until
				players.item.is_playing
			loop
				if players.off then
					-- If the list is at the end, it starts again.
					players.start
				else
					-- Else, moves forward to the following player.
					players.forth
				end
			end
			Result := players.item.id
		ensure
			valid_turn: is_valid_id(Result)
		end

	remove_cards_to_player (player : G3_PLAYER ; combination : G3_COMBINATION)
			-- Removes the combination of cards to the player's hand.
		require
			player_has_the_cards : contains_cards(player, combination)
		local
			card_list : LINKED_LIST[G3_CARD]
		do
			card_list := combination.cards
			player.delete_cards (card_list)
		end

	contains_cards (player : G3_PLAYER ; combination : G3_COMBINATION) : BOOLEAN
			-- Verifies if the player has the given combination.
		local
			card_list : LINKED_LIST[G3_CARD]
		do
			Result := True
			card_list := combination.cards
			from
				card_list.start
			until
				card_list.off
			loop
				if not player.has_card(card_list.item) then
					Result := False
				end
				card_list.forth
			end
		end

	played_dog
			-- Gives the turn to the current player's partner.
		local
			current_player : G3_PLAYER
		do
			current_player := get_player (turn)
			table.set_turn (current_player.partner.id)
		end

	who_has_the_mah_jong : G3_PLAYER_ID
			-- Says which player has the Mah Jongg card.
		local
			mah_jong : G3_CARD
		do
			create mah_jong.make ("", "THE MAHJONGG", True, 0)
			from
				players.start
			until
				players.off
			loop
				if players.item.has_card (mah_jong) then
					Result := players.item.id
				end
				players.forth
			end
		end


feature -- Features about shuffle and mix the cards


	shuffle : LINKED_LIST[LINKED_LIST[G3_CARD]]
			-- Gives the cards a shuffle.
		local
			random_sequence:RANDOM
			seed:INTEGER
			time:TIME
			list: LINKED_LIST[G3_CARD]
		do
			create time.make_now
			create Result.make
			create list.make
			seed := time.hour
			seed := seed * 60 + time.minute
			seed := seed * 60 + time.second
			seed := seed * 1000 + time.milli_second
			create random_sequence.set_seed (seed)
			list:=deck
			Result.sequence_put (list_of_cards(list,14,random_sequence))
			Result.sequence_put (list_of_cards(list,14,random_sequence))
			Result.sequence_put (list_of_cards(list,14,random_sequence))
			Result.sequence_put (list_of_cards(list,14,random_sequence))
		ensure
			valid_result:  Result.count=4
		end

	list_of_cards(deck_:LINKED_LIST[G3_CARD];number:INTEGER;random_sequence:RANDOM):LINKED_LIST[G3_CARD]
			-- Return a list with cards.
			-- number: size of list to retrieve
			-- deck_: the complete deck
		require
			valid_parameters: (number>0)
		local
			i,n,pos,size_deck : INTEGER
		do
			size_deck:=deck_.count
			create Result.make
			from
				i:=0
			until
				i=number
			loop
				n:=size_deck-i
				random_sequence.forth
				pos := random_sequence.item \\ n + 1
				Result.sequence_put (deck_.at (pos))
				deck_.go_i_th (pos)
				deck_.remove
				i:=i+1
			end
		ensure
			Result.count=number
		end


	deck : LINKED_LIST[G3_CARD]
			-- Gives the deck of all cards (ordered)
		local
			card: G3_CARD
		do
			create Result.make
				--Make cards of kind "RED"
			create card.make ("A", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("2", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("3", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("4", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("5", "RED", FALSE,5)
			Result.sequence_put (card)
			create card.make ("6", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("7", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("8", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("9", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("10", "RED", FALSE,10)
			Result.sequence_put (card)
			create card.make ("J", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("Q", "RED", FALSE,0)
			Result.sequence_put (card)
			create card.make ("K", "RED", FALSE,10)
			Result.sequence_put (card)

				--Make cards of kind "BLUE"
			create card.make ("A", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("2", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("3", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("4", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("5", "BLUE", FALSE,5)
			Result.sequence_put (card)
			create card.make ("6", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("7", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("8", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("9", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("10", "BLUE", FALSE,10)
			Result.sequence_put (card)
			create card.make ("J", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("Q", "BLUE", FALSE,0)
			Result.sequence_put (card)
			create card.make ("K", "BLUE", FALSE,10)
			Result.sequence_put (card)

			--Make cards of kind "BLACK"
			create card.make ("A", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("2", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("3", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("4", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("5", "BLACK", FALSE,5)
			Result.sequence_put (card)
			create card.make ("6", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("7", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("8", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("9", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("10", "BLACK", FALSE,10)
			Result.sequence_put (card)
			create card.make ("J", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("Q", "BLACK", FALSE,0)
			Result.sequence_put (card)
			create card.make ("K", "BLACK", FALSE,10)
			Result.sequence_put (card)

			--Make cards of kind "GREEN"
			create card.make ("A", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("2", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("3", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("4", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("5", "GREEN", FALSE,5)
			Result.sequence_put (card)
			create card.make ("6", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("7", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("8", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("9", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("10", "GREEN", FALSE,10)
			Result.sequence_put (card)
			create card.make ("J", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("Q", "GREEN", FALSE,0)
			Result.sequence_put (card)
			create card.make ("K", "GREEN", FALSE,10)
			Result.sequence_put (card)

				--Make special cards
			create card.make ("", "THE MAHJONGG" , TRUE,0)
			Result.sequence_put (card)
			create card.make ("", "THE DOG" , TRUE,0)
			Result.sequence_put (card)
			create card.make ("", "THE DRAGON" , TRUE,25)
			Result.sequence_put (card)
			create card.make ("", "THE PHOENIX" , TRUE,-25)
			Result.sequence_put (card)

		end



feature {NONE}

	table : G3_TABLE

	score : G3_SCORE

	players : LINKED_LIST [G3_PLAYER]

feature {G3_GAME_WINDOW, G3_CONTROLLER}

	game_over: BOOLEAN
		-- Is the game over?

	error_message: STRING


feature {G3_CONTROLLER}

	set_error_message(message:STRING)
			--Set the error message			
		do
			error_message:=message
		ensure
			error_message.is_equal (message)
		end

	has_error_message:BOOLEAN
			-- Has error_message?
		do
			Result:=error_message.is_empty
		end

	set_interrupted(player_id: G3_PLAYER_ID)
			-- set player_id as interrupted player
		do
			interrupted := player_id
		ensure
			interrupted = player_id
		end

	set_forced_to_play_bomba( player_id : G3_PLAYER_ID)
			-- setting player_id as player forced to play bomba in their turn
		do
			forced_to_play_bomba := player_id
		end

	restore_interrupted
			--restore the turn to last player was interrupted
		do
			table.set_turn (interrupted)
		ensure
			turn = interrupted
		end

	interrupted : G3_PLAYER_ID
		-- the player that was interrupted for bomba

	forced_to_play_bomba : G3_PLAYER_ID
		-- the player that interrupted for bomba


feature{G3_CONTROLLER} -- This section is about when the players have to give three cards to each other.


	give_card_to_player(player_id: G3_PLAYER_ID; card : G3_CARD)
			-- Gives a card to a player with id 'player_id'.
			-- The card is not given to the player until the update_given_cards method is called.
		require
			valid_arg: is_valid_id(player_id) and card /= Void
		do

		end


	remove_card_to_player(player_id: G3_PLAYER_ID; card : G3_CARD)
			-- Removes the given card to the player with id 'player_id'.
		require
			valid_arg: is_valid_id(player_id) and card /= Void
		do

		end

	update_given_cards
			-- Updates the list of cards given between the players.
		do

		end

feature {None}

	is_valid_id(id: G3_PLAYER_ID): BOOLEAN
			-- Verifies if the id is valid (it's one of the player IDs of the game).
		require
			valid_arg: id /= Void
		do
			Result := False
			from
				players.start
			until
				players.off
			loop
				if players.item.id.is_equal(id) then
					Result := True
				end
				players.forth
			end

		ensure
			Result = True or Result = False
		end

	unique_id : BOOLEAN
			-- Verifies that the players have different ids.
		local
			set : LINKED_SET[G3_PLAYER_ID]
		do
			Result := True
			from
				players.start
			until
				players.off
			loop
				if set.has (players.item.id) then
					Result := False
				end
				set.put (players.item.id)
				players.forth
			end

		end

invariant
	correct_attributes: table /= Void and score /= Void and players /= Void
	--valid_turn: is_valid_id(turn)
	unique_id: unique_id
end
