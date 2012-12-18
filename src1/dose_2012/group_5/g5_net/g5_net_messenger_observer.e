note
	description: "This deferred class can receive notifications from a G5_NET_MESSENGER_CLIENT every time a new incoming message is recovered."
	author: "Luca Falsina"
	date: "29.11.2012"
	revision: "0.1"

deferred class
	G5_NET_MESSENGER_OBSERVER

feature -- Incoming Message Notification

	alert_for_incoming_messages()
			-- This feature will be invoked by a G5_NET_MESSENGER_CLIENT object every time than a new message is received.
			-- It will report to the observer that new messages saved in the G5_NET_MESSENGER_CLIENT instance can be retrieved.
		deferred
		end
end
