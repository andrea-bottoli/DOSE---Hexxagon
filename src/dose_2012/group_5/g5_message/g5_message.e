note
	description: "Summary description for the deferred class G5_MESSAGE."
	author: "Luca Falsina"
	date: "14.11.2012"
	revision: "1.3"

deferred class
	G5_MESSAGE

inherit
	STORABLE

feature -- Status Report

	source: STRING
			-- The player that has generated the message by making an action.

	targets: ARRAY [STRING]
			-- This array contains all the targets that must receive this instance.

	action: STRING
			-- A conventional STRING text that explains the purpose of the message.

invariant
	-- class invariant

	attributes_not_void_or_empty:
		source /= void and not(source.is_equal ("")) and
		targets /= void and
		targets.for_all (agent (target: STRING): BOOLEAN
			do Result := (target /= void and not(target.is_equal (""))) end )
		action /= void

	source_of_a_message_is_not_a_target:
		targets.for_all (agent (target: STRING): BOOLEAN
			do Result := (not(target.is_equal (source))) end )

	at_least_one_target:
		targets.count >= 1

	maximum_four_targets:
		targets.count <= 4

	accepted_couple_source_target:
			-- Server can't send messages also to itself.
		source.is_equal ("SERVER") implies
		targets.for_all (agent (target: STRING): BOOLEAN do Result := not(target.is_equal ("SERVER")) end )

			-- Clients can only send messages to the Server.
		not(source.is_equal ("SERVER")) implies
		(targets.count = 1 and targets.item (1).is_equal ("SERVER"))

end
