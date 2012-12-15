note
	description: "Summary presentation for the deferred class G5_INET_SERVER."
	author: "Luca Falsina"
	date: "13.11.2012"
	revision: "1.4"

deferred class
	G5_INET_TO_LOGIC


feature {G5_INET_TO_LOGIC,EQA_TEST_SET, G5_LAUNCHER} -- Status Report

	server_logic: G5_ITABLE
			-- This object, which inherits from the G5_ITABLE interface and represents
			-- the LOGIC component of the game on Server side, will be notified with
			-- a message every time the INET_SERVER receives a message from a client.

feature {G5_ITABLE,EQA_TEST_SET} -- Server Logic Management

	add_server_logic (added_server_logic: G5_ITABLE)
			-- This feature is called when a host sets correctly a match and wants to start
			-- communication with clients.
			-- The server logic of the host registers itself as a listener of the changes
			-- set by the clients by passing itself as a parameter of this method.
		require
			host_not_void: added_server_logic /= void
			no_host_is_present: server_logic = void
		deferred
		ensure
			host_registered: server_logic = added_server_logic
		end

	remove_server_logic (removed_server_logic: G5_ITABLE)
			-- This feature is called every time a match is interrupted or ended by the host.
			-- The host notifies that the Logic component on Server side won’t listen anymore
			-- to the messages sent by the INET TO LOGIC.
		require
			host_not_void: removed_server_logic /= void
			host_already_registered:
				server_logic /= void and
				server_logic = removed_server_logic
		deferred
		ensure
			host_removed: server_logic = void
		end

feature {G5_LAUNCHER, EQA_TEST_SET} -- Game Start

	start_game (players: ARRAY [STRING])
			-- This feature is called when a Dominion match can start because a sufficient number of
			-- players is present. The parameter players contains the names of all involved players
			-- (each one of them must be different from the others).
		require
			correct_players_array:
				players /= void and
				not players.is_empty and
				players.count >= 2 and
				players.count <= 4

			all_players_name_are_not_void:
				players.for_all (agent (player: STRING): BOOLEAN do Result := (player /= void
				and not(player.is_empty)) end)

		deferred
		ensure
			-- Game can start properly. Server component will start to send and receive messages
		end

feature {G5_ITABLE, EQA_TEST_SET} -- Game Management

	end_game (scores: HASH_TABLE[INTEGER, STRING])
			-- This feature is called at the end of a match. It receives as a parameter a table
			-- containing all player names associated with the respective amount of obtained points.
		require
			correct_scores:
				scores /= void and
				scores.count >= 2 and
				scores.count >= 4

		deferred
		ensure
			-- Correct scores will be sent by the current component.
		end

	is_valid_name_player(a_player_name: STRING; valid_connection: BOOLEAN)
			-- This feature is called when the LOGIC component has checked if an incoming player can
			-- join a match and if his/her name has not been taken by another player yet.
			-- In any negative case(name invalid or maximum players size reached for the match) the
			-- connection request will be rejected, and valid_connection would be set on false.
		require
			valid_player_name: a_player_name /= void and not(a_player_name.is_empty)
		deferred
		ensure
			-- A failure notification to the correct player will be sent
		end

	rematch_choice(do_a_rematch: BOOLEAN)
			-- This feature will be invoked after a match is over.
			-- The host informs about its will of performing another game.
		require
		deferred
		ensure
			-- A valid answer regarding the host's will is stored.
		end

	update (received_messages: LINKED_LIST[G5_MESSAGE])
			-- This feature will inform this component every time an object which is connected
			-- to this component sends a set of messages. By interpreting the received G5_MESSAGE instances
			-- it will be possible to correctly forward the outgoing objects.
			-- Please note that his list shall beave like a QUEUE so the first message in the list, is the
			-- oldest one.
		require
			messages_not_void:	received_messages /= void and received_messages.count > 0 and
								received_messages.for_all (agent (message: G5_MESSAGE): BOOLEAN
								do Result := (message /= void) end)
			message_source_is_server:	received_messages.for_all (agent (message: G5_MESSAGE): BOOLEAN
										do Result := (not(message.source.is_empty) and message.source /= void) end)
			message_targets_are_all_clients:
				received_messages.for_all (agent (message: G5_MESSAGE): BOOLEAN
										do Result := (
											message.targets.for_all (agent (target: STRING): BOOLEAN
											do Result := (not(target.is_equal ("SERVER"))) end)
										) end)
		deferred
		ensure
			-- received_messages is correctly received and it contains only valid messages which can be
			-- interpreted and forwarded to the clients.
		end

end
