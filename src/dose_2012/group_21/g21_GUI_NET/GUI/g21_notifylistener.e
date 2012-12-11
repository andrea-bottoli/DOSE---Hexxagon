note
	description: "Summary description for {G21_NOTIFYLISTENER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	G21_NOTIFYLISTENER

feature
	errorMessage(msg : STRING) deferred
	ensure
		msg /= Void
	end

	statusMessage(msg :STRING) deferred
	ensure
		msg /= Void
	end

	message(msg : STRING) deferred
	ensure
		msg /= Void
	end

end
