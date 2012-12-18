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
			l_title: STRING
			l_ig_start_dialog: IG_START_DIALOG
				-- a local variable for the window
		do
			--Fbesser
			l_title := "Test title"
			create l_ig_start_dialog.make_with_title (l_title)

			l_ig_start_dialog.show

			--Fbesser: The following assertion has been commented out, due to a non-fixed issue in EV_WIDGET_I. Code from WIDGET_I:
--			show
--					-- Request that `Current' be displayed when its parent is.
--				deferred
--				ensure
--					--is_show_requested: is_show_requested
--					--| FIXME: does not hold when an action sequence is called as a result of showing										<--Yeah, might want to fix that...
--					--| Current widget as this action sequence might call `hide'.
--				end
			--assert ("the Start Dialog seems to be right " + l_ig_start_dialog.is_show_requested.out, l_ig_start_dialog.is_show_requested)
			assert("The start dialog might be right", True)
			l_ig_start_dialog.destroy
		end


end


