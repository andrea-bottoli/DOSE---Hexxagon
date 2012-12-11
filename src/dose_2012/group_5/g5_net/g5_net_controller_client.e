note
	description: "[
					This class will be the key element on Client Side. In fact it will 
					interpret and generates all the messages processed by the 
					G5_NET_MESSENGER_CLIENT and manage the corresponding GUI on 
					Client Side through APIs invokations.
					]"
	author: "Luca Falsina, Riccardo Binetti"
	date: "29.11.2012"
	revision: "$0.1"

class
	G5_NET_CONTROLLER_CLIENT

inherit
	G5_INET_TO_GUI
	G5_NET_MESSENGER_OBSERVER

create
	make

feature -- Status report

	client_GUI: G5_IGUI_TO_NET
			-- This instance represents the object used to interact with the user. In particular it
			-- will provide user input to this class and it will show all changes in the game state,
			-- notified by the NET CLIENT component.

	client_messenger: G5_NET_MESSENGER_CLIENT
			-- This object will be the effective responsable of dispatching and receiving objects
			-- of the type G5_MESSAGE from Server Side.


feature {ANY} -- Initialization by G5_LAUNCHER

	make(associated_GUI: G5_IGUI_TO_NET)
			-- This constructor instantiates the NET CONTROLLER CLIENT component and in particular it will
			-- grant that associated_GUI and this instance will be connected mutually.

		require
			existent_GUI: associated_GUI /= void
		do
			client_GUI:= associated_GUI
		ensure
			valid_GUI_component: client_GUI = associated_GUI
			client_messenger_is_void: client_messenger = void
		end

feature {G5_NET_MESSENGER_CLIENT} -- Implementation of G5_MESSENGER_OBSERVER deferred feature

	alert_for_incoming_messages()
			-- This feature will be invoked by a G5_NET_MESSENGER_CLIENT object every time than a new message is received.
			-- It will report to the observer that new messages saved in the G5_NET_MESSENGER_CLIENT instance can be retrieved.
		do
			messeges_from_server_were_received := true
		end


feature {G5_NET_CONTROLLER_CLIENT} -- Internal feature

	messeges_from_server_were_received: BOOLEAN
			-- This boolean is set on true by the client messenger whenever a message is received.
			-- Thanks to it the controller knows when messages can be retrieved.

	connection_is_valid: BOOLEAN
			-- This boolean is set on true when a message with action "connect_result" and "accepted"
			-- as an attribute is received from the Server. The client will now be able to take
			-- part in the selected game.

	final_exit_condition: BOOLEAN
			-- This boolean is set on true when a game is ended and not enough players have chosen
			-- to play a rematch.

	check_for_incoming_messages()
			-- This feature will be invokable only if one or more new messages have been just received by
			-- the messenger object.
			-- It will make the observer retrieve the new messages saved in the G5_NET_MESSENGER_CLIENT instance.
		local
			l_messages: LINKED_LIST[G5_MESSAGE]
		do
			if messeges_from_server_were_received then
				l_messages := client_messenger.get_and_clean_message_list

				messeges_from_server_were_received := false

				from l_messages.start
				until l_messages.off
				loop
					cast_message(l_messages.item)
					l_messages.forth
				end

			end
		end

	keep_decision: BOOLEAN
	thief_played: BOOLEAN
	player_that_played_thief: STRING
	thief_counter: INTEGER
	thief_response_map: HASH_TABLE[STRING,STRING]
	action_response: G5_MESSAGE_ACTION
	textual_response: G5_MESSAGE_TEXTUAL
	thief_response: G5_MESSAGE_THIEF
	response_cards: ARRAY[STRING]

	cast_message(a_message: G5_MESSAGE)

		require
		do
			if attached {G5_MESSAGE_UPDATE} a_message as l_message_update then
				execute_update(l_message_update)
            elseif attached {G5_MESSAGE_ACTION} a_message as l_message_action then
				execute_action(l_message_action)
			elseif attached {G5_MESSAGE_TEXTUAL} a_message as l_message_textual then
				execute_textual(l_message_textual)
			elseif attached {G5_MESSAGE_THIEF} a_message as l_message_thief then
				execute_thief(l_message_thief)
			elseif attached {G5_MESSAGE_END_GAME} a_message as l_message_end_game then
				end_game(l_message_end_game)

				--Maybe we should throw an exception
			end

		ensure
		end


	execute_update(a_message_update: G5_MESSAGE_UPDATE)

		require
		do
			if a_message_update.action = "update_state" then
				client_gui.update_state (a_message_update.source, a_message_update.game_state)
			else if a_message_update.action = "update_supply" then
				client_gui.update_supply (a_message_update.supply_state)
			end
			end
		ensure
		end


	execute_action(a_message_action: G5_MESSAGE_ACTION)

		require
		local
			thief_map_cards: STRING
		do
			if a_message_action.action = "resolved_card" then
				client_gui.resolved_card (a_message_action.involved_cards.item (1))
				if a_message_action.involved_cards.item(0) = "K20" then
					thief_played := FALSE
				end
			elseif a_message_action.action = "put_on_top_discard" then
				client_gui.set_top_discard_card (a_message_action.targets.item (1), a_message_action.involved_cards.item (1))
			elseif a_message_action.action = "reveal" then
				if thief_played then
					create thief_map_cards.make_empty
					thief_map_cards.append (a_message_action.involved_cards.item (0))
					thief_map_cards.append (";")
					thief_map_cards.append (a_message_action.involved_cards.item (1))
					thief_response_map.extend (thief_map_cards, a_message_action.source)
					thief_counter := thief_counter - 1
					if (thief_counter = 0) then
						client_gui.pop_up_thief (player_that_played_thief, thief_response_map)

					end
				else
					client_gui.pop_up_reveal (a_message_action.source, a_message_action.involved_cards)
				end
			elseif a_message_action.action = "put_in_hand" then
				client_gui.put_cards ("HAND", a_message_action.involved_cards)
			elseif a_message_action.action = "played" then
				client_gui.put_cards ("PLAY", a_message_action.involved_cards)
				if a_message_action.involved_cards.item(0) = "K20" then
					thief_played := TRUE
					player_that_played_thief := a_message_action.source
					create thief_response_map.make (3)
					thief_counter := number_of_players - 1

				end
			elseif a_message_action.action = "select_from_supply" then
				client_gui.pop_up_selection ("SUPPLY", a_message_action.min_amount, a_message_action.max_amount, a_message_action.involved_cards)
			elseif a_message_action.action = "select_from_hand" then
				client_gui.pop_up_selection ("HAND", a_message_action.min_amount, a_message_action.max_amount, a_message_action.involved_cards)
			elseif a_message_action.action = "keep_or_not_card" then
				keep_decision := client_gui.keep_or_not_card (a_message_action.involved_cards.item (1))
				if keep_decision = TRUE then
					create response_cards.make_from_array (a_message_action.involved_cards)
				else
					create response_cards.make_empty
				end
				create action_response.make (player_name, <<"SERVER">>, "answer_of_keeping", response_cards, 0, 0, FALSE)
				client_messenger.send_message_to_server (action_response)
			end
		ensure
		end


	execute_textual(a_message_textual: G5_MESSAGE_TEXTUAL)

		require
		do
			if a_message_textual.action = "new_phase" then
				client_gui.new_phase (a_message_textual.textual_message)
			elseif a_message_textual.action = "new_turn" then
				client_gui.new_turn (a_message_textual.textual_message)
			elseif a_message_textual.action = "display" then
				client_gui.pop_up_text_message (a_message_textual.textual_message)
			elseif a_message_textual.action = "start" then
				client_gui.start_game (a_message_textual.targets, player_name)
				number_of_players := a_message_textual.targets.count
			elseif a_message_textual.action = "moat" then
				if thief_played then
					thief_response_map.extend ("moat", a_message_textual.source)
					thief_counter := thief_counter - 1
					if thief_counter = 0 then
						client_gui.pop_up_thief (player_that_played_thief, thief_response_map)
					end
				else
					--Manage the rest of the moat use cases
				end
			elseif a_message_textual.action = "accepted_client" then
					-- This is intended as a new player has joint the game so refresh
					-- the GUI and add its name.
					-- It should be MODIFIED!! The all list of incoming clients should be
					-- received!
-- OLD!!			client_gui.player_join_waiting_room (a_message_textual.textual_message)
-- NEW				client_gui.player_join_waiting_room (a_message_textual.targets)
			elseif a_message_textual.action = "connect_result" then
				if a_message_textual.textual_message = "accepted" then
						-- Here the connection is considered valid and the screen of
						-- the waiting room is presented to the user
					connection_is_valid := true
					client_gui.joined_player_waiting_room
				elseif a_message_textual.textual_message.starts_with ("refused:") then
					if a_message_textual.textual_message.ends_with (":no_server_found") then
						client_gui.pop_up_text_message ("Connection failed: it was impossile to reach the Server!\nCheck that your Internet connection is working and that the IP and port of the Server are correct.")
					elseif a_message_textual.textual_message.ends_with (":max_player") then
						client_gui.pop_up_text_message ("Connection failed: the maximum number of player has been alread reached!")
					elseif a_message_textual.textual_message.ends_with (":invalid_name") then
						client_gui.pop_up_text_message ("Connection failed: the name you chose was already taken by another connected player! Please change it and retry the connection process.")
					end
				end

			end
		ensure
		end


	execute_thief(a_message_thief: G5_MESSAGE_THIEF)

		require
		do
			if a_message_thief.action = "update_thief_trash" then
				--**NOTA** popup to reveal the cards trashed by thief
			elseif a_message_thief.action = "update_thief_gain" then
				--**NOTA** popup to reveal the cards gained by thief

			end
		ensure
		end

	end_game(a_message_end_game: G5_MESSAGE_END_GAME)

		require
		do
			if a_message_end_game.action = "end" then
				client_gui.end_game (a_message_end_game.score_table)
			end
		ensure
		end



feature {G5_LAUNCHER} -- implementation of the G5_INET_TO_GUI deferred feature (used by launcher)

	connect(my_name: STRING; server_ip: STRING; server_port: INTEGER)
			-- this feature asks to the NET component to establish a connection with the server indicated using server_ip and
			-- server_port and to inform it that the player would like to join a match using the name "my_name".
			-- Moreover it will also generate an instance of the class responsable of manging the
			-- G5_MESSAGE objects and the connection with the Server.
		do
			player_name := my_name
			create client_messenger.make (Current, player_name, server_ip, server_port)
			check_for_incoming_messages
		ensure then
			messenger_is_set_up: client_messenger /= void
		end

	game_phase
			-- This feature will manage all the operations of the client after that it was able to connect properly.
			-- In particular every time a new list of messages is received by the net messenger, that list is
			-- retrieved, its messages are analysed and eventually answers to the messages are sent back to the Server.
		require
			connection_is_valid
		do
			from
			until
				final_exit_condition
			loop
				check_for_incoming_messages
				client_messenger.wait_for_messages
			end

			-- Here the socket of the client messenger is closed
			client_messenger.close_communication
		end

	has_a_valid_connection: BOOLEAN
			-- This feature tells to the net controller if a correct connection was established by this client.
		do
			Result := connection_is_valid
		ensure
			Result = connection_is_valid
		end

feature {G5_IGUI_TO_NET} -- Implementation of G5_INET_TO_GUI deferred features

	rematch(my_name: STRING)
			-- this feature is invoked to inform the host that the player with name "my_name" would like to play
			-- another match with the same players and the same cards set.
		do
		end

	play_card(card: STRING)

		do
			create action_response.make (player_name, <<"SERVER">>, "play", <<card>>, 0, 0, FALSE)
			client_messenger.send_message_to_server (action_response)
		end

	selected_from_supply(cards: ARRAY[STRING])
			-- this feature is invoked by the GUI to inform the NET about cards chosen from a pop-up
		do
			create action_response.make (player_name, <<"SERVER">>, "selected_from_supply", cards, 0, 0, FALSE)
			client_messenger.send_message_to_server (action_response)
		end

	select_from_hand(cards: ARRAY[STRING])
			-- this feature is invoked by the GUI to inform the NET about cards chosen from a pop-up
		do
			create action_response.make (player_name, <<"SERVER">>, "selected_from_hand", cards, 0, 0, FALSE)
			client_messenger.send_message_to_server (action_response)
		end


	next_phase()
			-- this feature is invoked when the player expresses his/her intention to move to the next phase of the turn
		do
			create textual_response.make (player_name, <<"SERVER">>, "next_phase", "")
			client_messenger.send_message_to_server (textual_response)
		end

	pass_turn()
			-- this feature is invoked when the player expresses his/her intention to pass the turn
		do
			create textual_response.make (player_name, <<"SERVER">>, "pass_turn", "")
			client_messenger.send_message_to_server (textual_response)
		end

	leave_game()
			-- this feature is invoked when the player expresses his/her intention to leave the match
		do
			number_of_players := number_of_players - 1
		end

	trashed_by_thief(thief_map: HASH_TABLE[ARRAY[STRING],STRING])

		do
			create thief_response.make (player_name, <<"SERVER">>, "trashed_by_thief", thief_map)
			client_messenger.send_message_to_server (thief_response)
		end

	gained_by_thief(thief_map: HASH_TABLE[ARRAY[STRING],STRING])

		do
			create thief_response.make (player_name, <<"SERVER">>, "gained_by_thief", thief_map)
			client_messenger.send_message_to_server (thief_response)
		end
end
