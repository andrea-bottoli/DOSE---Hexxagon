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
			create team1_score.make
			create team2_score.make
			create players.make
			dragon := False
			dragon_id := Void
		end

feature -- Public features of the G3_MODEL class.

	turn : G3_PLAYER_ID
			-- Retrieve a id of the player that has to play.
		do
			Result := table.turn
		ensure
			valid_id: is_valid_id(Result)
		end

	team_info ( team_id : INTEGER ) :  TUPLE [player1, player2: STRING; global_score, partial_score: INTEGER]
			-- Retrieve a copy of the score of the game.
		require
			valid_arg: team_id = 1 or team_id = 2
		local
			tuple : TUPLE [player1, player2: STRING; global_score, partial_score: INTEGER]
		do
			if team_id = 1 then
				tuple.put (team1_score.team.player1.name, 0)
				tuple.put (team1_score.team.player2.name, 1)
				tuple.put (team1_score.global_score, 2)
				tuple.put (team1_score.partial_score, 3)
			else
				tuple.put (team2_score.team.player1.name, 0)
				tuple.put (team2_score.team.player2.name, 1)
				tuple.put (team2_score.global_score, 2)
				tuple.put (team2_score.partial_score, 3)
			end
			Result := tuple
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

	get_players : LINKED_LIST[G3_PLAYER]
			-- Returns a copy of the list of players. The player in position i of the list is sat to the left of the player in
			-- the position i + 1.
		local
			list_of_players : LINKED_LIST[G3_PLAYER]
		do
			create list_of_players.make
			list_of_players.copy (players)
			Result := list_of_players
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

	number_of_players : INTEGER
			-- Return the number of connected players to game.
		do
			Result:= players.count
		end

	game_over: BOOLEAN
		-- Is the game over?
		do
			Result:= team1_score.global_score >= 1000 or team2_score.global_score >= 1000
		end

	is_the_round_over : BOOLEAN
			-- Says if the round is over or not.
		do
			Result:= table.round_over
		end


feature  {G3_CONTROLLER}

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
			if round_over then
				table.set_round_over(True)
				update_score
			else
				if move.cards.count = 1 and move.cards.first.is_the_dog then
					played_dog
				elseif attached {G3_CARD} move.get_the_mahjong as mahjong then
					mah_jong_number := mahjong.number
					table.set_turn (following_turn)
				else
					table.set_turn (following_turn)
				end
			end
		end

	detoned_bomb( id : G3_PLAYER_ID )
			-- The bomb was detonated. The turn has to change and 'id' is the following one.
		require
			valid_arg: id /= Void and is_valid_id(id)
		do
			table.set_turn (id)
		end

	continue_interrupted_dragon(player_id: G3_PLAYER_ID)
		require
			valid_id : is_valid_id (player_id)
		do
			hand_winner (player_id)
			dragon := False
			dragon_id := Void
		end

	start_game
			-- Prepares to start the game.
		require
			players.count = 4
		do
			deal_the_cards
			players.at (0).set_team_number(1)
			players.at (1).set_team_number(2)
			players.at (2).set_team_number(1)
			players.at (3).set_team_number(2)
			team1_score.set_team (players.at (0), players.at (2))
			team2_score.set_team (players.at (1), players.at (3))
		end

	start_round
			-- Prepares to start a round
		do
			from
				players.start
			until
				players.off
			loop
				players.item.set_is_playing(True)
				players.item.clear_hand_score
				players.forth
			end
			deal_the_cards
			table.clear_stack
			table.set_round_over (False)
			table.set_round_winner_player (Void)
			table.set_turn (who_has_the_mah_jong)
			set_mah_jong_number (Void)
			dragon := False
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

feature{NONE}

	following_turn : G3_PLAYER_ID
		require
			not_round_over: not table.round_over
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
				-- A player that is not playing may be the last killer
				if players.item.id.is_equal(table.last_killer) then
					if not top_play.cards.at (0).is_the_dragon then
						hand_winner (players.item.id)
					else
						dragon := True
						dragon_id := players.item.id
					end
				end
				if players.off then
					-- If the list is at the end, it starts again.
					players.start
				else
					-- Else, moves forward to the following player.
					players.forth
				end
			end
			-- A player that is playing may be the last killer.
			if players.item.id.is_equal(table.last_killer) then
				if not top_play.cards.at (0).is_the_dragon then
					hand_winner (players.item.id)
				else
					dragon := True
					dragon_id := players.item.id
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
			-- If the player has no cards, he is not playing.
			if player.cards.is_empty then
				if number_active_players = 4 then
					table.set_round_winner_player(table.turn)
				end
				player.set_is_playing(False)
			end
			table.set_last_killer(player.id)
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
			if current_player.partner.is_playing then
				-- If the player is playing, he has the turn.
				table.set_turn (current_player.partner.id)
			else
				-- Else, the following active player of the partner has the turn.
				table.set_turn (current_player.partner.id)
				table.set_turn (following_turn)
			end

		end

	hand_winner(player_id : G3_PLAYER_ID)
			-- Gives the points to the hand's winner player.
		require
			valid_id: is_valid_id (player_id)
		local
			player : G3_PLAYER
			points : INTEGER
		do
			player := get_player (player_id)
			points := table.count_points
			player.set_hand_score (player.hand_score + points)
			table.clear_stack
		end

	round_over : BOOLEAN
			-- Verifies if the round is over or not.
		local
			playing : LINKED_LIST[G3_PLAYER]
		do
			-- Add the active player to the playing list.
			create playing.make
			from
				players.start
			until
				players.off
			loop
				if players.item.is_playing then
					playing.extend (players.item)
				end
				players.forth
			end

			-- 	Depending the number of active players, the result is returned.
			if playing.count > 2 then
				Result := False
			elseif playing.count = 1 then
				Result := True
			elseif playing.count = 2 then
				if are_partners(playing.at (0).id, playing.at (1).id) then
					Result := True
				else
					Result := False
				end
			end

		end

	are_partners(player_id_1 : G3_PLAYER_ID; player_id_2 : G3_PLAYER_ID) : BOOLEAN
			-- Verifies if the given players are partners or not.
		require
			valid_id: player_id_1 /= Void and player_id_2 /= Void
		local
			player1 : G3_PLAYER
		do
			player1 := get_player (player_id_1)
			Result := player1.partner.id.is_equal (player_id_2)

		end

	who_has_the_mah_jong : G3_PLAYER_ID
			-- Says which player has the Mah Jongg card.
		local
			mah_jong : G3_CARD
		do
			create mah_jong.make ("", "THE MAHJONGG", True, 0,1)
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

	number_active_players : INTEGER
			-- Says the number of the active players(players that are playing).
		local
			number : INTEGER
		do
			number := 0
			from
				players.start
			until
				players.off
			loop
				if players.item.is_playing then
					number := number + 1
				end
				players.forth
			end
			Result := number
		end


feature {NONE} -- Features about shuffle and mix the cards


	deal_the_cards
			-- Deal the cards to all players
		require
			all_players_conected: players.count=4
		local
			deck_:LINKED_LIST[LINKED_LIST[G3_CARD]]
		do
			create deck_.make
			deck_:=shuffle
			deck_.start
			from
				players.start
			until
				players.off
			loop
				players.item.add_cards (deck_.item)
				players.forth
				deck_.forth
			end
		end


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
			create card.make ("A", "RED", FALSE,0,14)
			Result.sequence_put (card)
			create card.make ("2", "RED", FALSE,0,2)
			Result.sequence_put (card)
			create card.make ("3", "RED", FALSE,0,3)
			Result.sequence_put (card)
			create card.make ("4", "RED", FALSE,0,4)
			Result.sequence_put (card)
			create card.make ("5", "RED", FALSE,5,5)
			Result.sequence_put (card)
			create card.make ("6", "RED", FALSE,0,6)
			Result.sequence_put (card)
			create card.make ("7", "RED", FALSE,0,7)
			Result.sequence_put (card)
			create card.make ("8", "RED", FALSE,0,8)
			Result.sequence_put (card)
			create card.make ("9", "RED", FALSE,0,9)
			Result.sequence_put (card)
			create card.make ("10", "RED", FALSE,10,10)
			Result.sequence_put (card)
			create card.make ("J", "RED", FALSE,0,11)
			Result.sequence_put (card)
			create card.make ("Q", "RED", FALSE,0,12)
			Result.sequence_put (card)
			create card.make ("K", "RED", FALSE,10,13)
			Result.sequence_put (card)

				--Make cards of kind "BLUE"
			create card.make ("A", "BLUE", FALSE,0,14)
			Result.sequence_put (card)
			create card.make ("2", "BLUE", FALSE,0,2)
			Result.sequence_put (card)
			create card.make ("3", "BLUE", FALSE,0,3)
			Result.sequence_put (card)
			create card.make ("4", "BLUE", FALSE,0,4)
			Result.sequence_put (card)
			create card.make ("5", "BLUE", FALSE,5,5)
			Result.sequence_put (card)
			create card.make ("6", "BLUE", FALSE,0,6)
			Result.sequence_put (card)
			create card.make ("7", "BLUE", FALSE,0,7)
			Result.sequence_put (card)
			create card.make ("8", "BLUE", FALSE,0,8)
			Result.sequence_put (card)
			create card.make ("9", "BLUE", FALSE,0,9)
			Result.sequence_put (card)
			create card.make ("10", "BLUE", FALSE,10,10)
			Result.sequence_put (card)
			create card.make ("J", "BLUE", FALSE,0,11)
			Result.sequence_put (card)
			create card.make ("Q", "BLUE", FALSE,0,12)
			Result.sequence_put (card)
			create card.make ("K", "BLUE", FALSE,10,13)
			Result.sequence_put (card)

			--Make cards of kind "BLACK"
			create card.make ("A", "BLACK", FALSE,0,14)
			Result.sequence_put (card)
			create card.make ("2", "BLACK", FALSE,0,2)
			Result.sequence_put (card)
			create card.make ("3", "BLACK", FALSE,0,3)
			Result.sequence_put (card)
			create card.make ("4", "BLACK", FALSE,0,4)
			Result.sequence_put (card)
			create card.make ("5", "BLACK", FALSE,5,5)
			Result.sequence_put (card)
			create card.make ("6", "BLACK", FALSE,0,6)
			Result.sequence_put (card)
			create card.make ("7", "BLACK", FALSE,0,7)
			Result.sequence_put (card)
			create card.make ("8", "BLACK", FALSE,0,8)
			Result.sequence_put (card)
			create card.make ("9", "BLACK", FALSE,0,9)
			Result.sequence_put (card)
			create card.make ("10", "BLACK", FALSE,10,10)
			Result.sequence_put (card)
			create card.make ("J", "BLACK", FALSE,0,11)
			Result.sequence_put (card)
			create card.make ("Q", "BLACK", FALSE,0,12)
			Result.sequence_put (card)
			create card.make ("K", "BLACK", FALSE,10,13)
			Result.sequence_put (card)

			--Make cards of kind "GREEN"
			create card.make ("A", "GREEN", FALSE,0,14)
			Result.sequence_put (card)
			create card.make ("2", "GREEN", FALSE,0,2)
			Result.sequence_put (card)
			create card.make ("3", "GREEN", FALSE,0,3)
			Result.sequence_put (card)
			create card.make ("4", "GREEN", FALSE,0,4)
			Result.sequence_put (card)
			create card.make ("5", "GREEN", FALSE,5,5)
			Result.sequence_put (card)
			create card.make ("6", "GREEN", FALSE,0,6)
			Result.sequence_put (card)
			create card.make ("7", "GREEN", FALSE,0,7)
			Result.sequence_put (card)
			create card.make ("8", "GREEN", FALSE,0,8)
			Result.sequence_put (card)
			create card.make ("9", "GREEN", FALSE,0,9)
			Result.sequence_put (card)
			create card.make ("10", "GREEN", FALSE,10,10)
			Result.sequence_put (card)
			create card.make ("J", "GREEN", FALSE,0,11)
			Result.sequence_put (card)
			create card.make ("Q", "GREEN", FALSE,0,12)
			Result.sequence_put (card)
			create card.make ("K", "GREEN", FALSE,10,13)
			Result.sequence_put (card)

				--Make special cards
			create card.make ("", "THE MAHJONGG" , TRUE,0,1)
			Result.sequence_put (card)
			create card.make ("", "THE DOG" , TRUE,0,1)
			Result.sequence_put (card)
			create card.make ("", "THE DRAGON" , TRUE,25,15)
			Result.sequence_put (card)
			create card.make ("", "THE PHOENIX" , TRUE,-25,1.5)
			Result.sequence_put (card)

		end

feature{None} -- Features about managing the score.

	set_global_score( team_number : INTEGER; global_score : INTEGER )
			-- Sets the score of the given team with the current value plus the value of 'global_score' parameter.
		require
			team_number = 1 or team_number = 2
		do
			if team_number = 1 then
				team1_score.set_global_score (team1_score.global_score + global_score)
			else
				team2_score.set_global_score (team2_score.global_score + global_score)
			end
		end

	update_score
			-- Updates the score when the round is over.
		require
			round_over: round_over
		local
			round_winner_player : G3_PLAYER
		do
			round_winner_player := get_player(table.round_winner_player)
			if number_active_players = 2 then
				-- If the number of active players is two, then they are partners and they lost the round.
				set_global_score(round_winner_player.team_number, 200)
			else
				-- Else there is only one winner.
				from
					players.start
				until
					players.off
				loop
					if players.item.is_playing then
						-- The player that is playing is the only that have cards yet.
						-- The points of the player's hand score are for the winner player of the round.
						set_global_score(round_winner_player.team_number, players.item.hand_score)
						-- The point of the cards that the player has in his hand yet are for the opponent team.
						if players.item.team_number = 1 then
							team2_score.set_global_score (team2_score.global_score + players.item.count_point_in_hand)
						else
							team1_score.set_global_score (team1_score.global_score + players.item.count_point_in_hand)
						end
					else
						-- The player that finished the round(he doesn't have cards), updates the score of his team.
						set_global_score(players.item.team_number, players.item.hand_score)
					end
					players.forth
				end
			end
			-- Sum extra points of tichu or grand tichu bets.
			update_bets
		end

	update_bets
			-- Updates the bets that the players had in the round.
		local
			bettor_id : G3_PLAYER_ID
			round_winner_player : G3_PLAYER
		do
			round_winner_player := get_player(table.round_winner_player)
			from
			until
				table.tichu.is_empty
			loop
				bettor_id := table.tichu.item
				if bettor_id.is_equal (round_winner_player.id) then
					set_global_score (round_winner_player.team_number, 100)
				else
					set_global_score(get_player(bettor_id).team_number, -100)
				end
				table.tichu.remove
			end
			from
			until
				table.grand_tichu.is_empty
			loop
				bettor_id := table.grand_tichu.item
				if bettor_id.is_equal (round_winner_player.id) then
					set_global_score (round_winner_player.team_number, 200)
				else
					set_global_score(get_player(bettor_id).team_number, -200)
				end
				table.grand_tichu.remove
			end
		end

feature{G3_CONTROLLER} -- Features about managing the game states.

	set_before_9_cards(flag: BOOLEAN)
		do
		end

	set_passing_cards_stage(flag: BOOLEAN)
		do
			passing_cards_stage := flag
		end

	set_playing_round_stage(flag: BOOLEAN)
		do
			playing_round_stage := flag
		end

	set_responses_to_grand_tichu (responses : INTEGER)
	    do
	    	responses_to_grand_tichu := responses
	    end

feature {NONE}

	table : G3_TABLE

	team1_score : G3_SCORE

	team2_score : G3_SCORE

	players : LINKED_LIST [G3_PLAYER]

feature {G3_GAME_WINDOW, G3_CONTROLLER}

	error_message: STRING

	dragon : BOOLEAN

feature {G3_CONTROLLER}

	dragon_id : G3_PLAYER_ID

	mah_jong_number : STRING

	before_9_cards : BOOLEAN

 	passing_cards_stage : BOOLEAN

 	playing_round_stage : BOOLEAN

 	responses_to_grand_tichu : INTEGER


feature {G3_CONTROLLER}

	set_mah_jong_number(requested_card : STRING)
		do
			mah_jong_number := requested_card
		end

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
			Result:= not error_message.is_empty
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
		local
			player : G3_PLAYER
		do
			player := get_player (player_id)
			player.receive_card_from_player(card)
		end

	remove_card_to_player(player_id: G3_PLAYER_ID; card : G3_CARD)
			-- Removes the given card to the player with id 'player_id'.
		require
			valid_arg: is_valid_id(player_id) and card /= Void
		local
			player : G3_PLAYER
		do
			player := get_player (player_id)
			player.delete_card (card)
		end

	number_of_given_card_of_player(player_id : G3_PLAYER_ID) : INTEGER
			-- Returns the number of received cards of a specific player.
		require
			valid_id: is_valid_id (player_id)
		local
			player : G3_PLAYER
		do
			player := get_player(player_id)
			Result := player.count_received_cards

		end

	number_of_given_card : INTEGER
			-- Returns the number of received cards of all players.
		do
			Result := players.at (0).count_received_cards + players.at (1).count_received_cards + players.at (2).count_received_cards + players.at (3).count_received_cards
		end

	update_given_cards
			-- Updates the list of cards given between the players.
		do
			from
				players.start
			until
				players.off
			loop
				players.item.update_received_cards
				players.forth
			end
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
			create set.make
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
	correct_attributes: table /= Void and team1_score /= Void and team2_score /= Void and players /= Void
	--valid_turn: is_valid_id(turn)
	unique_id: unique_id
end
