note
	description: "Summary description for {CU_CONFIRM_LEAVE_MATCH}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CONFIRM_LEAVE_MATCH

create
	make

feature

	make
		-- Displays a window to confirm leave match
		do
		ensure
			confirm_leave_match_display: leave_match.is_displayed
		end

feature
	leave_match: CU_CONFIRM_DIALOG
	-- Instance of the CU_CONFIRM_DIALOG

end

