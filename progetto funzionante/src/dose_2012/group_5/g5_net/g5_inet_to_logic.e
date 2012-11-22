note
	description: "Summary presentation for the deferred class {G5_INET_SERVER}."
	author: "Luca Falsina"
	date: "13.11.2012"
	revision: "1.4"

deferred class
	G5_INET_TO_LOGIC


feature {G5_INET_TO_LOGIC,EQA_TEST_SET} -- Communication with the LOGIC component

	hosts_observering: ARRAY[G5_ITABLE]
			-- The set of all the observers(it is usually only one, the host of the game)
			-- that will be notified with a message every time the INET_SERVER receives
			-- a message from a client.

	notify (message_to_send: G5_MESSAGE)
			-- This feature will be invoked in order to send a received G5_MESSAGE object
			-- to all the observers of this instance (LOGIC part of the match).
		require
			message_not_void: message_to_send /= void
			message_target_is_server:
				message_to_send.targets.count = 1 and
				message_to_send.targets.item (1).is_equal ("SERVER")
		do
		ensure
			-- The message is sent to the observers of this class
		end

	update (received_message: G5_MESSAGE)
			-- This feature will inform this component every time an object which is being
			-- observed sends a message. By interpreting the received G5_MESSAGE instance
			-- it will be possible to correctly forward the outgoing object.
		require
			message_not_void: received_message /= void
			message_source_is_server: received_message.source.is_equal ("SERVER")
			message_targets_are_all_clients:
				received_message.targets.for_all (agent (target: STRING): BOOLEAN
					do Result := (not(target.is_equal ("SERVER"))) end)
		do
		ensure
			-- received_message is correctly received and can be interpretated and forwarded.
		end

feature {G5_ITABLE,EQA_TEST_SET} -- Host Observers Management

	add_observer (host_added_observer: G5_ITABLE)
			-- This feature is called when a host sets correctly a match and wants to start
			-- communication with clients.
			-- The host registers itself as an observer of the changes set by the clients
			-- by passing itself as a parameter of this method.
		require
			host_not_void: host_added_observer /= void
			host_still_not_registered: not hosts_observering.has(host_added_observer)
		do
		ensure
			host_registered: hosts_observering.has(host_added_observer)
			observers_array_incremented: hosts_observering.count = old hosts_observering.count + 1
		end

	remove_observer (host_removed_observer: G5_ITABLE)
			-- This feature is called every time a match is interrupted or ended by the host.
			-- The host notifies that it won’t listen anymore to the messages sent by the INET TO LOGIC.
		require
			host_not_void: host_removed_observer /= void
			host_already_registered: hosts_observering.has(host_removed_observer)
			not_void_observers_array: hosts_observering.count > 0
		do
		ensure
			host_removed: not hosts_observering.has(host_removed_observer)
			observers_array_decremented: hosts_observering.count = old hosts_observering.count - 1
		end

feature {G5_ITABLE,EQA_TEST_SET} -- Game Management

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
				players.for_all (agent (player: STRING): BOOLEAN do Result := (player /= void) end)

		do
		ensure
			-- Game can start properly
		end

	end_game (scores: HASH_TABLE[INTEGER, STRING])
			-- This feature is called at the end of a match. It receives as a parameter a table
			-- containing all player names associated with the respective amount of obtained points.
		require
			correct_scores:
				scores /= void and
				scores.count >= 2 and
				scores.count >= 4

		do
		ensure
			-- Correct scores will be sent by the current component.
		end

	is_valid_name_player(a_player_name: STRING; valid_connection: BOOLEAN)
			-- This feature is called when the LOGIC component has checked if an incoming player can
			-- join a match and if his/her name has not been taken by another player yet.
			-- In any negative case(name invalid or maximum players size reached for the match) the
			-- connection request will be rejected, and valid_connection would be set on false.
		require
			valid_player_name: a_player_name /= void
		do
		ensure
			-- A failure notification to the correct player will be sent
		end

	rematch_choice(do_a_rematch: BOOLEAN)
			-- This feature will be invoked after a match is over.
			-- The host informs about its will of performing another game.
		require
		do
		ensure
			-- A valid answer regarding the host's will is stored.
		end

end
