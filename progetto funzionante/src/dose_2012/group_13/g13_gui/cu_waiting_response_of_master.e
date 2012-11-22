note
	description: "Summary description for {CU_WAITING}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_WAITING_RESPONSE_OF_MASTER

inherit
	CU_WINDOWS

create
	make

feature
	make
		-- Show a window of waiting
		require
			window_not_displayed: not is_displayed
		do
		ensure
			window_waiting_response_displayed: is_displayed
		end

feature	--Implementation/ Constants
	label_window: EV_LABEL
		-- Label situated on the top of the dialog,
	    -- contains the message.
end
