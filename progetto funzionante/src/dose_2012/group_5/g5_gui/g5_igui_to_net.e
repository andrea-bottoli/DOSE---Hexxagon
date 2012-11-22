note
	description: "The features presented in this class will be exposes to the NET client. The NET CLIENT can call these feature to update the state of the GUI."
	author: "Gabriele Fanchini"
	date: "13.11.2012"
	revision: "1.1"

deferred class
	G5_IGUI_TO_NET

feature {ANY} --NET CLIENT

	start_game (players_name: ARRAY [STRING]; my_name:STRING)
		-- this feature informs that the match is going to start, and passes the list of players
		-- players_name contains all names (also my_name)
		require
			valid_arg: players_name /= void
		do
			main_view.make(players_name, my_name)
		ensure
			main_view.amount_of_players = players_name.count
			-- that the game will be initialized and will start with the players indicated
		end

	put_cards (place: STRING; cards: ARRAY [STRING])
		-- this feature is invoked to tell the GUI that has to dispaly in the correct place
		-- cards passed as parameters
		require
			valid_arg: place /= void
			valid_place: place.is_equal ("HAND") xor place.is_equal ("PLAY")
		do
			if
				place.is_equal ("PLAY")
			then
				main_view.add_played_card(cards[1])
				main_view.set_last_played_card(cards[1])
				-- block other action to the current player, until a resolved card message is received
			else
				main_view.put_card_in_my_hand(cards)
			end
		ensure
			-- cards passed will be displayed in the correct position
			 place.is_equal("PLAY") implies (
				cards.count = 1 and
				main_view.last_played_card.is_equal(cards.item(1)))
			-- the player will not able to play another action until the end of the stream of actions
		end

	set_top_discard_card(player_name: STRING; a_card: STRING)
		-- this feature putw on the top of the discard pile of the player_name player the card a_card
		require
			valid_arg: player_name /= void
			valid_name: main_view.check_players_name (player_name)
		do
			main_view.put_card_on_the_top(a_card, player_name)
		ensure
			-- the top discard card of the player_name's player is a_card
		end

	pop_up_reveal (player_that_reveal: STRING; cards: ARRAY [STRING])
		-- this feature is invoked to open a pop-up with cards revealed by a player
		-- the only possible choice for the player is to press the button "OK" to close the pop-up
		require
			valid_arg: player_that_reveal /= void
			valid_player: main_view.check_players_name (player_that_reveal)
			valid_arg: cards /= void
		do

			-- ATTENZIONE QUI AL PLIMORFISMO!!!!!
			create a_pop_up_reveal.make(player_that_reveal, cards)
		ensure
			-- the GUI will display the pop-up with cards passed as parameter
			a_pop_up_reveal.list_of_cards.is_equal(cards)
			a_pop_up_reveal.player.is_equal(player_that_reveal)
		end

	pop_up_selection (cards_are_from: STRING; min_choice: INTEGER; max_choice: INTEGER; cards: ARRAY [STRING])
		-- this feature opens a pop-up that display cards passed as parameter
		-- the player has to choice a number of card N (min_choice < N < max_choice) and then submit them
		require
			valid_arg: cards_are_from /= void
			valid_arg: cards_are_from.is_equal("HAND") xor cards_are_from.is_equal("SUPPLY")
			valid_arg: min_choice > 0
			valid_arg: max_choice >= min_choice
			valid_arg: cards /= void
		do
			create a_pop_up_selection.make(cards_are_from, cards, min_choice, max_choice)
		ensure
			-- the GUI will display the pop-up with cards passed as parameter
			-- the player can choise only a valid number of cards
			a_pop_up_selection.list_of_cards.is_equal(cards)
			a_pop_up_selection.place.is_equal(cards_are_from)
			a_pop_up_selection.min_selection = min_choice
			a_pop_up_selection.max_selection = max_choice
		end

	pop_up_thief (player_that_played_thief: STRING; cards_revealed_by_players: HASH_TABLE[STRING, STRING])
		-- this feature opens a pup-up that display cards revealed by the other player in the game
		-- the current player has to choice which cards will be trashed, which will be discarded and which he will take for him
		require
			valid_arg: player_that_played_thief /= void
			-- player_that_played_thief is the current player
			valid_arg: cards_revealed_by_players /= void
			valid_size: cards_revealed_by_players.count = (main_view.amount_of_players -1)
			-- field of the HASH_TABLE must be valid and in the second STRING field are stored 2 card_ID (separated by ";")			
		do
			create a_pop_up_thief.make(player_that_played_thief, cards_revealed_by_players)
		ensure
			-- the GUI will display the pop-up used when a card thief is played
			a_pop_up_thief.owner_thief_card.is_equal (player_that_played_thief)
			a_pop_up_thief.revealed_cards.is_equal (cards_revealed_by_players)
		end

	new_turn (new_current_player: STRING)
			-- This feature is invoked when a new turn starts
		require
			valid_arg: new_current_player /= void
			valid_name: main_view.check_players_name (new_current_player)
		do
			main_view.set_phase_of_the_game ("ACTION")
			main_view.set_curret_player(new_current_player)
		ensure
			-- The GUI blocks actions to other players, and will enable buttons of the new_current_player
			main_view.phase_of_the_game.is_equal ("ACTION")
			main_view.current_player_info.current_player_name.is_equal (new_current_player)
			main_view.current_player_info.action_points = 1
			main_view.current_player_info.buy_points = 1
			main_view.current_player_info.coins = 0
		end

	new_phase (new_phase_name: STRING)
		-- This feature is invoked to change the current phase of the game
		require
			valid_arg: new_phase_name /= void
			valid_phase: new_phase_name.is_equal ("ACTION") xor new_phase_name.is_equal ("BUY") xor new_phase_name.is_equal ("CLEAN-UP")
		do
			main_view.set_phase_of_the_game (new_phase_name)

			if
				new_phase_name.is_equal ("CLEAN-UP")
			then
				main_view.reset_played_cards
			end

		ensure
			-- The GUI will block other phase actions and enable new_phase_name actions to the current player
			main_view.phase_of_the_game.is_equal (new_phase_name)
		end

	pop_up_text_message (text: STRING)
		-- this feature will display a pop-up with the text passe as parameter
		require
			valid_arg: text /= void
		do
			create a_pop_up_message.make(text)
		ensure
			a_pop_up_message.message.is_equal(text)
			-- the GUI will display a pop-up with text passed as parameter, the player will close the pop up clicking
			-- on the "OK" button
		end

	update_state (target_player: STRING; update_info: HASH_TABLE [INTEGER, STRING])
		-- this feature is invoked to update informations (like number of cards in the deck or in the hand, action points, coins)
		-- displayed in the GUI. Thi can update info of the current player or of another players
		require
			valid_arg: target_player /= void
			valid_name: main_view.check_players_name (target_player)
			valid_arg: update_info /= void
			-- update_info contains: hand (number of card in the hand of the target_player), deck (number of card in the
			-- of the target_player) coins and actions and buy (of the target_player)
		do
			main_view.update_state (target_player, update_info)
		ensure
			-- the GUI will update information about cards number, points and coins with information contained in the update_info
		end

	update_supply (supply_state: HASH_TABLE [INTEGER, STRING])
		-- this feature is invoked when the number of supply cards change (after a purchase or a card effect)
		require
			valide_arg: supply_state /= void
		do
			main_view.set_supply_state(supply_state)
		ensure
			main_view.supply_state.is_equal(supply_state)
		end

	keep_or_not_card(card: STRING): BOOLEAN
		-- this feature is invoked to ask to the player if he wants to take a card or not
		require
			valid_arg: card/=void
		do
			create a_pop_up_keep.make(card)
		ensure
			a_pop_up_keep.card.is_equal(card)
			-- this feature will open a pop-up in the gui to ask the player what he wants to do
		end

	resolved_card(card: STRING)
		-- this feature is invoked to notify the GUI that the stream octions connected to the last card played is ended
		require
			valid_arg: card/= void
			valid_card: card.is_equal (main_view.last_played_card)
		do
			main_view.set_last_played_card("NONE")
		ensure
			-- the player will be able to play another card
			main_view.last_played_card.is_equal("NONE")
		end

	end_game (scores: HASH_TABLE [INTEGER, STRING])
		-- this feature is invoked when the match ended.
		require
			valid_arg: scores /= void
			-- scores contains players name (KEY) and their scores (INTEGER)
		do
			create a_pop_up_end.make(scores)
		ensure
			a_pop_up_end.final_scores.is_equal(scores)
			-- the GUI blocks every actions of the player. A pop-up with scores of players and the winner player name will be
			-- displayed. Every player can choise to re-match the game or to leave it.
		end

	remove_player(a_player_name: STRING)
		-- this method is invoked to inform the GUI component that a player (not the HOST) left the game.
		require
			-- the player with the name "a_player_name" really left the game
			main_view.check_players_name (a_player_name)
			a_player_name /= main_view.me.player_name
		do
			main_view.remove_from_players_list(a_player_name)
		ensure
			-- the GUI will be updated and informations about this player will be deleted
		end



feature {G5_INET_TO_GUI, EQA_TEST_SET}

	add_gui_controller(a_net_component: G5_INET_TO_GUI)
		-- this method is used to link GUI to the NET (it's called by the NET and the initialization)
		require
			valid_arg: a_net_component/= void
		do
		ensure
			net_component = a_net_component
		end

	host_player_waiting_room()
		-- this method is used to invoke the pop-up of the waiting room in the host
		require
			true
		do
		ensure
			-- to open the pop-up og the waiting room of the host
		end

	joint_player_waiting_room()
		-- this method is used to invoke the pop-up of the waiting room in client different from the host
		require
			true
		do
		ensure
			-- to open the pop-up of the waiting room with a the "please wait message"
		end

	player_join_waiting_room (name_new_player: STRING)
		-- this method is invoked by the NET client of the player that hosts the game.
		-- This inform him that a new player has joined the waiting room.
		require
			valid_arg: name_new_player /= void
		do
		ensure
			-- to inform the host player that a new player has joined the match
		end

feature -- variable

	net_component: G5_INET_TO_GUI
		-- the reference to the NET contract class

feature {TEST_SET_G5_GUI} -- setter for tests

	set_pop_up_reveal(other_pop_up_reveal: G5_POP_UP_REVEAL)
		-- this change the instance in the variable
		do
			a_pop_up_reveal:= other_pop_up_reveal
		end

	set_pop_up_selection(other_pop_up_selection: G5_POP_UP_WITH_SELECTION)
		-- this change the instance in the variable
		do
			a_pop_up_selection:= other_pop_up_selection
		end

	set_pop_up_thief(other_pop_up_thief: G5_POP_UP_THIEF)
		-- this change the instance in the variable
		do
			a_pop_up_thief:= other_pop_up_thief
		end

	set_pop_up_message(other_pop_up_message: G5_POP_UP_MESSAGE)
		-- this change the instance in the variable
		do
			a_pop_up_message:= other_pop_up_message
		end

	set_pop_up_keep(other_pop_up_keep: G5_POP_UP_KEEP_OR_NOT)
		-- this change the instance in the variable
		do
			a_pop_up_keep:= other_pop_up_keep
		end

	set_pop_up_end(other_pop_up_end: G5_POP_UP_END_GAME)
		-- this change the instance in the variable
		do
			a_pop_up_end:= other_pop_up_end
		end

	set_main_view(other_main_view: G5_MAIN_VIEW)
		-- this change the instance in the variable
		do
			main_view:= other_main_view
		end

feature -- GUI variable

	a_pop_up_reveal: G5_POP_UP_REVEAL
		-- an instance of a pop-up of type reveal

	a_pop_up_selection: G5_POP_UP_WITH_SELECTION
		-- an instance of a pop-up of type selection

	a_pop_up_thief: G5_POP_UP_THIEF
		-- an instance of a pop-up of type thief

	a_pop_up_message: G5_POP_UP_MESSAGE
		-- an instance of a pop-up type message

	a_pop_up_keep: G5_POP_UP_KEEP_OR_NOT
		-- an instance of a pop-up type keep or not

	a_pop_up_end: G5_POP_UP_END_GAME
		-- an instance of a pop-up type end game

	main_view: G5_MAIN_VIEW
		-- an instance of the main view
end
