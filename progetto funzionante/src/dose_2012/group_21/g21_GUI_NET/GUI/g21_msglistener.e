note
	description: "Summary description for {G21_MSGLISTENER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	G21_MSGLISTENER

feature
	messageReceived(msg : CHARACTER[]) deferred
	ensure
		msg.item /= '%U'
	end


end
