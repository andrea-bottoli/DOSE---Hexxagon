note
	description: "Summary description for {G21_MSGLISTENER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	G21_MSG_LISTENER

feature
	messageReceived(msg : STRING) deferred
	ensure
		msg.item (1) /= '%U'
	end


end
