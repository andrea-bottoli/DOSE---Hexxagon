note
	description: "Summary description for {G5_TABLE}."
	author: "Team RioCuarto4"
	date: "$10/11/2012$"
	revision: "$2.0$"

class
	G5_TABLE

inherit

	G5_ITABLE
		redefine
			set_respose
		end

create
	make_game_default, make_game_randomize, make_game_personalized

feature {G5_PLAYER, G5_RECEIVER_COMMAND_CARD} -- comunication from NET

	inet: G5_INET_TO_LOGIC
			-- Reference to the net

	input_messages: LINKED_LIST [G5_MESSAGE]
			-- used for receiving messages

	output_messages: LINKED_LIST [G5_MESSAGE]
			-- used for sending messages

	add_output_message (m: G5_MESSAGE)
			--add a message in list output_message
		do
			output_messages.force (m)
		end

	emptied_input_messages ()
			--delete all element in list input_messages
		do
			input_messages.wipe_out
		ensure
			initialize_input_messages: input_messages.is_empty
		end

	emptied_output_messages ()
			--delete all element in list output_messages
		do
			output_messages.wipe_out
		ensure
			initialize_input_messages: output_messages.is_empty
		end

feature {G5_PLAYER, G5_RECEIVER_COMMAND_CARD, EQA_TEST_SET} -- Report State Current of Game

	index_current: INTEGER
			-- Indicates which player is playing (index of array "players").

	player_current: G5_PLAYER
			-- Indicates date from player is playing
			-- (id_player, name_player, hand, discard_pile, deck).

	phase_current: STRING
			-- Indicates the phase in which the player current is located
			-- (Action, Buy, Clean-up)

	is_finished: BOOLEAN
			-- check if the game is finished
		do
			Result := (supply.amount_piles_exhausted = 3) or (supply.province_exhausted = true)
		ensure
			Result = (supply.amount_piles_exhausted = 3) or (supply.province_exhausted = true)
		end

	awaiting_response: BOOLEAN
			-- am waiting for an answer?

feature {G5_PLAYER, G5_SUPPLY, G5_RECEIVER_COMMAND_CARD, EQA_TEST_SET} -- Report State General of Game

	amount_player: INTEGER
			-- Indicates the maximum number of players possible in the game, (size of array "players")

	players: ARRAY [G5_PLAYER]
			-- Contains the players of the game. Also indicates the order of the players

	supply: G5_SUPPLY
			-- Contains the information of supply complete

	pile_trash: LINKED_LIST [G5_CARD]
			-- Contains the cards eliminated

feature {G5_PLAYER, G5_SUPPLY, G5_RECEIVER_COMMAND_CARD, EQA_TEST_SET} --Attributes private


	receiver: G5_RECEIVER_COMMAND_CARD

	macro: G5_MACRO_CARDS

	active_game: BOOLEAN

	player_temp: G5_PLAYER

	card_temp: G5_CARD

	some_targets: ARRAY [STRING]

	message_g5: G5_MESSAGE

	message_action: G5_MESSAGE_ACTION

	message_textual: G5_MESSAGE_TEXTUAL

	message_thief: G5_MESSAGE_THIEF

	message_update: G5_MESSAGE_UPDATE

	message_end_game: G5_MESSAGE_END_GAME

feature {ANY} -- Initialization for interface G5_ITABLE

	make_game_default (quantity_player: INTEGER; associated_inet_server: G5_INET_TO_LOGIC)
			-- feature is called to initialize the game with cards default settings,
			-- quantity_player parameter indicates the quantity of the players who will play.
			--require
			--	number_player_invalid: quantity_player < 5 and quantity_player > 1
		local
			player: G5_PLAYER
		do
			create macro
			inet := associated_inet_server
			amount_player := quantity_player
			if amount_player.is_equal (2) then
				create supply.init_supply (Current, create_array_kingdom (<<"K3", "K12", "K13", "K14", "K15", "K17", "K18", "K22", "K24", "K25">>), 8, 8, 8, 20)
			end
			if amount_player.is_equal (3) then
				create supply.init_supply (Current, create_array_kingdom (<<"K3", "K12", "K13", "K14", "K15", "K17", "K18", "K22", "K24", "K25">>), 12, 12, 12, 20)
			end
			if amount_player.is_equal (4) then
				create supply.init_supply (Current, create_array_kingdom (<<"K3", "K12", "K13", "K14", "K15", "K17", "K18", "K22", "K24", "K25">>), 12, 12, 12, 30)
			end
				--create player.make (" ", current)
			create players.make_empty
			create pile_trash.make
			index_current := 1
			phase_current := {G5_MACRO_CARDS}.phase_action
			inet.add_server_logic (Current)
				--ensure
				--the game can begin
		end

	make_game_randomize (quantity_player: INTEGER; associated_inet_server: G5_INET_TO_LOGIC)
			-- feature is called to initialize the game with a randomly chosen card settings,
			-- quantity_player parameter indicates the quantity of the players who will play.
			--require
			--	number_player_invalid: quantity_player < 5 and quantity_player > 1
		local
			--			array_kingdom: ARRAY [G5_CARD]
			--			array_id: ARRAY [STRING]
			--card : G5_CARD
		do
			create macro
			inet := associated_inet_server
			amount_player := quantity_player
			if amount_player.is_equal (2) then
				create supply.init_supply (Current, create_array_kingdom (randomize_cards), 8, 8, 8, 20)
			end
			if amount_player.is_equal (3) then
				create supply.init_supply (Current, create_array_kingdom (randomize_cards), 12, 12, 12, 20)
			end
			if amount_player.is_equal (4) then
				create supply.init_supply (Current, create_array_kingdom (randomize_cards), 12, 12, 12, 30)
			end
			create players.make_empty
			create pile_trash.make
			index_current := 1
			phase_current := {G5_MACRO_CARDS}.phase_action
			inet.add_server_logic (Current)
				--ensure
				--the game can begin
		end

	make_game_personalized (quantity_player: INTEGER; cards: ARRAY [STRING]; associated_inet_server: G5_INET_TO_LOGIC)
			-- feature is called to initialize the game with a personalized card settings,
			-- quantity_player parameter indicates the quantity of the players who will play.
			--require
			--	number_player_invalid: quantity_player < 5 and quantity_player > 1
		local
			--array_kingdom : ARRAY [G5_CARD]
			--card : G5_CARD
		do
			create macro
			inet := associated_inet_server
			amount_player := quantity_player
			if amount_player.is_equal (2) then
				create supply.init_supply (Current, create_array_kingdom (cards), 8, 8, 8, 20)
			end
			if amount_player.is_equal (3) then
				create supply.init_supply (Current, create_array_kingdom (cards), 12, 12, 12, 20)
			end
			if amount_player.is_equal (4) then
				create supply.init_supply (Current, create_array_kingdom (cards), 12, 12, 12, 30)
			end
			create players.make_empty
			create pile_trash.make
			index_current := 1
			phase_current := {G5_MACRO_CARDS}.phase_action
			inet.add_server_logic (Current)
				--ensure
				--the game can begin
		end

feature {G5_ITABLE} -- getting

	get_player_names: ARRAY [STRING]
			-- Gets the names of all players in a arra
		do
			result := players_as_string
		end

feature {G5_ITABLE} -- Entries for Net

	set_respose (new_resposes: LINKED_LIST [G5_MESSAGE])
			-- Sets the response when there a new
		local
			i: INTEGER
			id_card: STRING
		do
			create input_messages.make
			create output_messages.make
			input_messages := new_resposes
			if awaiting_response then
				awaiting_response := False
			else
				message_g5 := input_messages.first
				print ("%N Cantidad de mensajes llegados de la NET: ")
				print (new_resposes.count)
				if -- Message: Start Logic
					(not active_game) and (message_g5.action.is_equal ("start_logic"))
				then
					active_game := True
					send_hand_players ()
					send_supply ()
					send_new_turn (player_current.name)
					send_new_phase ()
						--send_put_on_top_discard ()
					show_output_messages ("%N ##### MENSAJES INICIALES #####") --muestra todos los msj antes d enviarlos a la NET
					inet.update (output_messages)
				elseif (active_game) then
					if (message_g5.action.is_equal ("play")) then
						message_action ?= message_g5
						id_card := message_action.involved_cards.item (1)
						card_temp := decode (id_card)
							--falta quitar la carta de la mano y enviarla a la pila de descarte!
						player_current.play_card (card_temp) --ejecuta accion correspondiente a la carta
						send_put_on_top_discard ()
						inet.update (output_messages)
					elseif (message_g5.action.is_equal ("selected_from_supply")) then
						message_action ?= message_g5
						id_card := message_action.involved_cards.item (1)
						card_temp := decode (id_card)
						player_current.discard_pile.put (card_temp)
						send_estate ()
						send_new_phase ()
						send_supply ()
						send_put_on_top_discard ()
						show_output_messages ("%N ##### ACTUALIZACION AL SELECCIONAR UNA CARTA ####") --muestra todos los msj antes d enviarlos a la NET
						inet.update (output_messages)
					elseif (message_g5.action.is_equal ("next_phase")) then
						phase_current := next_phase (phase_current)
						if -- phase buy
							phase_current.is_equal ({G5_MACRO_CARDS}.phase_buy)
						then
							send_supply ()
							send_new_phase ()
							send_estate ()
							send_select_from_supply ()
							send_select_from_supply()
							show_output_messages ("%N ##### MENSAJES NUEVA FASE (BUY) #####") --muestra todos los msj antes d enviarlos a la NET
							inet.update (output_messages)
						else -- phase clean-up
							phase_current := next_phase (phase_current)
							send_new_phase ()
							player_current.cleaning_effect
							send_select_from_hand ()
							send_top_discard_pile ()
							player_current := players [next_player ()]
							send_new_turn (player_current.name)
							phase_current := next_phase (phase_current)
							send_new_phase ()
							show_output_messages ("%N ##### MENSAJES NUEVA FASE (CLEAN-UP) #####") --muestra todos los msj antes d enviarlos a la NET
							inet.update (output_messages)
						end
						inet.update (output_messages)
					elseif (message_g5.action.is_equal ("new_turn")) then
						if is_finished then
							active_game := False
							send_end_game ()
							show_output_messages ("%N ##### MENSAJES FINALIZACION JUEGO #####") --muestra todos los msj antes d enviarlos a la NET
						else
							index_current := next_player
							player_current := get_player_current
							phase_current := macro.phase_action
							send_estate ()
							send_new_turn (player_current.name)
							send_new_phase ()
							show_output_messages ("%N ##### NUEVO TURNO CAMBIO JUGADOR #####") --muestra todos los msj antes d enviarlos a la NET
						end
						inet.update (output_messages)
					elseif (message_g5.action.is_equal ("moat")) then
					end
				end
			end
		end

feature {G5_ITABLE, EQA_TEST_SET} -- Connection-Disconnection for interface G5_ITABLE

	connection (name_player: STRING): BOOLEAN
			-- this feature is used to inform the LOGIC that a player wants to join
			-- in a match (not already started).
			--require
			--player_name_valid: name_player /= Void;
		local
			player_new: G5_PLAYER
		do
				-- It wasn't possible to connect because the name of the player was not valid
			if (exist_player (name_player)) then
				inet.is_valid_name_player (name_player, False)
				Result := True
					-- It wasn't possible to connect because the game has enough players
			else
				if (players.count >= amount_player) then
					inet.is_valid_name_player (name_player, True)
					Result := False
						-- The player was able to connect
				else
					create player_new.make (name_player, Current)
					players.grow (players.count + 1)
					players.put (player_new, players.count)
						--players.force (player_new, count+1)
					index_current := index_current + 1
					inet.is_valid_name_player (name_player, True)
					if index_current.is_equal (amount_player + 1) then
						index_current := 1
						player_current := players [index_current]
						phase_current := macro.phase_action
					end
					Result := True
				end
			end
		end

	disconnect (name_player: STRING): BOOLEAN
			--this feature is used to inform the LOGIC that a player leave the game
			--require
			--player_name_valid: name_player /= Void;
		local
			player_delete: G5_PLAYER
		do
			if exist_player (name_player) then
				player_delete := remove_player (name_player)
				if (player_delete.name.is_equal (player_current.name)) then
					index_current := next_player
					player_current := players [index_current]
				end
				player_delete.scavenging ()
				player_delete.translate_discard_pile_to_deck ()
				pile_trash.append (player_delete.deck)
				amount_player := amount_player - 1
				Result := True
			end
				--ensure
		end

feature {G5_ITABLE} -- Finalization for interface G5_ITABLE

	restart_game (player_name: STRING): BOOLEAN
			-- function that alerts the server that the player id_player want a rematch.
			--require
			--player_name_invalid: player_name /= Void;
		do
			if is_finished then
			end
				--ensure
		end

feature {G5_RECEIVER_COMMAND_CARD, EQA_TEST_SET} -- Game Management Status

	next_player (): INTEGER
			-- Indicates which is the next player who must play
		do
			if (index_current < amount_player) then
				index_current := index_current.plus (1)
			else
				index_current := 1
			end
			Result := index_current
		ensure
			range_out: result > 0 and result <= amount_player
		end

	get_player_current (): G5_PLAYER
			-- Return player current.
		do
			player_current := players.item (index_current)
			Result := player_current
		ensure
		end

	next_phase (phase_name: STRING): STRING
			-- Indicates the next phase of the current
		require
			name_phase_invalid: phase_name /= Void
		do
			if phase_name.is_equal ({G5_MACRO_CARDS}.phase_action) then
				result := {G5_MACRO_CARDS}.phase_buy
			else
				if phase_name.is_equal ({G5_MACRO_CARDS}.phase_buy) then
					result := {G5_MACRO_CARDS}.phase_buy
				else
					result := {G5_MACRO_CARDS}.phase_action
				end
			end
		ensure
			name_phase_return_invalid: Result.is_equal (macro.phase_action) or Result.is_equal (macro.phase_buy) or Result.is_equal (macro.phase_clean_up)
		end

	players_as_string (): ARRAY [STRING]
			--return all name players in the game as array
		local
			ret: ARRAY [STRING]
			i: INTEGER
		do
			create ret.make_empty
			ret.grow (players.count)
			from
				i := 1
			until
				i > players.count ()
			loop
				if players.item (i) /= Void then
					ret.put (players.item (i).name, i)
				end
				i := i + 1
			end
			Result := ret
		ensure
			valid_name_ret: Result.for_all (agent  (name: STRING): BOOLEAN
				do
					Result := not (name.is_empty)
				end)
		end

	decode (card_ID: STRING): G5_CARD
			-- card_ID according to parameter, returns the corresponding card.
		require
			card_ID_invalid: card_ID /= Void
		local
			adventurer: G5_ADVENTURER
			bureaucrat: G5_BUREAUCRAT
			bureaucrat_attack: G5_BUREAUCRAT_ATTACK
			cellar: G5_CELLAR
			chancellor: G5_CHANCELLOR
			chapel: G5_CHAPEL
			council_room: G5_COUNCIL_ROOM
			feast: G5_FEAST
			festival: G5_FESTIVAL
			garden: G5_VICTORY
			laboratory: G5_LABORATORY
			library: G5_LIBRARY
			market: G5_MARKET
			militia: G5_MILITIA
			militia_attack: G5_MILITIA_ATTACK
			mine: G5_MINE
			moat: G5_MOAT
			moat_reaction: G5_MOAT_REACTION
			moneylender: G5_MONEYLENDER
			remodel: G5_REMODEL
			smithy: G5_SMITHY
			spy: G5_SPY
			spy_attack: G5_SPY_ATTACK
			thief: G5_THIEF
			thief_attack: G5_THIEF_ATTACK
			throne_room: G5_THRONE_ROOM
			village: G5_VILLAGE
			witch: G5_WITCH
			witch_attack: G5_WITCH_ATTACK
			woodcutter: G5_WOODCUTTER
			workshop: G5_WORKSHOP
			copper, silver, gold: G5_TREASURE
			estate, duchy, province, curse: G5_VICTORY
		do
			create macro
			create receiver.make (Current)
			if (card_id.is_equal (macro.adventurer)) then
				create Result.make (macro.adventurer, macro.adventurer_cost, macro.adventurer_type)
				create adventurer.make (receiver)
				Result.set_command1 (adventurer)
			elseif (card_id.is_equal (macro.bureaucrat)) then
				create Result.make (macro.bureaucrat, macro.bureaucrat_cost, macro.bureaucrat_type)
				create bureaucrat.make (receiver)
				create bureaucrat_attack.make (receiver)
				Result.set_command1 (bureaucrat)
				Result.set_command1 (bureaucrat_attack)
			elseif (card_id.is_equal (macro.cellar)) then
				create Result.make (macro.cellar, macro.cellar_cost, macro.cellar_type)
				create cellar.make (receiver)
				Result.set_command1 (cellar)
			elseif (card_id.is_equal (macro.chancellor)) then
				create Result.make (macro.chancellor, macro.chancellor_cost, macro.chancellor_type)
				create chancellor.make (receiver)
				Result.set_command1 (chancellor)
			elseif (card_id.is_equal (macro.chapel)) then
				create Result.make (macro.chapel, macro.chapel_cost, macro.chapel_type)
				create chapel.make (receiver)
				Result.set_command1 (chapel)
			elseif (card_id.is_equal (macro.council_room)) then
				create Result.make (macro.council_room, macro.council_room_cost, macro.council_room_type)
				create council_room.make (receiver)
				Result.set_command1 (council_room)
			elseif (card_id.is_equal (macro.feast)) then
				create Result.make (macro.feast, macro.feast_cost, macro.feast_type)
				create feast.make (receiver)
				Result.set_command1 (feast)
			elseif (card_id.is_equal (macro.festival)) then
				create Result.make (macro.festival, macro.festival_cost, macro.festival_type)
				create festival.make (receiver)
				Result.set_command1 (festival)
			elseif (card_id.is_equal (macro.garden)) then
				create Result.make (macro.garden, macro.garden_cost, macro.garden_type)
				create garden.make (receiver)
				Result.set_command1 (garden)
			elseif (card_id.is_equal (macro.laboratory)) then
				create Result.make (macro.laboratory, macro.laboratory_cost, macro.laboratory_type)
				create laboratory.make (receiver)
				Result.set_command1 (laboratory)
			elseif (card_id.is_equal (macro.library)) then
				create Result.make (macro.library, macro.library_cost, macro.library_type)
				create library.make (receiver)
				Result.set_command1 (library)
			elseif (card_id.is_equal (macro.market)) then
				create Result.make (macro.market, macro.market_cost, macro.market_type)
				create market.make (receiver)
				Result.set_command1 (market)
			elseif (card_id.is_equal (macro.militia)) then
				create Result.make (macro.militia, macro.militia_cost, macro.militia_type)
				create militia.make (receiver)
				create militia_attack.make (receiver)
				Result.set_command1 (militia)
				Result.set_command1 (militia_attack)
			elseif (card_id.is_equal (macro.mine)) then
				create Result.make (macro.mine, macro.mine_cost, macro.mine_type)
				create mine.make (receiver)
				Result.set_command1 (mine)
			elseif (card_id.is_equal (macro.moat)) then
				create Result.make (macro.moat, macro.moat_cost, macro.moat_type)
				create moat.make (receiver)
				create moat_reaction.make (receiver)
				Result.set_command1 (moat)
				Result.set_command1 (moat_reaction)
			elseif (card_id.is_equal (macro.moneylender)) then
				create Result.make (macro.moneylender, macro.moneylender_cost, macro.moneylender_type)
				create moneylender.make (receiver)
				Result.set_command1 (moneylender)
			elseif (card_id.is_equal (macro.remodel)) then
				create Result.make (macro.remodel, macro.remodel_cost, macro.remodel_type)
				create remodel.make (receiver)
				Result.set_command1 (remodel)
			elseif (card_id.is_equal (macro.smithy)) then
				create Result.make (macro.smithy, macro.smithy_cost, macro.smithy_type)
				create smithy.make (receiver)
				Result.set_command1 (smithy)
			elseif (card_id.is_equal (macro.spy)) then
				create Result.make (macro.spy, macro.spy_cost, macro.spy_type)
				create spy.make (receiver)
				create spy_attack.make (receiver)
				Result.set_command1 (spy)
				Result.set_command1 (spy_attack)
			elseif (card_id.is_equal (macro.thief)) then
				create Result.make (macro.thief, macro.thief_cost, macro.thief_type)
				create thief.make (receiver)
				create thief_attack.make (receiver)
				Result.set_command1 (thief)
				Result.set_command1 (thief_attack)
			elseif (card_id.is_equal (macro.throne_room)) then
				create Result.make (macro.throne_room, macro.throne_room_cost, macro.throne_room_type)
				create throne_room.make (receiver)
				Result.set_command1 (throne_room)
			elseif (card_id.is_equal (macro.village)) then
				create Result.make (macro.village, macro.village_cost, macro.village_type)
				create village.make (receiver)
				Result.set_command1 (village)
			elseif (card_id.is_equal (macro.witch)) then
				create Result.make (macro.witch, macro.witch_cost, macro.witch_type)
				create witch.make (receiver)
				create witch_attack.make (receiver)
				Result.set_command1 (witch)
				Result.set_command1 (witch_attack)
			elseif (card_id.is_equal (macro.woodcutter)) then
				create Result.make (macro.woodcutter, macro.woodcutter_cost, macro.woodcutter_type)
				create woodcutter.make (receiver)
				Result.set_command1 (woodcutter)
			elseif (card_id.is_equal (macro.workshop)) then
				create Result.make (macro.workshop, macro.workshop_cost, macro.workshop_type)
				create workshop.make (receiver)
				Result.set_command1 (workshop)
					-- Type of Treasure cards
			elseif (card_id.is_equal (macro.copper)) then
				create Result.make (macro.copper, macro.copper_cost, macro.copper_type)
				create copper.make (receiver)
				Result.set_command1 (copper)
			elseif (card_id.is_equal (macro.silver)) then
				create Result.make (macro.silver, macro.silver_cost, macro.silver_type)
				create silver.make (receiver)
				Result.set_command1 (silver)
			elseif (card_id.is_equal (macro.gold)) then
				create Result.make (macro.gold, macro.gold_cost, macro.gold_type)
				create gold.make (receiver)
				Result.set_command1 (gold)
					-- Type of Victory cards
			elseif (card_id.is_equal (macro.estate)) then
				create Result.make (macro.estate, macro.estate_cost, macro.estate_type)
				create estate.make (receiver)
				Result.set_command1 (estate)
			elseif (card_id.is_equal (macro.duchy)) then
				create Result.make (macro.duchy, macro.duchy_cost, macro.duchy_type)
				create duchy.make (receiver)
				Result.set_command1 (duchy)
			elseif (card_id.is_equal (macro.province)) then
				create Result.make (macro.province, macro.province_cost, macro.province_type)
				create province.make (receiver)
				Result.set_command1 (province)
					-- Type of curse cards
			elseif (card_id.is_equal (macro.curse)) then
				create Result.make (macro.curse, macro.curse_cost, macro.curse_type)
				create curse.make (receiver)
				Result.set_command1 (curse)
			end
		ensure
			decode_valid: Result /= Void
		end

	send_militia ()
		require
		local
			i: INTEGER
		do
			create macro
			create some_targets.make_filled (void, 1, amount_player)
			emptied_output_messages ()
			from
				i := 1
			until
				i > players.count ()
			loop
				player_temp := players.item (i)
				create card_temp.make (macro.moat, macro.moat_cost, macro.kingdom)
				if (not player_temp.name.is_equal (player_current.name)) then
					if (player_temp.hand_current.has (card_temp)) then
							--if player have the card "moat" in hand, ask the player if he wants
							-- to defend the attack using "moat"
						some_targets.put (player_temp.name, 1)
						create message_textual.make (macro.server, some_targets, "display", "you are being attacked by militia!; you wants to defend the attack using the card: moat?")
						add_output_message (message_textual)
					else
							--if you have more than three cards should be left alone with three.
						if player_temp.hand_current.count > 3 then
							some_targets.put (player_temp.name, 1)
							create message_textual.make (macro.server, some_targets, "display", "you are being attacked by militia! (must be alone with three cards in hand)")
							add_output_message (message_textual)
						end
					end
				end
				i := i + 1
			end
			inet.update (output_messages)
		ensure
		end

feature {G5_RECEIVER_COMMAND_CARD, EQA_TEST_SET} -- Privates for send messages to NET

	send_hand_players ()
		local
			max, ind: INTEGER
		do
			create macro
			from
				ind := 1
			until
				ind > amount_player
			loop
				create some_targets.make_filled (void, 1, 1)
				some_targets.put (players.item (ind).name, 1)
				max := players.item (ind).get_all_cards_hand.count
				create message_action.make (macro.server, some_targets, "put_in_hand", players.item (ind).get_all_cards_hand, 1, max, False)
				add_output_message (message_action)
				ind := ind + 1
			end
				--show_output_messages
		end

	send_estate ()
		do
			player_current.count_treasures
			create message_update.make (player_current.name, players_as_string, "update_state", player_current.get_estate, Void)
			add_output_message (message_update)
		ensure
		end

	send_supply ()
			--feature for send supply to NET
		do
			some_targets := get_player_names
			create message_update.make (macro.server, some_targets, "update_supply", Void, supply.get_info_supply)
			add_output_message (message_update)
				--print(output_messages)
		ensure
		end

	send_new_turn (name_p: STRING)
		do
			create macro
			some_targets := players_as_string ()
			create message_textual.make (macro.server, some_targets, "new_turn", name_p)
			add_output_message (message_textual)
		ensure
			not_void_server: not macro.server.is_empty
			not_void_targets: not some_targets.is_empty
			not_void_name: not name_p.is_empty
		end

	send_new_phase ()
		do
			some_targets := players_as_string ()
			create message_textual.make (player_current.name, some_targets, "new_phase", phase_current)
			add_output_message (message_textual)
		ensure
			not_void_server: not macro.server.is_empty
			not_void_targets: not some_targets.is_empty
			not_void_phase: not phase_current.is_empty
		end

	send_put_on_top_discard ()
		local
			i: INTEGER
			some_cards: ARRAY [STRING]
		do
			create macro
			from
				i := 1
			until
				i > amount_player
			loop
			end
			create some_targets.make_filled (void, 1, 1)
			some_targets.put (players.item (i).name, 1)
			create some_cards.make_filled (void, 1, 1)
			some_cards.put (players.item (i).discard_pile.item.type, 1)
			create message_action.make (macro.server, some_targets, "put_on_top_discard", some_cards, 1, 1, False)
			add_output_message (message_action)
		end

	send_cards_in_trash ()
		local
			i: INTEGER
		do
			create macro
			from
				i := 1
			until
				i > amount_player
			loop
				create some_targets.make_filled (void, 1, 1)
				some_targets.put (players.item (i).name, 1)
				create message_action.make (macro.server, some_targets, "cards_in_trash", pile_trash_as_string, 1, pile_trash.count, False)
				add_output_message (message_action)
			end
		end

	send_end_game ()
		local
			i: INTEGER
			score_table: HASH_TABLE [INTEGER, STRING]
		do
			create macro
			from
				i := 1
			until
				i > amount_player
			loop
				players.item (i).scavenging
				players.item (i).translate_discard_pile_to_deck
				create some_targets.make_empty
				some_targets.grow (1)
				some_targets.put (players.item (i).name, 1)
				score_table.put (players.item (i).count_victory_points, players.item (i).name)
				create message_end_game.make (macro.server, players_as_string, "end", score_table)
				add_output_message (message_end_game)
				i := i + 1
			end
		end

	send_select_from_hand ()
		do
			create message_action.make ({G5_MACRO_CARDS}.server, <<player_current.name>>, "put_in_hand", player_current.get_all_cards_hand, 1, 2, False)
			add_output_message (message_update)
		end

	send_select_from_supply ()
		do
			create message_action.make ({G5_MACRO_CARDS}.server, <<player_current.name>>, "select_from_supply", supply.get_cards_by_cost (player_current.amount_coin), 0, player_current.amount_buy, False)
			add_output_message (message_update)
		end

	send_top_discard_pile ()
		do
			create message_action.make ({G5_MACRO_CARDS}.server, <<player_current.name>>, "put_on_top_discard", <<player_current.discard_pile.item.id>>, 1, 2, False)
			add_output_message (message_update)
		end

feature {G5_RECEIVER_COMMAND_CARD, EQA_TEST_SET} -- Privates for management class G5_TABLE

	exist_player (name_player: STRING): BOOLEAN
		local
			i: INTEGER
			exist: BOOLEAN
			player_0: ARRAY [STRING]
		do
			create player_0.make_empty
			player_0.grow (amount_player)
			player_0.copy (players_as_string ())
			from
				i := 1
			until
				i > player_0.count
			loop
				if (player_0 [i].is_equal (name_player)) then
					exist := True
					i := player_0.count
				end
				i := i + 1
			end
			Result := exist
		end

	remove_player (name_player: STRING): G5_PLAYER
			-- Return the player remove.

		require
			index_player_valid: (name_player /= Void) and (exist_player (name_player))
		local
			i, j: INTEGER
			player_remove: G5_PLAYER
		do
			from
				i := 1
			until
				i > players.count ()
			loop
				if (name_player.is_equal (players [i].name)) then
					player_remove := players [i]
					from
						j := i
					until
						j > players.count ()
					loop
						j := j + 1
						players [i] := players [j]
					end
					i := players.count + 1
				end
				i := i + 1
			end
			Result := player_remove
		ensure
		end

	pile_trash_as_string (): ARRAY [STRING]
		local
			pile_cards: ARRAY [STRING]
			i: INTEGER
		do
			create pile_cards.make_empty
			pile_cards.grow (pile_trash.count)
			i := 1
			from
				pile_trash.start
			until
				pile_trash.off
			loop
				if pile_trash.item /= Void then
					pile_cards.put (pile_trash.item.type, i)
				end
				i := i + 1
				pile_trash.forth
			end
			Result := pile_cards
		ensure
			valid_name_pile_trash: Result.for_all (agent  (name: STRING): BOOLEAN
				do
					Result := not (name.is_empty)
				end)
		end

	create_array_kingdom (array_cards: ARRAY [STRING]): ARRAY [G5_CARD]
		require
			array_cards_not_void: not array_cards.is_empty
		local
			i: INTEGER
			card_0: G5_CARD
		do
			create Result.make_empty
			Result.grow (10)
			from
				i := 1
			until
				i > 10
			loop
				card_0 := decode (array_cards.item (i))
				if card_0 /= Void then
					Result.put (card_0, i)
				end
				i := i + 1
			end
		end

	randomize_cards (): ARRAY [STRING]
		local
			rand: RANDOM
			time: TIME
			random_num: INTEGER
			array_aux: ARRAY [STRING]
			card_aux: STRING
			i: INTEGER
		do
				-- Transfer stack to array auxiliary
			create Result.make_empty
			Result.grow (10)
			array_aux := <<"K1", "K2", "K3", "K4", "K5", "K6", "K7", "K8", "K9", "K10", "K11", "K12", "K13", "K14", "K15", "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25">>
				-- Random function about array auxiliary
			from
				create rand.make
				create time.make_now_utc
				rand.set_seed (time.milli_second)
				i := 1
			until
				i > array_aux.count
			loop
				random_num := (rand.i_th (i) \\ array_aux.count) + 1
				card_aux := array_aux.item (i)
				array_aux.put (array_aux.item (random_num), i)
				array_aux.put (card_aux, random_num)
				i := i + 1
			end
				-- Transfer array auxiliary to stack
			from
				i := 1
			until
				i > 10
			loop
				Result.put (array_aux.item (i), i)
				i := i + 1
			end
		ensure
		end

	show_output_messages (msj: STRING)
			--para corroborar que los mensajes sean enviados correctamente
		local
			index: INTEGER
		do
			print ("%N " + msj)
			from
				output_messages.start
			until
				output_messages.off
			loop
				print ("%N source : ")
				print (output_messages.item.source)
				if output_messages.item.action.is_equal ("put_in_hand") then
					message_action ?= output_messages.item ()
					print ("%N cards: [ ")
					from
						index := 1
					until
						index > message_action.involved_cards.count
					loop
						print (message_action.involved_cards.item (index))
						print (" ")
						index := index + 1
					end
					print ("]")
				end
				print ("%N target: [ ")
				from
					index := 1
				until
					index > output_messages.item.targets.count
				loop
					print (output_messages.item.targets.item (index))
					print (" ")
					index := index + 1
				end
				print ("]")
				print ("%N  action : ")
				print (output_messages.item.action)
				print ("%N------------")
				output_messages.forth
			end
		end

feature {G5_RECEIVER_COMMAND_CARD} --Feature Access from other Classes

	update_to_net ()
		require
			inet /= void and input_messages /= void
		do
			inet.update (output_messages)
		end

end
