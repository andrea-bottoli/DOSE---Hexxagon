note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IG_START_DIALOG

inherit
	EQA_TEST_SET

feature -- Test routines

	test_ig_start_dialog
			-- Test if the main window appears right
		note
			testing:  "covers/{IG_START_DIALOG}.show"
		local
			l_title: READABLE_STRING_GENERAL
			l_ig_start_dialog: IG_START_DIALOG
				-- a local variable for the window
		do
			--Fbesser
			l_title := "Test title"
			create l_ig_start_dialog.make_with_title (l_title)
			l_ig_start_dialog.show
			assert ("the Start Dialog seems to be right ", l_ig_start_dialog.is_displayed=True)
			l_ig_start_dialog.destroy
		end


end


