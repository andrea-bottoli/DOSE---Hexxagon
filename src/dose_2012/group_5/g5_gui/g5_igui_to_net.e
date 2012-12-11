note
	description: "The features presented in this class will be exposed to the NET client. The NET CLIENT can call these feature to update the state of the GUI."
	author: "Gabriele Fanchini"
	date: "13.11.2012"
	revision: "1.1"

deferred class
	G5_IGUI_TO_NET

feature {ANY} --NET CLIENT

	start_game (players_name: ARRAY [STRING]; my_name:STRING)
		-- this feature informs that the match is going to start and passes the list of players
		-- players_name, which contains all the names (also my_name)
		require
			valid_arg: players_name /= void
			valid_name: my_name /= void and not(my_name.is_equal (""))
		do
		ensure
			main_view.amount_of_players = players_name.count
			-- that the game will be initialized and will start with the players indicated
		end

	put_cards (place: STRING; cards: ARRAY [STRING])
		-- this feature is invoked to tell the GUI that it has to display in the correct place
		-- cards passed as parameters
		require
			valid_arg: place /= void
			valid_arg: ((cards/= void) and (not(cards.is_empty)))
			valid_place: place.is_equal ("HAND") xor place.is_equal ("PLAY")
		do
			main_view.create_and_assign_card(place,cards)
		ensure
			-- cards passed will be displayed in the correct position
			 place.is_equal("PLAY") implies (
				cards.count = 1 and
				main_view.last_played_card.is_equal(cards.item(1)))
			-- the player will not able to play another action until the end of the stream of actions
		end

	set_top_discard_card(player_name: STRING; a_card: STRING)
		-- this feature puts on the top of the discard pile of the player_name player the card a_card
		require
			valid_arg: ((player_name /= void) and (not(player_name.is_equal (""))))
			valid_name: main_view.check_players_name (player_name)
		do
			main_view.update_top_discard_pile(player_name, a_card)
		ensure
			-- the top discard card of the player_name's player is a_card
		end

	pop_up_reveal (player_that_reveal: STRING; cards: ARRAY [STRING])
		-- this feature is invoked to open a pop-up with cards revealed by a player
		-- the only possible choice for the player is to press the button "OK" to close the pop-up
		require
			valid_arg: player_that_reveal /= void and not(player_that_reveal.is_equal (""))
			valid_player: main_view.check_players_name (player_that_reveal)
			valid_arg: cards /= void
		do

			-- ** NOTA ** SISTEMARE UNA VOLTA CREATI I POP-UP
			create a_pop_up_reveal.make(player_that_reveal, cards)
		ensure
			-- the GUI will display the pop-up with cards passed as parameter
			a_pop_up_reveal.list_of_cards.is_equal(cards)
			a_pop_up_reveal.player.is_equal(player_that_reveal)
		end

	pop_up_selection (cards_are_from: STRING; min_choice: INTEGER; max_choice: INTEGER; cards: ARRAY [STRING])
		-- this feature opens a pop-up that display cards passed as parameter
		-- the player has to choose a number of cards N (min_choice <= N <= max_choice) and then submit them
		require
			valid_arg: cards_are_from /= void
			valid_arg: cards_are_from.is_equal("HAND") xor cards_are_from.is_equal("SUPPLY")
			valid_arg: min_choice > 0
			valid_arg: max_choice >= min_choice
			valid_arg: cards /= void
		do
			-- ** NOTA ** SISTEMARE UNA VOLTA CREATI I POP-UP
			create a_pop_up_selection.make(cards_are_from, cards, min_choice, max_choice)
		ensure
			-- the GUI will display the pop-up with cards passed as parameter
			-- the player can choose only a valid number of cards
			a_pop_up_selection.list_of_cards.is_equal(cards)
			a_pop_up_selection.place.is_equal(cards_are_from)
			a_pop_up_selection.min_selection = min_choice
			a_pop_up_selection.max_selection = max_choice
		end

	pop_up_thief (player_that_played_thief: STRING; cards_revealed_by_players: HASH_TABLE[STRING, STRING])
		-- this feature opens a pop-up that displays cards revealed by the other player in the game
		-- the current player has to choose which cards will be trashed, which will be discarded and which he will take for him
		require
			valid_arg: player_that_played_thief /= void and not(player_that_played_thief.is_equal (""))
			-- player_that_played_thief is the current player
			valid_arg: cards_revealed_by_players /= void
			valid_size: cards_revealed_by_players.count = (main_view.amount_of_players -1)
			-- field of the HASH_TABLE must be valid and in the second STRING field are stored 2 card_ID (separated by ";")			
		do
			-- ** NOTA ** SISTEMARE UNA VOLTA CREATI I POP-UP
			create a_pop_up_thief.make(player_that_played_thief, cards_revealed_by_players)
		ensure
			-- the GUI will display the pop-up used when a card thief is played
			a_pop_up_thief.owner_thief_card.is_equal (player_that_played_thief)
			a_pop_up_thief.revealed_cards.is_equal (cards_revealed_by_players)
		end

	new_turn (new_current_player: STRING)
			-- This feature is invoked when a new turn starts
		require
			valid_arg: new_current_player /= void and not(new_current_player.is_equal (""))
			valid_name: main_view.check_players_name (new_current_player)
		do
			main_view.new_turn_update (new_current_player)
		ensure
			-- The GUI blocks actions to other players and will enable buttons of the new_current_player
			main_view.board.current_player_name.is_equal (new_current_player)
			main_view.board.action_points = 1
			main_view.board.buy_points = 1
			main_view.board.coins = 0
		end

	new_phase (new_phase_name: STRING)
		-- This feature is invoked to change the current phase of the game
		require
			valid_arg: new_phase_name /= void
			valid_phase: new_phase_name.is_equal ("Action") xor new_phase_name.is_equal ("Buy") xor new_phase_name.is_equal ("Clean-up")
		do
			main_view.update_phase (new_phase_name)
		ensure
			-- The GUI will block other phase actions and enable new_phase_name actions to the current player
			main_view.board.current_phase.is_equal (new_phase_name)
			-- if the new phse is "clean-up" it also remove played cards and discard all cards in the hand of the player
		end

	pop_up_text_message (text: STRING)
		-- this feature will display a pop-up with the text passed as a parameter
		require
			valid_arg: text /= void
		do
			-- ** NOTA ** SISTEMARE UNA VOLTA CREATI I POP-UP
			create a_pop_up_message.make(text)
		ensure
			a_pop_up_message.message.is_equal(text)
			-- the GUI will display a pop-up with text passed as parameter, the player will close the pop up clicking
			-- on the "OK" button
		end

	update_state (target_player: STRING; update_info: HASH_TABLE [INTEGER, STRING])
		-- this feature is invoked to update game state (like number of cards in the deck or in the hand, action points, coins)
		-- displayed in the GUI. It may be used to update info of the current player or of an other one.
		require
			valid_arg: ((target_player /= void) and (not(target_player.is_equal (""))))
			valid_name: main_view.check_players_name (target_player)
			valid_arg: update_info /= void
			valid_update: ((update_info.count = 5) and update_info.has ("HAND") and update_info.has ("DECK") and update_info.has ("ACTION") and update_info.has ("BUY") and update_info.has ("COIN"))
			-- update_info contains: hand (number of card in the hand of the target_player), deck (number of card in the
			-- of the target_player) coins and actions and buy (of the target_player)
		do

			main_view.update_state_of_the_game (target_player, update_info)
		ensure
			-- the GUI will update information about cards number, points and coins with information contained in the update_info
		end

	update_supply (supply_state: HASH_TABLE [INTEGER, STRING])
		-- this feature is invoked when the number of supply cards changes (after a purchase or a card effect)
		require
			valide_arg: supply_state /= void
		do
			-- ** NOTA ** SISTEMARE UNA VOLTA CREATI I POP-UP
			--main_view.set_supply_state(supply_state)
		ensure
			main_view.supply_state.is_equal(supply_state)
		end

	keep_or_not_card(card: STRING): BOOLEAN
		-- this feature is invoked to ask to the player if he wants to take a card or not
		require
			valid_arg: card /= void and not(card.is_equal (""))
		do
			-- ** NOTA ** SISTEMARE UNA VOLTA CREATI I POP-UP
			create a_pop_up_keep.make(card)
		ensure
			a_pop_up_keep.card.is_equal(card)
			-- this feature will open a pop-up in the gui to ask the player what he wants to do
		end

	resolved_card(card: STRING)
		-- this feature is invoked to notify the GUI that the stream of actions connected to the last card played is ended
		require
			valid_arg: (card /= void and (not(card.is_equal (""))))
			valid_card: card.is_equal (main_view.last_played_card)
		do
			main_view.resolved_card (card)
		ensure
			-- the player will be able to play another card
			main_view.last_played_card.is_equal("NONE")
		end

	end_game (scores: HASH_TABLE [INTEGER, STRING])
		-- this feature is invoked when the match is ended.
		require
			valid_arg: scores /= void
			-- scores contains players name (KEY) and their scores (INTEGER)
		do
			-- ** NOTA ** SISTEMARE UNA VOLTA CREATI I POP-UP
			create a_pop_up_end.make(scores)
		ensure
			a_pop_up_end.final_scores.is_equal(scores)
			-- the GUI blocks every actions of the player. A pop-up with scores of players and the winner player name will be
			-- displayed. Every player can choose to re-match the game or to leave it.
		end

	remove_player(a_player_name: STRING)
		-- this method is invoked to inform the GUI component that a player (not the HOST) has left the game.
		require
			-- the player with the name "a_player_name" has really left the game
			check_in_view:	main_view.check_players_name (a_player_name)
			correct_name:	(a_player_name /= main_view.me.player_name) and
							(a_player_name /= void) and (not(a_player_name.is_equal ("")))
		do
			main_view.remove_player_from_the_game (a_player_name)
		ensure
			-- the GUI will be updated and information about this player will be deleted
		end



feature {G5_INET_TO_GUI, EQA_TEST_SET}

	add_gui_controller(a_net_component: G5_INET_TO_GUI)
		-- this feature is used to link a GUI element to the NET client one (it's invoked by the G5_INET_TO_GUI at the initialization).
		require
			valid_arg: a_net_component/= void
		do
		ensure
			net_component = a_net_component
		end

	host_player_waiting_room()
		-- this method is used to invoke the pop-up of the waiting room in the host
		require
			valid_state: ((host_waiting_room = void) and (common_player_waiting_room = void))
		do
			create host_waiting_room.make
			host_waiting_room.show
		ensure
			-- the pop-up of the waiting room of the host is opened
			host_waiting_room /= void
			common_player_waiting_room = void
		end

	joined_player_waiting_room()
		-- this method is used to invoke the pop-up of the waiting room in the clients,
		-- which is different from the one of the host
		require
			valid_state: ((host_waiting_room = void) and (common_player_waiting_room = void))
		do
			create common_player_waiting_room.make
			common_player_waiting_room.show
		ensure
			-- the pop-up of the waiting room with a "please wait" message is opened
			host_waiting_room = void
			common_player_waiting_room /= void
		end

	player_join_waiting_room (name_new_player: STRING)
		-- this method is invoked by the NET client of the player that hosts the game.
		-- It informs him/her that a new player has joined the waiting room.
		require
			valid_arg: ((name_new_player /= void) and not(name_new_player.is_equal ("")))
			valid_state: ((host_waiting_room /= void) and (common_player_waiting_room = void))
		do
			host_waiting_room.add_player_to_the_list(name_new_player)
		ensure
			-- the host player is informed that a new player has joined the match
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

	host_waiting_room: G5_HOST_WAITING_ROOM
		-- the waiting room displayed to the player if he is the host of the game

	common_player_waiting_room: G5_PLAYER_WAITING_ROOM
		-- the waiting room displayed to the player if he is not the host of the game


end
