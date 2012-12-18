note
	description: "Summary description for {HX_G_L_TESTING_APPLICATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_L_TESTING_APPLICATION

inherit
	EV_APPLICATION

create
	make_and_launch

feature {NONE} -- Initialization

	make_and_launch
			-- Initialize and launch application
		do
			default_create
			prepare
			launch
		end

	prepare
			-- Prepare the first window to be displayed.
			-- Perform one call to first window in order to
			-- avoid to violate the invariant of class EV_APPLICATION.
		do
				-- create and initialize the first window.
			--create first_window

				-- Show the first window.
				--| TODO: Remove this line if you don't want the first
				--|       window to be shown at the start of the program.
			--first_window.show
		end

feature {NONE} -- Implementation

	first_window: HX_G_L_TESTING_BOARD
			-- Main window.

end
