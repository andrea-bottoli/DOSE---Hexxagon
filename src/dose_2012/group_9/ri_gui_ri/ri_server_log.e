note
	description: "Summary description for {RI_SERVER_LOG}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_SERVER_LOG

	inherit

		EV_TITLED_WINDOW
		redefine
			initialize, is_in_default_state
		end

		RI_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

	create

		default_create

	feature

		initialize
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend (agent close_window)
			set_title ("RISK - Dedicated Server Log")
			set_size (800, 450)
			disable_user_resize
		end

		feature {NONE} -- close window agent and misc

			close_window
			do
				destroy
			end

			is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
			do
				Result := True
			end

end
