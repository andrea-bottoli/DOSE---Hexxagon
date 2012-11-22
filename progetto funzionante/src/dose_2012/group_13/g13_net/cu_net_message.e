note
	description: "Summary description for {CU_NET_MESSAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_NET_MESSAGE


inherit
    STORABLE

feature

	notify_changes (a_change: BOOLEAN)
			-- Notifies about changes of the states
		do
		ensure
			changes_notified: a_change = change
		end

	send_state (a_state: CU_GAME)
			-- Send state to the server
		do
		end

	notify_connect (ip: STRING)
			-- Notifies about one client that want to connect to the server game
		require
			valid_ip: ip /= void
		do
		end

feature {NONE}
	change: BOOLEAN
		-- Represents the changes of states
end
