note
	description	: "Root class for this application."
	author		: "Christian Estler."
	date		: "01.10.2011"
	revision	: "1.0"

class
	APPLICATION

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
				-- create and initialize the first window
			create first_window.make_and_launch

				-- Show the first window
			first_window.show
		ensure
			window_created: attached first_window
			window_visible: first_window.is_displayed
		end

feature {NONE} -- Implementation

	first_window: MAIN_WINDOW
			-- Main window

end -- class APPLICATION
