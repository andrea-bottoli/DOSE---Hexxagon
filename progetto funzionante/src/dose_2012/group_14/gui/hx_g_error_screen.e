note
	description: "Summary description for {HX_G_ERROR_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_ERROR_SCREEN

inherit
	HX_G_BOARDS

feature

	Error_Message : STRING

	Error_Window(main_ui : MAIN_WINDOW;  a_Error_Message : STRING)
	require
			deferred
			end

	Process_Event()
	require
			deferred
			end

	Close()
	require
			deferred
			end

end
