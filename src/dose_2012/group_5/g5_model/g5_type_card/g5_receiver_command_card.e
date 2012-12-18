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

	message_action: G5_MESSAGE_ACTION

	message_update: G5_MESSAGE_UPDATE

feature -- Implementations
	-- Each of these feature implements the behavior of card,
	-- indicating the type (action, attack, reaction) and the name of the card.

	action_adventurer ()
			--mostrar cartas de tu mazo hasta que muestres 2 cartas de Tesoro. Ponga las cartas de Tesoro en tu mano y descarta las otras cartas mostradas.
		require
			date_of_card: card_current /= void and card_current.type = {G5_MACRO_CARDS}.action and card_current.id = {G5_MACRO_CARDS}.adventurer
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			reveals_card: ARRAY [STRING]
			number_card_treasure, sum_cards, i: INTEGER
		do
				-- Message: Select cards from the hand
			game_current.emptied_output_messages
			sum_cards := (game_current.player_current.deck.count + game_current.player_current.discard_pile.count)
			create reveals_card.make_empty
			number_card_treasure := 0
			from
				i := 0
			until
				number_card_treasure.is_equal (2) or i >= sum_cards
			loop
				if game_current.player_current.deck.is_empty then -- Transfer the discard pile to the deck
					game_current.player_current.translate_discard_pile_to_deck
				end
				if game_current.player_current.deck.item.type.has_substring ("treasure") then
					game_current.player_current.hand_current.force (game_current.player_current.deck.item)
					reveals_card.grow (reveals_card.count + 1)
					reveals_card.put (game_current.player_current.deck.item.id, reveals_card.count - 1)
					game_current.player_current.deck.remove
				end
				i := i + 1
			end
			create message_action.make (game_current.player_current.name, game_current.players_as_string, "reveal", reveals_card, 0, reveals_card.count, False)
				--Crea el mensaje con las cartas a revelar
			game_current.add_output_message (message_action)
				--Retorna las cartas que no son Treasure a la pila deck
			from
				i := 1
			until
				i > reveals_card.count
			loop
				if not (reveals_card.item (i).has_substring ("T")) then
					game_current.player_current.deck.put (game_current.decode (reveals_card.item (i)))
				end
			end
				--prepara mensaje de actualizacion y los envia a la NET
			game_current.send_hand_players
			game_current.send_put_on_top_discard
			game_current.update_to_net
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

	action_cellar ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.cellar
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			cards: ARRAY [STRING]
			count_card_selected: INTEGER
			i: INTEGER
			card: G5_CARD
			cards_draw: LINKED_LIST [G5_CARD]
		do
				-- Message: Select cards from the hand
			game_current.emptied_output_messages
			game_current.emptied_input_messages
			message_action.make ("HOST", <<game_current.player_current.name>>, "select_from_hand", game_current.player_current.get_all_cards_hand (), 0, game_current.player_current.hand_current.count, False)
			game_current.add_output_message (message_action)
			game_current.update_to_net ()

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
			game_current.player_current.adds_cards_hand (game_current.player_current.draw_card_deck (count_card_selected))

				-- Add action
			game_current.player_current.add_action (1)

				-- Message update: player_estate, discard_pile,
			game_current.emptied_output_messages
			message_action.make ("HOST", <<game_current.player_current.name>>, "put_in_hand", game_current.player_current.get_all_cards_hand, 1, 1, False)
			game_current.add_output_message (message_action)
			message_action.make ("HOST", <<"ALL">>, "put_on_top_discard", <<card.id>>, 1, 1, False)
			game_current.add_output_message (message_action)
			message_update.make ("HOST", <<"ALL">>, "update_state", game_current.player_current.get_estate (), Void)
			game_current.add_output_message (message_update)
			message_action.make ("HOST", <<game_current.player_current.name>>, "resolved_card", <<"K3">>, 1, 1, False)
			game_current.add_output_message (message_action)
			game_current.update_to_net
		end

	action_chancellor ()
		--	You must resolve the Chancellor (decide whether or
		--	not to discard your Deck by flipping it into your Discard pile)
		--	before doing other things on your turn, like deciding what to
		--	buy or playing another Action card. You may not look through
		--	your Deck as you discard it.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.chancellor
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			in_mesage:G5_MESSAGE_TEXTUAL
			id_deck:ARRAY[STRING]
			i:INTEGER
			card:G5_CARD
		do
			game_current.player_current.add_action (-1)
			game_current.player_current.add_coin (2)
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,void))
			game_current.add_output_message (create {G5_MESSAGE_TEXTUAL}.make({G5_MACRO_CARDS}.server,<<game_current.player_current.name>>,"discard_or_not_deck",""))
			game_current.update_to_net
			game_current.input_messages.i_th (1).copy(in_mesage)
			game_current.emptied_input_messages
			if in_mesage.textual_message.is_equal ("yes") then
				create id_deck.make (1,game_current.player_current.deck.count)
				from
					i:= 1
				until
					i>game_current.player_current.deck.count
					and game_current.player_current.deck.after
				loop
					id_deck.put (game_current.player_current.deck.item.id, i)
					card:= game_current.player_current.deck.item
					game_current.player_current.deck.remove
					game_current.player_current.discard_pile.put (card)
					i:=i+1
				end
--				game_current.player_current.translate_deck_to_discard_pile
				game_current.emptied_output_messages
				game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,void))
				game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,game_current.players_as_string,"put_on_top_discard",id_deck,1,i-1,false))
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,<<game_current.player_current.name>>,"resolved_card",<<{G5_MACRO_CARDS}.chancellor>>,1,1,false))
			game_current.update_to_net
		end

	action_chapel ()
		--	You can't trash the Chapel itself since it isn't in your
		--	hand when you resolve it. You could trash a different Chapel card
		--	if that card were in your hand.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.chapel
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			in_message:G5_MESSAGE_ACTION
			i:INTEGER
			card:G5_CARD
		do
			game_current.player_current.add_action (-1)
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,void))
			if game_current.player_current.hand_current.count.is_greater (3) then
				game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,<<{G5_MACRO_CARDS}.server>>,"select_from_hand",game_current.player_current.get_all_cards_hand,1,4,false))
				game_current.update_to_net
				game_current.input_messages.item.copy(in_message)
				from
					i:=1
				until
					i>4
				loop
					card:= game_current.player_current.get_card_hand (in_message.involved_cards.item (i))
					game_current.player_current.hand_current.prune (card)
					game_current.player_current.discard_pile.put (card)
					i:=i+1
				end
				game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,game_current.players_as_string,"cards_in_trash",in_message.involved_cards,in_message.min_amount,in_message.max_amount,false))
				game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,void))
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,<<game_current.player_current.name>>,"resolved_card",<<{G5_MACRO_CARDS}.chapel>>,1,1,false))
			game_current.update_to_net
		end

	action_council_room ()
		--	The other players must draw a card whether
		--	they want to or not. All players should shuffle as necessary
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.council_room
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			cards:LINKED_LIST[G5_CARD]
			id_cards:ARRAY[STRING]
			i,k:INTEGER
		do
			game_current.player_current.add_buy (1)
			from
				i:=1
			until
				i>game_current.amount_player
			loop
				if game_current.players.item (i).name.is_equal (game_current.player_current.name)	then
					k:=4
					if game_current.players.item (i).deck.count.is_less (k) then
						k:= k-game_current.players.item (i).deck.count
						cards:= game_current.player_current.draw_card_deck (game_current.players.item (i).deck.count)
						game_current.player_current.adds_cards_hand (cards)
						game_current.players.item (i).translate_discard_pile_to_deck
						game_current.players.item (i).deck.shuffle
					end
					cards:= game_current.player_current.draw_card_deck (k)
					game_current.player_current.adds_cards_hand (cards)
					create id_cards.make (1, 4)
					id_cards.put (cards.i_th (1).id, 1)
					id_cards.put (cards.i_th (2).id, 2)
					id_cards.put (cards.i_th (3).id, 3)
					id_cards.put (cards.i_th (4).id, 4)
					game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,<<game_current.players.item (i).name>>,"put_in_hand",id_cards,1,4,false))
				else
					if game_current.players.item (i).deck.is_empty then
						game_current.players.item (i).translate_discard_pile_to_deck
						game_current.players.item (i).deck.shuffle
					end
					cards:= game_current.players.item (i).draw_card_deck (1)
					game_current.players.item (i).adds_cards_hand (cards)
					id_cards:= <<cards.i_th (1).id>>
					game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,<<game_current.players.item (i).name>>,"put_in_hand",id_cards,1,1,false))
				end
				game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.players.item (i).name,game_current.players_as_string,"update_state",game_current.players.item (i).get_estate,void))
				i:=i+1
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,<<game_current.player_current.name>>,"resolved_card",<<{G5_MACRO_CARDS}.council_room>>,1,1,false))
			game_current.update_to_net
		end

	action_feast ()
		--		The gained card goes into your Discard pile. It has to be a
		--	card from the Supply. You cannot use coins from Treasures or
		--	previous Actions (like the Market) to increase the cost of the
		--	card that you gain. If you use Throne Room on Feast, you will
		--	gain two cards, even though you can only trash Feast once.
		--	Gaining the card isn't contingent on trashing Feast; they're just
		--	two things that the card tries to make you do.

		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.feast
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			cards_trash:LINKED_STACK [G5_CARD]
			id_cards_trash:ARRAY[STRING]
			i,k:INTEGER
			in_message:G5_MESSAGE_ACTION
			pile_card:G5_PILE_CARD_SUPPLY
		do
			game_current.player_current.add_action (-1)
			k:=	game_current.player_current.discard_pile.count
			game_current.player_current.discard_pile.copy (cards_trash)
			create id_cards_trash.make (1, k)
			from i:=1
			until i>k
			loop
				id_cards_trash.put (cards_trash.item.id, i)
				cards_trash.remove
				i:=i+1
			end
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,void))
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,game_current.players_as_string,"cards_in_trash",id_cards_trash,1,k,false))
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make({G5_MACRO_CARDS}.server,<<game_current.player_current.name>>,"select_from_supply",game_current.supply.get_cards_by_cost (5),1,1,false))
			game_current.update_to_net
			game_current.input_messages.i_th (1).copy(in_message)
			if in_message.action.is_equal ("selected_from_supply") then
				pile_card:= game_current.supply.search_card (in_message.involved_cards.item (1))
				pile_card.decrement
				game_current.player_current.discard_pile.put (pile_card.card)
				game_current.emptied_output_messages
				game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_supply",void,game_current.supply.get_info_supply))
				game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,game_current.players_as_string,"put_on_top_discard",<<in_message.involved_cards.item (1)>>,1,1,false))
				game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,<<game_current.player_current.name>>,"resolved_card",<<{G5_MACRO_CARDS}.feast>>,1,1,false))
				game_current.update_to_net
			end
		end

	action_festival ()
			--	If you are playing multiple Festivals, keep a careful
			--	count of your Actions. Say how many you have left out loud; this
			--	trick works every time (i.e. "I'm playing the Festival and now
			--	have two Actions remaining. I play a Market and have two
			--	Actions remaining. I play another Festival and now have three
			--	Actions remaining....").
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.festival
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
				-- spend an action to play this festival but add 2 actions
			game_current.player_current.add_action (1)
			game_current.player_current.add_buy (1)
			game_current.player_current.add_coin (2)
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, void))
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.festival>>, 1, 1, false))
			game_current.update_to_net
		end

	action_laboratory ()
		--	Draw two cards. You may play another Action card during your Action phase.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.laboratory
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			cards: LINKED_LIST [G5_CARD]
			id_cards: ARRAY [STRING]
		do
				-- no action other than spending
			if game_current.player_current.deck.count.is_equal (1) then
				cards := game_current.player_current.draw_card_deck (1)
				game_current.player_current.deck.remove
				game_current.player_current.translate_discard_pile_to_deck
				game_current.player_current.deck.shuffle
				cards.put (game_current.player_current.deck.item)
				game_current.player_current.deck.remove
			else
				if game_current.player_current.deck.count.is_equal (0) then
					game_current.player_current.translate_discard_pile_to_deck
					game_current.player_current.deck.shuffle
				end
				cards := game_current.player_current.draw_card_deck (2)
				game_current.player_current.deck.remove
				game_current.player_current.deck.remove
			end
			game_current.player_current.adds_cards_hand (cards)
			create id_cards.make (1, 2)
			id_cards.put (cards.item.id, 1)
			cards.remove
			id_cards.put (cards.item.id, 2)
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, void))
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make ({G5_MACRO_CARDS}.server, <<game_current.player_current.name>>, "put_on_hand", id_cards, 1, 2, false))
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.laboratory>>, 1, 1, false))
			game_current.update_to_net
		end

	action_library ()
		--	If you have to shuffle in the middle, the set-aside cards
		--	are not shuffled into the new Deck. They will be discarded when
		--	you have finished drawing cards. If you run out of cards even
		--	after shuffling, you just get however many there were. You are
		--	not obligated to set aside Actions – you just have the option to
		--	do so. If you have 7 or more cards in hand after you play the
		--	Library, you don't draw any cards
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.library
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			cards:LINKED_LIST[G5_CARD]
			i,k:INTEGER
			in_message:G5_MESSAGE_ACTION
		do
			game_current.player_current.add_action (-1)
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,void))
			if game_current.player_current.hand_current.count < 7 then
				from i:=1
				until i>k
				loop
					if game_current.player_current.deck.is_empty then
						game_current.player_current.translate_discard_pile_to_deck
						game_current.player_current.deck.shuffle
					end
					if not game_current.player_current.deck.is_empty then
						game_current.add_output_message (create {G5_MESSAGE_ACTION}.make({G5_MACRO_CARDS}.server,<<game_current.player_current.name>>,"keep_or_not_card",<<game_current.player_current.deck.item.id>>,1,1,false))
						game_current.update_to_net
						game_current.input_messages.i_th (1).copy(in_message)
						if in_message.action.is_equal ("answer_of_keeping") and not in_message.involved_cards.is_empty then-- conserva la carta
							cards:= game_current.player_current.draw_card_deck (1)
							game_current.player_current.adds_cards_hand (cards)
							i:=i+1
							game_current.add_output_message (create {G5_MESSAGE_ACTION}.make({G5_MACRO_CARDS}.server,<<game_current.player_current.name>>,"put_in_hand",<<cards.i_th (1).id>>,1,1,false))
							game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,void))
						else -- descarta la carta
							cards:= game_current.player_current.draw_card_deck (1)
							game_current.player_current.discard_pile.put (cards.i_th (1))
							game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,game_current.players_as_string,"put_on_top_discard",<<cards.i_th (1).id>>,1,1,false))
						end
						game_current.update_to_net
					else
						i:=i+1
					end
				end
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.library>>, 1, 1, false))
			game_current.update_to_net
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
				-- game_current.player_current.add_action (1)
			game_current.player_current.add_buy (1)
			game_current.player_current.add_coin (1)
				-- take a card
			if game_current.player_current.deck.is_empty then
				game_current.player_current.translate_discard_pile_to_deck
				game_current.player_current.deck.shuffle
			end
			cards := game_current.player_current.draw_card_deck (1)
			game_current.player_current.deck.remove
			game_current.player_current.adds_cards_hand (cards)
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, void))
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make ({G5_MACRO_CARDS}.server, <<game_current.player_current.name>>, "put_on_hand", <<cards.item.id>>, 1, 1, false))
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.market>>, 1, 1, false))
			game_current.update_to_net
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
			exist_treasure_cards: BOOLEAN
			targets: ARRAY [STRING]
		do
			from
				game_current.player_current.hand_current.start
			until
				game_current.player_current.hand_current.after
			loop
				exist_treasure_cards := exist_treasure_cards or game_current.player_current.hand_current.item.type.has_substring ({G5_MACRO_CARDS}.treasure)
				game_current.player_current.hand_current.forth
			end
				-- message to send
			message := create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, game_current.supply.get_info_supply)
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
				message := create {G5_MESSAGE_ACTION}.make ({G5_MACRO_CARDS}.server, game_current.players_as_string, "selected_from_hand", cards_posible, 1, 1, false)
				game_current.add_output_message (message)
				game_current.update_to_net ()
					-- the net responds with the selected card involved_cards to change
					-- send message to net
				game_current.emptied_output_messages
				message := create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, game_current.supply.get_info_supply)
				game_current.add_output_message (message)
					-- cards trash.
				i := 1
				from
					game_current.pile_trash.start
				until
					game_current.pile_trash.after
				loop
					card := game_current.pile_trash.item
					id_cards.put (card.id, i)
					game_current.pile_trash.forth
					i := i + 1
				end
				game_current.input_messages.start
				in_message ?= game_current.input_messages.first
				id_cards.put (in_message.involved_cards.item (1), i)
				message := create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, game_current.players_as_string, "cards_in_trash", id_cards, 0, 0, false)
				game_current.add_output_message (message)
					-- set posibles treasure cards to choose
					-- selecciono del supply las cartas tesoro posibles.
				create id_cards.make_empty
				if in_message.involved_cards.item (1).is_equal ({G5_MACRO_CARDS}.copper) then
					id_cards.put ({G5_MACRO_CARDS}.copper, 1)
					id_cards.put ({G5_MACRO_CARDS}.silver, 2)
				else
					id_cards.put ({G5_MACRO_CARDS}.copper, 1)
					id_cards.put ({G5_MACRO_CARDS}.silver, 2)
					id_cards.put ({G5_MACRO_CARDS}.gold, 3)
				end
				message := create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, game_current.players_as_string, "select_from_supply", id_cards, 1, 1, false)
				game_current.add_output_message (message)
				game_current.update_to_net
					-- recibo de la net la carta tesoro.
				in_message ?= game_current.input_messages.first
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
				message := create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, game_current.supply.get_info_supply)
				game_current.add_output_message (message)
				message := create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_supply", game_current.player_current.get_estate, game_current.supply.get_info_supply)
				game_current.add_output_message (message)
				create targets.make (1, 1)
				targets.put (game_current.player_current.name, 1)
				message := create {G5_MESSAGE_ACTION}.make ({G5_MACRO_CARDS}.server, targets, "put_in_hand", <<in_message.involved_cards.item (1)>>, 1, 1, false)
				game_current.add_output_message (message)
			else
					-- el jugador no tenia ninguna carta tesoro
				game_current.player_current.add_action (-1)
				message := create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, game_current.supply.get_info_supply)
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.mine>>, 1, 1, false))
			game_current.update_to_net
		end -- end feature action_mine

	action_moat ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.moat
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
			game_current.player_current.adds_cards_hand (game_current.player_current.draw_card_deck (2))
			game_current.emptied_output_messages
			message_action.make ("HOST", <<game_current.player_current.name>>, "put_ind_hand", game_current.player_current.get_all_cards_hand, 1, 1, False)
			game_current.add_output_message (message_action)
			message_update.make ("HOST", <<"ALL">>, "update_state", game_current.player_current.get_estate, Void)
			game_current.add_output_message (message_action)
			message_action.make ("HOST", <<game_current.player_current.name>>, "resolved_card", <<"K15">>, 1, 1, False)
			game_current.add_output_message (message_action)
			game_current.update_to_net ()
		end

	reaction_moat ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.reaction) and card_current.id = {G5_MACRO_CARDS}.moat
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
			game_current.emptied_output_messages
			message_action.make (game_current.player_current.name, <<"ALL">>, "reveal", <<"K15">>, 1, 1, False)
			game_current.add_output_message (message_action)
			game_current.update_to_net ()
		end

	action_moneylender ()
			--	If you do not have a Copper in your hand to
			--	trash, you don't get the +3 coins to spend in the Buy phase.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.moneylender
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			card: G5_CARD
			copper_card: INTEGER
		do
			copper_card := 0
			from
				game_current.player_current.hand_current.start
			until
				game_current.player_current.hand_current.after
			loop
				if game_current.player_current.hand_current.item.id.is_equal ({G5_MACRO_CARDS}.copper) then
					copper_card := game_current.player_current.hand_current.index
				end
				game_current.player_current.hand_current.forth
			end
			game_current.player_current.add_action (-1)
			game_current.emptied_output_messages
			if not copper_card.is_equal (0) then
					-- cambio de estado
					-- descarta una carta cobre
					-- suma 3  monedas en la fase de compra.
				game_current.player_current.add_coin (3)
				card := game_current.player_current.hand_current.i_th (copper_card)
				game_current.player_current.hand_current.go_i_th (copper_card)
				game_current.player_current.hand_current.remove
				game_current.player_current.discard_pile.put (card)
				game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, void))
				game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, game_current.players_as_string, "cards_in_trash", <<{G5_MACRO_CARDS}.copper>>, 1, 1, false))
			else
				game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, void))
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.moneylender>>, 1, 1, false))
			game_current.update_to_net
		end

	action_remodel ()
			--	You cannot trash the Remodel as it isn't in your hand
			--	when you resolve it (you can trash a different Remodel card
			--	from your hand). If you do not have a card to trash, you cannot
			--	gain a card from the Remodel. The gained card goes in your
			--	Discard pile. You can only gain cards from the Supply. The gained
			--	card need not cost exactly 2 coins more than the trashed card; it
			--	can cost that much or any amount less. You cannot use coins
			--	from Treasures or previous Actions (like the Market) to increase
			--	the cost of the card you gain. You can trash a card to gain a copy
			--	of the same card.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.remodel
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			id_cards: ARRAY [STRING]
			k: INTEGER
			in_message: G5_MESSAGE_ACTION
			card: G5_CARD
			cost_card: INTEGER
			pile_card: G5_PILE_CARD_SUPPLY
		do
			game_current.player_current.add_action (-1)
			game_current.emptied_output_messages
			if not game_current.player_current.hand_current.is_empty then
				game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, void))
				create id_cards.make (1, game_current.player_current.hand_current.count)
				from
					k := 1
					game_current.player_current.hand_current.start
				until
					k > game_current.player_current.hand_current.count and game_current.player_current.hand_current.after
				loop
					id_cards.put (game_current.player_current.hand_current.item.id, k)
					game_current.player_current.hand_current.forth
					k := k + 1
				end
				game_current.add_output_message (create {G5_MESSAGE_ACTION}.make ({G5_MACRO_CARDS}.server, game_current.players_as_string, "select_from_hand", id_cards, 1, 1, false))
				game_current.update_to_net
				game_current.input_messages.item.copy (in_message)
				if in_message.action.is_equal ("selected_from_hand") then
					card := game_current.player_current.get_card_hand (in_message.involved_cards.item (1))
					game_current.player_current.hand_current.prune (card) -- remove selected card
					game_current.player_current.discard_pile.put (card)
					cost_card := card.cost + 2
					game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, void))
					game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, game_current.players_as_string, "cards_in_trash", <<card.id>>, 1, 1, false))
					game_current.add_output_message (create {G5_MESSAGE_ACTION}.make ({G5_MACRO_CARDS}.server, <<game_current.player_current.name>>, "select_from_supply", game_current.supply.get_cards_by_cost (cost_card), 1, 1, false))
					game_current.update_to_net
					game_current.input_messages.item.copy (in_message)
					if in_message.action.is_equal ("selected_from_supply") then
						pile_card := game_current.supply.search_card (in_message.involved_cards.item (1))
						pile_card.decrement
						game_current.player_current.discard_pile.put (card)
						game_current.emptied_output_messages
						game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_supply", void, game_current.supply.get_info_supply))
						game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, game_current.players_as_string, "put_on_top_discard ", <<in_message.involved_cards.item (1)>>, 1, 1, false))
					end
				end
			else
				game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, void))
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.remodel>>, 1, 1, false))
			game_current.update_to_net
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
		do
				-- execution
			game_current.player_current.adds_cards_hand (game_current.player_current.draw_card_deck (3))
			game_current.emptied_output_messages
			message.make ("SERVER", <<game_current.player_current.name>>, "put_in_hand", game_current.player_current.get_all_cards_hand, 1, 1, False)
			game_current.add_output_message (message)
			message_update.make ("SERVER", game_current.players_as_string, "update_state", game_current.player_current.get_estate (), Void)
			game_current.add_output_message (message_update)
			message_resolved.make ("SERVER", <<game_current.player_current.name>>, "resolved_card", <<"K18">>, 1, 1, False)
			game_current.add_output_message (message_resolved)
			game_current.update_to_net
		end

	action_spy ()
		--		Spy causes all players, including the one who played it, to
		--	reveal the top card of their Deck. Note that you draw your card
		--	for playing Spy before any cards are revealed. Anyone who does
		--	not have any cards left in their Deck shuffles in order to have
		--	something to reveal. Anyone who still has no cards to reveal
		--	doesn't reveal one. If players care about the order in which
		--	things happen for this, you do yourself first, then each other
		--	player in turn order. Revealed cards that aren't discarded are
		--	returned to the top of their players' Decks.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.spy
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			cards:LINKED_LIST[G5_CARD]
		do
			cards:=game_current.player_current.draw_card_deck (1)
			game_current.player_current.adds_cards_hand (cards)
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make({G5_MACRO_CARDS}.server,<<game_current.player_current.name>>,"put_in_hand",<<cards.i_th (1).id>>,1,1,false))
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.player_current.name,game_current.players_as_string,"update_state",game_current.player_current.get_estate,void))
			game_current.update_to_net
		end

	attack_spy ()
		--		Spy causes all players, including the one who played it, to
		--	reveal the top card of their Deck. Note that you draw your card
		--	for playing Spy before any cards are revealed. Anyone who does
		--	not have any cards left in their Deck shuffles in order to have
		--	something to reveal. Anyone who still has no cards to reveal
		--	doesn't reveal one. If players care about the order in which
		--	things happen for this, you do yourself first, then each other
		--	player in turn order. Revealed cards that aren't discarded are
		--	returned to the top of their players' Decks.

		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.attack) and card_current.id = {G5_MACRO_CARDS}.spy
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			i:INTEGER
			in_message:G5_MESSAGE_ACTION
			cards:LINKED_LIST[G5_CARD]
		do
			from i:=1
			until i>game_current.amount_player
			loop
				game_current.emptied_output_messages
				game_current.add_output_message(create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,game_current.players_as_string,"reveal",<<game_current.players.item(i).deck.item.id>>,1,1,true))
				game_current.add_output_message(create {G5_MESSAGE_ACTION}.make(game_current.player_current.name,<<game_current.player_current.name>>,"keep_or_not_card",<<game_current.players.item(i).deck.item.id>>,1,1,true))
				game_current.update_to_net
				game_current.input_messages.item.copy(in_message)
				if in_message.action.is_equal ("answer_of_keeping") and not in_message.involved_cards.is_empty then-- respuesta si revela
					cards:= game_current.players.item (i).draw_card_deck (1)
					game_current.players.item (i).adds_cards_hand (cards)
					game_current.emptied_output_messages
					game_current.add_output_message (create {G5_MESSAGE_ACTION}.make(game_current.players.item (i).name,game_current.players_as_string,"put_on_top_discard ",<<in_message.involved_cards.item (1)>>,1,1,false))
					game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make(game_current.players.item (i).name,game_current.players_as_string,"update_state",game_current.players.item (i).get_estate,void))
					game_current.update_to_net
				end
				-- fin de action
				i:=i+1
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.spy>>, 1, 1, false))
			game_current.update_to_net
		end

	attack_thief ()
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.attack) and card_current.id = {G5_MACRO_CARDS}.thief
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
		end

	action_throne_room ()
			--		You pick another Action card in your hand, play it, and play it again.
			-- The second use of the Action card doesn't use up any extra Actions you have.
			-- You completely resolve playing the Action the first time before playing it
			-- the second time. If you Throne Room a Throne Room, you play an Action,
			-- doing it twice, and then play another Action and do it twice; you do not
			-- resolve an Action four times. If you Throne Room a card that gives you +1 Action,
			-- such as Market, you will end up with 2 Actions left afterwards, which is tricky,
			-- because if you'd just played Market twice you'd only have 1 Action left afterwards.
			-- Remember to count the number of Actions you have remaining out loud to keep from
			-- getting confused! You cannot play any other Actions in between playing the Throne
			-- Roomed Action twice.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.throne_room
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			cards: ARRAY [STRING]
			k: INTEGER
			in_message: G5_MESSAGE_ACTION
			card: G5_CARD
		do
			game_current.emptied_output_messages
			game_current.player_current.add_action (-1)
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, void))
				-- selecciono la carta accion de la mano del jugador corriente
			create cards.make (1, game_current.player_current.hand_current.count)
			K := 1
			from
				game_current.player_current.hand_current.start
			until
				game_current.player_current.hand_current.after
			loop
				if game_current.player_current.hand_current.item.id.has_substring ({G5_MACRO_CARDS}.action) then
					cards.put (game_current.player_current.hand_current.item.id, k)
					k := k + 1
				end
				game_current.player_current.hand_current.forth
			end
			if k > 1 then
				game_current.add_output_message (create {G5_MESSAGE_ACTION}.make ({G5_MACRO_CARDS}.server, <<game_current.player_current.name>>, "select_from_hand", cards, 1, 1, false))
				game_current.update_to_net
					-- la net me envia la  carta selecionada.
				game_current.output_messages.item.copy (in_message)
				if in_message.action.is_equal ("selected_from_hand") then -- juego la carta 2 veces
					from
						k := 1
					until
						k > 2
					loop
						game_current.player_current.add_action (1)
						game_current.emptied_output_messages
						card := game_current.player_current.get_card_hand (in_message.involved_cards.item (1))
						game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, game_current.players_as_string, "played", <<in_message.involved_cards.item (1)>>, 1, 1, card.type.has_substring ({G5_MACRO_CARDS}.attack)))
						game_current.update_to_net
						card.command1.execute
						if card.type.has_substring ({G5_MACRO_CARDS}.attack) or card.type.has_substring ({G5_MACRO_CARDS}.reaction) then
							card.command2.execute
						end
						game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<{G5_MACRO_CARDS}.server>>, "resolved_card", <<card.id>>, 1, 1, card.type.has_substring ({G5_MACRO_CARDS}.attack)))
						game_current.update_to_net
						k := k + 1
					end
				end
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.throne_room>>, 1, 1, false))
			game_current.update_to_net
		end

	action_village ()
			-- Gets one card on the hand and two actions
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.village
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			a_message, message_resolved: G5_MESSAGE_ACTION
		do
				-- get one card
			game_current.player_current.adds_cards_hand (game_current.player_current.draw_card_deck (1))
				-- get two actions
			game_current.player_current.add_action (2)
				-- update game
			game_current.emptied_output_messages
			a_message.make ("SERVER", <<game_current.player_current.name>>, "put_in_hand", game_current.player_current.get_all_cards_hand, 1, 1, False)
			game_current.add_output_message (a_message)
			message_update.make ("SERVER", game_current.players_as_string, "update_state", game_current.player_current.get_estate (), Void)
			game_current.add_output_message (message_update)
			message_resolved.make ("SERVER", <<game_current.player_current.name>>, "resolved_card", <<"K18">>, 1, 1, False)
			game_current.add_output_message (message_resolved)
			game_current.update_to_net
		end

	action_witch ()
			--If there aren't enough Curses left to go around when
			--you play the Witch, you deal them out in turn order   starting
			--with the player after you. If you play Witch with no Curses
			--remaining, you will still draw 2 cards. A player gaining a Curse
			--puts it face-up into his Discard pile.

		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.witch
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			cards: LINKED_LIST [G5_CARD]
			id_cards: ARRAY [STRING]
		do
				-- obtengo las 2 cartas del maso.
			if game_current.player_current.deck.count.is_equal (1) then -- debo barajar
				cards := game_current.player_current.draw_card_deck (1)
				game_current.player_current.deck.remove
				game_current.player_current.translate_discard_pile_to_deck
				game_current.player_current.deck.shuffle
				cards.put (game_current.player_current.draw_card_deck (1).item)
				game_current.player_current.deck.remove
			else
				if game_current.player_current.deck.count.is_equal (0) then
					game_current.player_current.translate_discard_pile_to_deck
					game_current.player_current.deck.shuffle
				end
				cards := game_current.player_current.draw_card_deck (2)
				game_current.player_current.deck.remove
				game_current.player_current.deck.remove
			end
				-- pongo las 2 cartas del maso en la mano corriente
			game_current.player_current.adds_cards_hand (cards)
			game_current.player_current.add_action (-1)
			create id_cards.make (1, 2)
			id_cards.put (cards.item.id, 1)
			cards.remove
			id_cards.put (cards.item.id, 2)
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make ({G5_MACRO_CARDS}.server, <<game_current.player_current.name>>, "put_in_hand", id_cards, 1, 2, false))
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, game_current.supply.get_info_supply))
			game_current.update_to_net
		end

	attack_witch ()
			--If there aren't enough Curses left to go around when
			--you play the Witch, you deal them out in turn order   starting
			--with the player after you. If you play Witch with no Curses
			--remaining, you will still draw 2 cards. A player gaining a Curse
			--puts it face-up into his Discard pile.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.attack) and card_current.id = {G5_MACRO_CARDS}.witch
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		local
			players: ARRAY [STRING]
			targets: ARRAY [STRING]
			card_curse: G5_PILE_CARD_SUPPLY
			count_curse: INTEGER
			i: INTEGER
			k: INTEGER
		do
			game_current.emptied_output_messages
				--
			card_curse := game_current.supply.sub_supply_curse.item (1)
			if card_curse.amount_available < game_current.amount_player - 1 then
				count_curse := card_curse.amount_available
			else
				count_curse := game_current.amount_player - 1
			end
			from
				i := 1
			until
				i > count_curse
			loop
				card_curse.decrement
				i := i + 1
			end
			K := 1
			create targets.make (1, game_current.amount_player - 1)
			from
				i := 1
			until
				i > game_current.amount_player
			loop
				if not game_current.players.item (i).name.is_equal (game_current.player_current.name) then
					targets.put (game_current.players.item (i).name, k)
					k := k + 1
				end
				i := i + 1
			end
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, targets, "put_on_top_discard", <<{G5_MACRO_CARDS}.curse>>, 1, 1, true))
				-- game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make({G5_MACRO_CARDS}.server,,"update_supply",)
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.witch>>, 1, 1, false))
			game_current.update_to_net
		end

	action_woodcutter ()
			--	During your Buy phase, you add two coins to the
			--total value of the Treasure cards played, and you may buy an
			--additional card from the Supply.
		require
			date_of_card: card_current /= void and card_current.type.has_substring ({G5_MACRO_CARDS}.action) and card_current.id = {G5_MACRO_CARDS}.woodcutter
			state_of_game: game_current.phase_current = {G5_MACRO_CARDS}.phase_action
		do
			game_current.player_current.add_action (-1)
			game_current.player_current.add_buy (1)
			game_current.player_current.add_coin (2)
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make ({G5_MACRO_CARDS}.server, <<game_current.player_current.name>>, "update_state", game_current.player_current.get_estate, void))
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.woodcutter>>, 1, 1, false))
			game_current.update_to_net
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
			pile_cards: G5_PILE_CARD_SUPPLY
			id_card_taken: STRING
			message: G5_MESSAGE_ACTION
			in_message: G5_MESSAGE_ACTION
			cards_posible: ARRAY [STRING]
			i: INTEGER
			j: INTEGER
			supply: G5_SUPPLY
		do
				-- played card
			game_current.emptied_output_messages
			game_current.player_current.add_action (-1)
			supply := game_current.supply
			j := 1
				-- possible choices of cards supply
			from
				i := 1
			until
				i > 10
			loop
				pile_cards := supply.sub_supply_kingdom.item (i)
					--	select the cards of supply that have cost up to 4 and has stock
				if pile_cards.get_instance.cost <= 4 and pile_cards.amount_available > 0 then
					cards_posible.put (pile_cards.get_instance.id, j)
					j := j + 1
				end
			end
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_state", game_current.player_current.get_estate, game_current.supply.get_info_supply))
			create message.make (game_current.player_current.name, game_current.players_as_string, "selected_from_supply", cards_posible, 1, 1, false)
			game_current.add_output_message (message)
			game_current.update_to_net
				-- receives the selected card
			in_message ?= game_current.input_messages.first
			pile_cards := game_current.supply.search_card (in_message.involved_cards.item (1))
			if pile_cards.get_instance.cost < 5 then
				pile_cards.decrement
				game_current.player_current.discard_pile.put (pile_cards.get_instance)
			end
				-- enviar un mensaje a la net para que se modifique la tabla
			game_current.emptied_output_messages
			game_current.add_output_message (create {G5_MESSAGE_UPDATE}.make (game_current.player_current.name, game_current.players_as_string, "update_supply", game_current.player_current.get_estate (), game_current.supply.get_info_supply ()))
				-- agrega la carta a la pila de descartes del jugador
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, game_current.players_as_string, "put_on_top_discard", <<pile_cards.get_instance.id>>, 1, 1, false))
			game_current.add_output_message (create {G5_MESSAGE_ACTION}.make (game_current.player_current.name, <<game_current.player_current.name>>, "resolved_card", <<{G5_MACRO_CARDS}.workshop>>, 1, 1, false))
			game_current.update_to_net
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

	get_cards_draw (cards_draw: LINKED_LIST [G5_CARD]): ARRAY [STRING]
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
