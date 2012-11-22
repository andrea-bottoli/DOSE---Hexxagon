note
	description: "Summary description for the deferred class {G5_MESSAGE}."
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

	attributes_not_void:
		source /= void and
		targets /= void and
		targets.for_all (agent (target: STRING): BOOLEAN do Result := (target /= void) end )
		action /= void

	at_least_one_target:
		targets.count >= 1

	accepted_couple_source_target:
			-- Server can't send messages also to itself.
		source.is_equal ("SERVER") implies
		targets.for_all (agent (target: STRING): BOOLEAN do Result := not(target.is_equal ("SERVER")) end )

			-- Clients can only send messages to the Server.
		not(source.is_equal ("SERVER")) implies
		(targets.count = 1 and targets.item (1).is_equal ("SERVER"))

end
