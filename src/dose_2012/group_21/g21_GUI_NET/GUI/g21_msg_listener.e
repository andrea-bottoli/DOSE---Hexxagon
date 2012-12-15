note
	description: "Summary description for {G21_MSGLISTENER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	G21_MSG_LISTENER

feature
	messageReceived(msg : ARRAY[CHARACTER]) deferred
	ensure
		msg.item /= '%U'
	end


end
