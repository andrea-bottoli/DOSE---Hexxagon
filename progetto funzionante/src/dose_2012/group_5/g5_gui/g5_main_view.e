note
	description: "This is the main view displayed during a match. It will contains other subview."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.1"

class
	G5_MAIN_VIEW
create
	make

feature -- general feature that can be called by other GUI class

	make(players_name: ARRAY[STRING]; my_name_in_the_match: STRING)
		local
			i: INTEGER
			a_player: G5_PLAYER_INFO
		do
			played_cards.make_empty
			amount_of_players := players.count

			from
				i:=1
			until
				i> amount_of_players
			loop
				if
					players_name[i].is_equal(my_name_in_the_match)
				then
					create me.make(my_name_in_the_match)
				else
					create a_player.make (players_name[i])
					players.put(a_player,players.count)
				end
			end

		end

	add_played_card(a_card: STRING)
		-- this feature is used to add a card to the played_cards array, and also to show it in the GUI
		require
			a_card /= void
		do
			played_cards.put(a_card, played_cards.count +1)
		end

	set_supply_state(the_supply: HASH_TABLE[INTEGER, STRING])
		-- this feature sets the list of supplly cards with the corresponding number, it's used also to update the state
		require
			valid_arg: the_supply /= void
			valid_size: the_supply.count =  17
			-- controllare che sia davvero 17
		do
			supply_state:= the_supply
		end

	set_phase_of_the_game(a_phase: STRING)
		-- this feature sets the current game phase
		require
			valid_arg: a_phase /= void
			valid_string: a_phase.is_equal("ACTION") or a_phase.is_equal("BUY") or a_phase.is_equal("CLEAN-UP")
		do
			phase_of_the_game:= a_phase
		end

	set_trash_state(a_state: ARRAY[STRING])
		-- this feature is used to set (and update) the state of the trash pile
		require
			valid_arg: a_state /= void
			valid_size: a_state.count >= trash_state.count
			-- tutte le carte presenti nel vecchio trash_state devono essere presenti anche in a_state
		do
			trash_state:= a_state
		end

	set_last_played_card(a_card: STRING)
		--this feature is used to set the last played card
		require
			valid_arg: a_card /= void
		do
			last_played_card:= a_card
		end

	reset_played_cards()
		-- this feature clears the array of played cards
		require
			true
		do
			played_cards.make_empty
		end

feature -- players

	set_curret_player(a_name: STRING)
		-- this feature sets the current player
		do
			create current_player_info.make(a_name)
		end

	check_players_name(a_name: STRING): BOOLEAN
		-- this feature returns true if a_name in contained in the players_name
		require
			valid_arg: a_name/= void
		local
			i:INTEGER
		do
			from
				i:=1
			until
				i>amount_of_players
			loop
				if
					players[i].player_name.is_equal (a_name) or me.player_name.is_equal(a_name)
				then
					result:= TRUE
				end
			end
		end

	remove_from_players_list(a_name: STRING)
		-- remove a_name from the players list
		require
			a_name/= void
		local
			i:INTEGER
			new_players_list: ARRAY[G5_PLAYER_INFO]
		do
			from
				i:=1
			until
				i>amount_of_players
			loop
				if
					players[i].player_name.is_equal(a_name)
				then
					i:=i+1
				else
					new_players_list.put (players[i], new_players_list.count)
					i:=i+1
				end
			end
			players:= new_players_list
			amount_of_players:= players.count
		end

	put_card_in_my_hand(cards: ARRAY[STRING])
		-- put cards in the hand of the player that are plying on this device
		do
			me.set_cards_in_the_hand(cards)
		end

	put_card_on_the_top(a_card:STRING; player_name: STRING)
		-- put the card on the top of discard pile of the player_name player
		local
			i:INTEGER
		do
			if
				me.player_name.is_equal (player_name)
			then
				me.set_top_card_discard_pile (a_card)
			else
				from
					i:=1
				until
					i>players.count
				loop
					if
						players[i].player_name.is_equal (player_name)
					then
						players[i].set_top_card_discard_pile (a_card)
					end
				end
			end
		end

	update_state(target_player: STRING; update_info: HASH_TABLE [INTEGER, STRING])
		-- this feature is used to change number of cards in deck or hand of some players
		-- and also to change number of actions, buy or coins of the current player
		local
			i:INTEGER
			target: G5_PLAYER_INFO
		do
			-- find the target of the update
			if
				me.player_name.is_equal (target_player)
			then
				target:=me
			else
				from
					i:=0
				until
					i>players.count
				loop
					if
						players[i].player_name.is_equal (target_player)
					then
						target:=players[i]
					end
				end
			end


			if
				update_info.has ("DECK")
			then
				target.set_number_of_cards_deck (update_info["DECK"])
			end

			if
				update_info.has ("HAND")
			then
				target.set_number_of_cards_hand (update_info["HAND"])
			end

			if
				update_info.has ("ACTION") and target.player_name.is_equal (current_player_info.current_player_name)
			then
				current_player_info.set_action_points(update_info["ACTION"])
			end

			if
				update_info.has ("BUY") and target.player_name.is_equal (current_player_info.current_player_name)
			then
				current_player_info.set_buy_points(update_info["BUY"])
			end

			if
				update_info.has ("COINS") and target.player_name.is_equal (current_player_info.current_player_name)
			then
				current_player_info.set_coins(update_info["COINS"])
			end

		end



feature -- variable

	played_cards: ARRAY[STRING]
		-- it contains alle the cards played during this turn

	supply_state: HASH_TABLE[INTEGER, STRING]
		-- it contains number of a supply card and his ID

	phase_of_the_game: STRING
		-- it contains the current phase of the game (ACTION, BUY, CLEAN-UP)

	trash_state: ARRAY[STRING]
		-- it contains the list of cards trashed during the match by all the players

	last_played_card: STRING
		-- the last card that has been played by the current player


feature -- Players info variable

	me: G5_MY_INFO
		-- my name in this match

	players: ARRAY[G5_PLAYER_INFO]
		-- the list of players with info

	amount_of_players: INTEGER
		-- the number of players

	current_player_info: G5_CURRENT_PLAYER_INFO
		-- the instance of the state of the current player

end
