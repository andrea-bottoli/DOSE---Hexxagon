note
	description: "Summary description for {G5_MOAT_REACTION}."
	author: "Team Rio Cuarto 4"
	date: "$30/112012$"
	revision: "$0.2$"

class
	G5_RECEIVER_COMMAND_CARD

create
	make

feature {ANY} -- Intialization

	make (game: G5_TABLE)
		require
			game /= void
		do
			game_current := game
		ensure
			game_current = game
		end

feature -- Atributes

	game_current: G5_TABLE

	card_current: G5_CARD

feature -- Implementations
	-- Each of these feature implements the behavior of card,
	-- indicating the type (action, attack, reaction) and the name of the card.

	action_adventurer ()
		require
			date_of_card: card_current /= void and card_current.type = {G5_MACRO_CARDS}.action and card_current.id = {G5_MACRO_CARDS}.adventurer
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	attack_bureaucrat ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.attack) and card_current.id = {G5_MACRO_CARDS}.bureaucrat
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_bureaucrat ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.bureaucrat
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_cellar()
		require
			date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
							card_current.id= {G5_MACRO_CARDS}.cellar
			state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
		local
			message_action: G5_MESSAGE_ACTION
			message_update: G5_MESSAGE_UPDATE
			cards: ARRAY [STRING]
			count_card_selected: INTEGER
			i: INTEGER
			card: G5_CARD
			cards_draw: LINKED_LIST [G5_CARD]
		do
			-- Message: Select cards from the hand
			game_current.emptied_output_messages
			game_current.emptied_input_messages
			message_action.make ("HOST", <<game_current.player_current.name>>, "select_from_hand", game_current.player_current.get_all_cards_hand(), 0, game_current.player_current.hand_current.count, False)
			game_current.add_output_message (message_action)
			game_current.update_to_net()

			-- Response Message
			message_action ?= game_current.input_messages.first

			-- Treatment response
			cards := message_action.involved_cards
			from
				i := 0
			until
				i > cards.count
			loop
				card := game_current.player_current.get_card_hand (cards.item (i))
				if card /= Void then
					count_card_selected := count_card_selected + 1
					game_current.player_current.discard_pile.put (card)
				end
				i := i + 1
			end
			game_current.player_current.adds_cards_hand (game_current.player_current.draw_card_deck(count_card_selected))

			-- Add action
			game_current.player_current.add_action (1)

			-- Message update: player_estate, discard_pile,
			game_current.emptied_output_messages
			message_action.make ("HOST", <<game_current.player_current.name>>, "put_in_hand", game_current.player_current.get_all_cards_hand, 1, 1, False)
			game_current.add_output_message (message_action)
			message_action.make ("HOST", <<"ALL">>, "put_on_top_discard", <<card.id>>, 1, 1, False)
			game_current.add_output_message (message_action)
			message_update.make ("HOST", <<"ALL">>, "update_state", game_current.player_current.get_estate(), Void)
			game_current.add_output_message (message_update)
			message_action.make ("HOST", <<game_current.player_current.name>>, "resolved_card", <<"K3">>, 1, 1, False)
			game_current.add_output_message (message_action)
			game_current.update_to_net
		end

	action_chancellor ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.chancellor
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_chapel ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.chapel
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_council_room ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.council_room
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_feast ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.feast
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_festival ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.festival
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_laboratory ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.laboratory
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_library ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.library
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_market ()
			-- Take a card. You can play a card of action for your Action phase.
			-- During your Buy phase, you can buy an additional card Supply and
			-- add a coin to the total value of the Treasure cards played.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.market
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			cards: LINKED_LIST [G5_CARD]
		do
			game_current.player_current.add_action (1)
			game_current.player_current.add_buy (1)
			game_current.player_current.add_coin (1)
				-- take a card
			cards := game_current.player_current.draw_card_deck (1)
			game_current.player_current.adds_cards_hand (cards)
		end

	action_militia ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.militia
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
			game_current.player_current.add_coin (2)
		end

	attack_militia ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.attack) and card_current.id = {G5_MACRO_CARDS}.militia
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
			game_current.send_militia ()
		end

	action_mine ()
			-- Trash a Treasure card from your hand. Gain a Treasure card costing up to 3 coins more;
			-- put it into your hand.
			-- Generally, you can trash a Copper card and gain a Silver, or trash a Silver card and
			-- gain a Gold. However, you could also trash a Treasure to gain the same Treasure or a
			-- cheaper one. The gained card goes in your hand; thus, you can spend it the same turn.
			-- If you don't have a Treasure card in your hand to trash, you can't gain anything.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.mine
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			--cost_card: INTEGER
			inet: G5_INET_TO_LOGIC
			id_cards: ARRAY [STRING]
			message: G5_MESSAGE
			in_message: G5_MESSAGE_ACTION
			cards_posible: ARRAY [STRING]
			i: INTEGER
			hand: LINKED_LIST [G5_CARD]
			card: G5_CARD
			exist_treasure_cards:BOOLEAN
			targets:ARRAY[STRING]
		do

			from game_current.player_current.hand_current.start
			until game_current.player_current.hand_current.after
			loop
				exist_treasure_cards:= exist_treasure_cards or game_current.player_current.hand_current.item.type.has_substring ({G5_MACRO_CARDS}.treasure)
				game_current.player_current.hand_current.forth
			end
			-- message to send
			message:= create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,game_current.supply.get_info_supply)
			game_current.add_output_message (message)
			hand := game_current.player_current.hand_current
			if exist_treasure_cards then
				-- possible choices of cards Treasure of current hand
				create cards_posible.make_empty
				from
					i := 1
				until
					i > hand.count
				loop
					card := hand.item
					if card.type.has_substring ({G5_MACRO_CARDS}.treasure) then
						cards_posible.put (card.id, i)
						i := i + 1
					end
				end

				message:=create {G5_MESSAGE_ACTION}.make ({G5_MACRO_CARDS}.server, game_current.players_as_string, "selected_from_hand", cards_posible, 1, 1, false)
				game_current.add_output_message (message)

				game_current.update_to_net()
				-- the net responds with the selected card involved_cards to change
				-- send message to net
				game_current.emptied_output_messages
				message:= create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,game_current.supply.get_info_supply)
				game_current.add_output_message (message)
				-- cards trash.
				i:=1
				from game_current.pile_trash.start
				until 	game_current.pile_trash.after
				loop
					card:= 	game_current.pile_trash.item
					id_cards.put (card.id, i)
					game_current.pile_trash.forth
					i:=i+1
				end
				game_current.input_messages.start
			--	in_message :=game_current.input_messages[1]
				id_cards.put (in_message.involved_cards.item(1), i)
				message:= create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,game_current.players_as_string,"cards_in_trash",id_cards,0,0,false)
				game_current.add_output_message (message)
				-- set posibles treasure cards to choose
				-- selecciono del supply las cartas tesoro posibles.
				create id_cards.make_empty
				if  in_message.involved_cards.item(1).is_equal({G5_MACRO_CARDS}.copper) then
					id_cards.put ({G5_MACRO_CARDS}.copper,1)
					id_cards.put ({G5_MACRO_CARDS}.silver,2)
				else
					id_cards.put ({G5_MACRO_CARDS}.copper,1)
					id_cards.put ({G5_MACRO_CARDS}.silver,2)
					id_cards.put ({G5_MACRO_CARDS}.gold,3)
				end

				message:= create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,game_current.players_as_string,"select_from_supply",id_cards,1,1,false)
				game_current.add_output_message (message)

				game_current.update_to_net
				-- recibo de la net la carta tesoro.
				--in_message:= game_current.input_messages[1]
				if in_message.involved_cards.item (1).is_equal ({G5_MACRO_CARDS}.copper) then
					game_current.supply.sub_supply_treasure.item (1).decrement
				end
				if in_message.involved_cards.item (1).is_equal ({G5_MACRO_CARDS}.silver) then
					game_current.supply.sub_supply_treasure.item (2).decrement

				end
				if in_message.involved_cards.item (1).is_equal ({G5_MACRO_CARDS}.gold) then
					game_current.supply.sub_supply_treasure.item (3).decrement
				end
				game_current.player_current.add_action (-1)
				message:= create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,game_current.supply.get_info_supply)
				game_current.add_output_message (message)
				message := create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_supply",game_current.player_current.get_estate,game_current.supply.get_info_supply)
				game_current.add_output_message (message)
				create targets.make (1,1)
				targets.put (game_current.player_current.name, 1)
--				message:= create {G5_MESSAGE_ACTION}.make({G5_MACRO_CARDS}.server,targets,"put_in_hand",1,1,false)
				game_current.add_output_message (message)
			else
				-- el jugador no tenia ninguna carta tesoro
				game_current.player_current.add_action (-1)
				message:= create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,game_current.supply.get_info_supply)
			end

			game_current.update_to_net

		end -- end feature action_mine

	action_moat ()
		require
			date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and	card_current.id= {G5_MACRO_CARDS}.moat
			state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
		local
			message_action: G5_MESSAGE_ACTION
			message_update: G5_MESSAGE_UPDATE
		do
			game_current.player_current.adds_cards_hand (game_current.player_current.draw_card_deck (2))
			game_current.emptied_output_messages
			message_action.make ("HOST", <<game_current.player_current.name>>, "put_ind_hand", game_current.player_current.get_all_cards_hand, 1, 1, False)
			game_current.add_output_message (message_action)
			message_update.make ("HOST", <<"ALL">>, "update_state", game_current.player_current.get_estate, Void)
			game_current.add_output_message (message_action)
			message_action.make ("HOST", <<game_current.player_current.name>>, "resolved_card", <<"K15">>, 1, 1, False)
			game_current.add_output_message (message_action)
			game_current.update_to_net()
		end

	reaction_moat()
		require
			date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.reaction) and
							card_current.id= {G5_MACRO_CARDS}.moat
			state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
		local
			message_action: G5_MESSAGE_ACTION
		do
			game_current.emptied_output_messages
			message_action.make (game_current.player_current.name, <<"ALL">>, "reveal", <<"K15">>, 1, 1, False)
			game_current.add_output_message (message_action)
			game_current.update_to_net()
		end

	action_moneylender ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.moneylender
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_remodel ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.remodel
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_smithy ()
			-- Get 3 cards from the deck
			-- Send the 3 cards on hand obtained
			-- Sends the new player's hand
			-- updates the state of the game
			-- reports that the card played was resolved
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.smithy
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			message, message_resolved: G5_MESSAGE_ACTION
			message_update: G5_MESSAGE_UPDATE
		do
				-- execution
			game_current.player_current.adds_cards_hand (game_current.player_current.draw_card_deck (3))
			game_current.emptied_output_messages
			message.make ("SERVER", <<game_current.player_current.name>>, "put_in_hand", game_current.player_current.get_all_cards_hand, 1, 1, False)
			game_current.add_output_message (message)
			message_update.make ("SERVER", game_current.players_as_string, "update_state", game_current.player_current.get_estate(), Void)
			game_current.add_output_message (message_update)
			message_resolved.make ("SERVER", <<game_current.player_current.name>>, "resolved_card", <<"K18">>, 1, 1, False)
			game_current.add_output_message (message_resolved)
			game_current.update_to_net
		end

	action_spy ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.spy
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	attack_spy ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.attack) and card_current.id = {G5_MACRO_CARDS}.spy
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	attack_thief ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.attack) and card_current.id = {G5_MACRO_CARDS}.thief
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_throne_room ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.throne_room
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_village ()
			-- Gets one card on the hand and two actions
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.village
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action

		local
			a_message, message_resolved: G5_MESSAGE_ACTION
			message_update: G5_MESSAGE_UPDATE
		do
				-- get one card
			game_current.player_current.adds_cards_hand (game_current.player_current.draw_card_deck (1))
				-- get two actions
			game_current.player_current.add_action (2)
				-- update game
			game_current.emptied_output_messages
			a_message.make ("SERVER", <<game_current.player_current.name>>, "put_in_hand", game_current.player_current.get_all_cards_hand, 1, 1, False)
			game_current.add_output_message (a_message)
			message_update.make ("SERVER", game_current.players_as_string, "update_state", game_current.player_current.get_estate(), Void)
			game_current.add_output_message (message_update)
			message_resolved.make ("SERVER", <<game_current.player_current.name>>, "resolved_card", <<"K18">>, 1, 1, False)
			game_current.add_output_message (message_resolved)
			game_current.update_to_net
		end

	action_witch ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.witch
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	attack_witch ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.attack) and card_current.id = {G5_MACRO_CARDS}.witch
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_woodcutter ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.woodcutter
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_workshop ()
			-- Gain a card costing up a 4 coins.
			-- The card you get placed in the discard pile. You must be a card of supply.
			-- You may not use coins Treasures or previous Actions (like the Market) to
			-- increase the cost of the card you get.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.workshop
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			inet: G5_INET_TO_LOGIC
			pile_cards: G5_PILE_CARD_SUPPLY
			id_card_taken: STRING
			message: G5_MESSAGE_ACTION
			cards_posible: ARRAY [STRING]
			targets: ARRAY [STRING]
			i: INTEGER
			j: INTEGER
			supply: G5_SUPPLY
		do

			supply := game_current.supply
			j := 1
			-- possible choices of cards supply
			from
				i := 1
			until
				i > 10
			loop
				pile_cards := supply.sub_supply_kingdom.item (i)
				if pile_cards.get_instance.cost <= 4 then
					cards_posible.put (pile_cards.get_instance.id, j)
					j := j + 1
				end
			end
				-- targets
			create targets.make (1, game_current.players.count)
			from
				i := 1
			until
				i > game_current.players.count
			loop
				targets.put (game_current.players.item (i).name, i)
			end
			create message.make (game_current.player_current.name, targets, "selected_from_supply", cards_posible, 1, 1, false)
			game_current.add_output_message (message)
			inet := game_current.inet
			game_current.update_to_net
				-- select a card of supply
			message ?= game_current.input_messages.first

			pile_cards := game_current.supply.search_card (message.involved_cards.item (1))
			if pile_cards.get_instance.cost < 5 then
				pile_cards.decrement
				game_current.player_current.discard_pile.put (pile_cards.get_instance)
			end
			-- enviar un mensaje a la net para que se modifique la tabla
		end

	curse_action ()
			-- This feature should be used after the end of the game.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.type_curse) and card_current.id = {G5_MACRO_CARDS}.curse
			estate_of_game: game_current.is_finished
		do
			game_current.player_current.add_point_victory (-1)
		end

	-- Remplaza lo de abajo por esto:
	-- add_point_victory (amount: INTEGER)
	-- card_current no se usa

	add_point_victory ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.victory) and (card_current.id = {G5_MACRO_CARDS}.estate xor card_current.id = {G5_MACRO_CARDS}.duchy xor card_current.id = {G5_MACRO_CARDS}.province xor card_current.id = {G5_MACRO_CARDS}.garden)
		do
			if card_current.id = {G5_MACRO_CARDS}.estate then
				game_current.player_current.add_point_victory (1)
			end
			if card_current.id = {G5_MACRO_CARDS}.duchy then
				game_current.player_current.add_point_victory (3)
			end
			if card_current.id = {G5_MACRO_CARDS}.province then
				game_current.player_current.add_point_victory (6)
			end
			if card_current.id = {G5_MACRO_CARDS}.garden then
				game_current.player_current.add_point_victory (game_current.player_current.deck.count // 10)
			end
		end

	-- Remplaza lo de abajo por esto:
	-- add_value_tresure (amount: INTEGER)
	-- card_current no se usa

	get_value_treasure ()
			-- This feature adds the value of the current card to the currency that the player can spend in your Buy phase.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.treasure) and (card_current.id = {G5_MACRO_CARDS}.copper xor card_current.id = {G5_MACRO_CARDS}.silver xor card_current.id = {G5_MACRO_CARDS}.gold)
		do
			if card_current.id = {G5_MACRO_CARDS}.copper then
				game_current.player_current.add_coin (1)
			end
			if card_current.id = {G5_MACRO_CARDS}.silver then
				game_current.player_current.add_coin (2)
			end
			if card_current.id = {G5_MACRO_CARDS}.gold then
				game_current.player_current.add_coin (3)
			end
		end

feature -- Access

	set_game_current (set_game: G5_TABLE)
		require
			game_not_empty: set_game /= void
		do
			game_current := set_game
		ensure
			game_current = set_game
		end

	set_card_current (set_card: G5_CARD)
		require
			card_not_null: set_card /= void
		do
			card_current := set_card
		ensure
			card_current = set_card
		end

feature -- Auxiliary

	get_cards_draw(cards_draw: LINKED_LIST [G5_CARD]): ARRAY [STRING]
		-- Obtiene las cartas robadas como un arreglo de String
		require
		local
			i: INTEGER
		do
			from
				cards_draw.start
				result.make_empty
				i := 0
			until
				cards_draw.index > cards_draw.count
			loop
				result.put (cards_draw.item.id, i)
				i := i + 1
				cards_draw.forth
			end
		ensure
		end

invariant -- invariants of class g5_receiver_command_card
	game_current /= void

end -- End class g5_receiver_command_card
