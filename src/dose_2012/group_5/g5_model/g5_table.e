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

feature {G5_PLAYER, G5_RECEIVER_COMMAND_CARD} -- comunication net

	inet: G5_INET_TO_LOGIC
			-- Reference to the net

	input_messages: LINKED_LIST [G5_MESSAGE]
			-- used for receiving messages

	output_messages: LINKED_LIST [G5_MESSAGE]
			-- used for sending messages

	add_output_message (m: G5_MESSAGE)
			--add a message in list output_message
		do
			output_messages.go_i_th (output_messages.count)
			output_messages.put (m)
		end

	emptied_input_messages ()
			--delete all element in list input_messages
		do
			input_messages.wipe_out
		end

	emptied_output_messages ()
			--delete all element in list output_messages
		do
			output_messages.wipe_out
		end

feature {G5_PLAYER, G5_RECEIVER_COMMAND_CARD, EQA_TEST_SET} -- Report states

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

feature {G5_PLAYER, G5_SUPPLY, G5_RECEIVER_COMMAND_CARD, EQA_TEST_SET} -- Measurement

	amount_player: INTEGER
			-- Indicates the maximum number of players possible in the game, (size of array "players")

	players: ARRAY [G5_PLAYER]
			-- Contains the players of the game. Also indicates the order of the players

	supply: G5_SUPPLY
			-- Contains the information of supply complete

	pile_trash: LINKED_LIST [G5_CARD]
			-- Contains the cards eliminated

	receiver: G5_RECEIVER_COMMAND_CARD

	macro: G5_MACRO_CARDS

feature {NONE} --Attributes private

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
			array_kingdom: ARRAY [G5_CARD]
			card: G5_CARD
			cellar: G5_CELLAR
			market: G5_MARKET
			militia: G5_MILITIA
			militia_attack: G5_MILITIA_ATTACK
			mine: G5_MINE
			moat: G5_MOAT
			moat_reaction: G5_MOAT_REACTION
			remodel: G5_REMODEL
			smithy: G5_SMITHY
			village: G5_VILLAGE
			woodcutter: G5_WOODCUTTER
			workshop: G5_WORKSHOP
		do
			create macro
			inet := associated_inet_server
			amount_player := quantity_player
			create players.make_empty
			create array_kingdom.make_empty
			create receiver.make (Current)
			create card.make ({G5_MACRO_CARDS}.cellar, {G5_MACRO_CARDS}.cellar_cost, {G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action)
			create cellar.make(receiver)
			card.set_command1 (cellar)
			array_kingdom.put (card, 1)
			create card.make ({G5_MACRO_CARDS}.market, {G5_MACRO_CARDS}.market_cost, {G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action)
			create market.make (receiver)
			card.set_command1 (market)
			array_kingdom.put (card, 2)
			create card.make ({G5_MACRO_CARDS}.militia, {G5_MACRO_CARDS}.militia_cost, {G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action + " " + {G5_MACRO_CARDS}.attack)
			create militia.make(receiver)
			create militia_attack.make (receiver)
			card.set_command1 (militia)
			card.set_command2 (militia_attack)
			array_kingdom.put (card, 3)
			create card.make ({G5_MACRO_CARDS}.mine,{G5_MACRO_CARDS}.mine_cost, {G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action)
			create mine.make (receiver)
			card.set_command1 (mine)
			array_kingdom.put (card, 4)
			create card.make ({G5_MACRO_CARDS}.moat, {G5_MACRO_CARDS}.moat_cost, {G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action + " " + {G5_MACRO_CARDS}.reaction)
			create moat.make (receiver)
			create moat_reaction.make (receiver)
			card.set_command1 (moat)
			card.set_command2 (moat_reaction)
			array_kingdom.put (card, 5)
			create card.make ({G5_MACRO_CARDS}.remodel,{G5_MACRO_CARDS}.remodel_cost,{G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action)
			create remodel.make (receiver)
			card.set_command1 (remodel)
			array_kingdom.put (card, 6)
			create card.make ({G5_MACRO_CARDS}.smithy, {G5_MACRO_CARDS}.smithy_cost, {G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action)
			create smithy.make (receiver)
			card.set_command1 (smithy)
			array_kingdom.put (card, 7)
			create card.make ({G5_MACRO_CARDS}.village, {G5_MACRO_CARDS}.village_cost, {G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action)
			create village.make (receiver)
			card.set_command1 (village)
			array_kingdom.put (card, 8)
			create card.make ({G5_MACRO_CARDS}.woodcutter, {G5_MACRO_CARDS}.woodcutter_cost, {G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action)
			create woodcutter.make (receiver)
			card.set_command1 (woodcutter)
			array_kingdom.put (card, 9)
			create card.make ({G5_MACRO_CARDS}.workshop, {G5_MACRO_CARDS}.workshop_cost, {G5_MACRO_CARDS}.kingdom + " " + {G5_MACRO_CARDS}.action)
			create workshop.make (receiver)
			card.set_command1 (workshop)
			array_kingdom.put (card, 10)
			if quantity_player.is_equal (2) then
				create supply.init_supply (array_kingdom, 8, 8, 8, 10)
			end
			if quantity_player.is_equal (3) then
				create supply.init_supply (array_kingdom, 12, 12, 12, 20)
			end
			if quantity_player.is_equal (4) then
				create supply.init_supply (array_kingdom, 12, 12, 12, 30)
			end
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
			--array_kingdom : ARRAY [G5_CARD]
			--card : G5_CARD
		do
			create macro
			amount_player := quantity_player
			create players.make_empty
				--create supply.init_supply_randomize (cards_kingdom: ARRAY [G5_CARD])
			create pile_trash.make
			index_current := 1
			phase_current := macro.phase_action
			inet := associated_inet_server
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
			amount_player := quantity_player
			create macro
			create players.make_empty
				--create supply.init_supply_personalized (cards_kingdom: ARRAY [G5_CARD])
			create pile_trash.make
			index_current := 1
			phase_current := macro.phase_action
			inet := associated_inet_server
			inet.add_server_logic (Current)
				--ensure
				--the game can begin
		end

feature {G5_ITABLE} -- getting

	get_player_names: ARRAY [STRING]
			-- Gets the names of all players in a arra
		do
			result := players_as_string ()
		end

feature {G5_ITABLE} -- Entries for Net

	set_respose (new_resposes: LINKED_LIST [G5_MESSAGE])
			-- Sets the response when there a new
		do
			input_messages := new_resposes
			message_g5 := input_messages.first ()
			if (not active_game) and (message_g5.action.is_equal ("start_logic")) then
				active_game := True
					--messages.wipe_out
				send_hand_players ()
				send_new_turn (player_current.name)
				send_new_phase ()
				inet.update (output_messages)
			else
			if (active_game) and (message_g5.action.is_equal ("play")) then
				end
			end
		end

feature {G5_ITABLE} -- Connection-Disconnection for interface G5_ITABLE

	connection (name_player: STRING): BOOLEAN
			-- this feature is used to inform the LOGIC that a player wants to join
			-- in a match (not already started).
			--require
			--player_name_valid: name_player /= Void;
		local
			player_new: G5_PLAYER
		do
			-- It wasn't possible to connect because the name of the player was not valid
			if ((exist_player (name_player))) then
				inet.is_valid_name_player (name_player, False)
				Result := True
			-- It wasn't possible to connect because the game has enough players
			elseif (players.count > amount_player) then
				inet.is_valid_name_player (name_player, True)
				Result := False
			-- The player was able to connect
			else
				create player_new.make (name_player,Current)
				players [index_current] := player_new
				index_current := index_current + 1
				if (players.count = amount_player) then
					index_current := 1
				end
				inet.is_valid_name_player (name_player, True)
				Result := True
			end
				--ensure
		end

	disconnect (name_player: STRING)
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

	get_player_current (index_player: INTEGER): G5_PLAYER
			-- Return player current.
		require
			index_player_valid: (index_player > 0) and (index_player <= amount_player)
		do
			player_current := players.item (index_current)
		ensure
		end

	next_phase (phase_name: STRING): STRING
			-- Indicates the next phase of the current
		require
			name_phase_invalid: phase_name /= Void
		local
			c: STRING
		do
			create macro
			c := phase_current
				--inspect c
				--when c.is_equal (macro.phase_action) then
				--phase_current := macro.phase_buy
				--when c.is_equal (macro.phase_buy) then
				--phase_current := macro.phase_clean_up
				--else
				--phase_current := macro.phase_action
				--end
			if c.is_equal (macro.phase_action) then
				phase_current := macro.phase_buy
			else
				if c.is_equal (macro.phase_buy) then
					phase_current := macro.phase_clean_up
				else
					phase_current := macro.phase_action
				end
			end
		ensure
			name_phase_return_invalid: Result = macro.phase_action or Result = macro.phase_buy or Result = macro.phase_clean_up
		end

	players_as_string (): ARRAY [STRING]
			--return all name players in the game as array
		local
			ret: ARRAY [STRING]
			i: INTEGER
		do
			from
				i := 1
			until
				i > players.count()
			loop
				ret.enter (players [i].name, i)
				i := i + 1
			end
			Result := ret
		end

	decode (card_ID: STRING): G5_CARD
			-- card_ID according to parameter, returns the corresponding card.
		require
			card_ID_invalid: card_ID /= Void
		do
		ensure
			Result /= Void
		end

	send_militia ()
		require
		local
			i: INTEGER
		do
			create macro
			some_targets.make_empty ()
			emptied_output_messages ()
			from
				i := 1
			until
				i > players.count ()
			loop
				player_temp := players.item (i)
				card_temp.make (macro.moat, macro.moat_cost, macro.kingdom)
				if (not player_temp.name.is_equal (player_current.name)) then
					if (player_temp.hand_current.has (card_temp)) then
							--if player have the card "moat" in hand, ask the player if he wants
							-- to defend the attack using "moat"
						some_targets.put (player_temp.name, 1)
						message_textual.make (macro.server, some_targets, "moat", "you are being attacked by militia!; you wants to defend the attack using the card: moat?")
						add_output_message (message_textual)
					else
							--if you have more than three cards should be left alone with three.
						if player_temp.hand_current.count > 3 then
							some_targets.put (player_temp.name, 1)
							message_textual.make (macro.server, some_targets, "moat", "you are being attacked by militia! (must be alone with three cards in hand)")
							add_output_message (message_textual)
						end
					end
				end
				i := i + 1
			end
			inet.update (output_messages)
		ensure
		end

feature {NONE} -- functions private for class G5_TABLE

	send_hand_players ()
		local
			j: INTEGER
		do
			create macro
			some_targets.make_empty
			from
				j := 1
			until
				j > players.count
			loop
				player_temp := players.item (j)
				some_targets.put (player_temp.name, 1)
				message_action.make (macro.server, some_targets, "put_in_hand", player_temp.get_all_cards_hand, 0, 0, False)
				add_output_message (message_action)
			end
		end

	send_new_turn (name_p: STRING)
		do
			create macro
			some_targets.make_empty
			some_targets := players_as_string ()
			message_textual.make (macro.server, some_targets, "new_turn", name_p)
			add_output_message (message_textual)
		end

	send_new_phase ()
		do
			create macro
			some_targets.make_empty
			some_targets := players_as_string ()
			message_textual.make (macro.server, some_targets, "new_phase", phase_current)
			add_output_message (message_textual)
		end

	exist_player (name_player: STRING): BOOLEAN
		local
			i: INTEGER
			exist: BOOLEAN
		do
			from
				i := 1
			until
				i > players.count()
			loop
				if not (name_player.is_equal (players [i].name)) then
					exist := True
					i := players.count + 1
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
				i > players.count()
			loop
				if (name_player.is_equal (players [i].name)) then
					player_remove := players [i]
					from
						j := i
					until
						j > players.count()
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

feature {G5_RECEIVER_COMMAND_CARD} -- feature access from other classes

	update_to_net ()
		require
			inet /= void and input_messages /= void
		do
			inet.update (input_messages)
		end

end
