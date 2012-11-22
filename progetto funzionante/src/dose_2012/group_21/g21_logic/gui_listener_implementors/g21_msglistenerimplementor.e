note
	description: "Summary description for {G21_MSGLISTENERIMPLEMENTOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_MSGLISTENERIMPLEMENTOR
	inherit
	G21_MSGLISTENER
	redefine messageReceived end
	feature
		messageReceived(msg : CHARACTER[])
		do
			

		end

end
