note
	description: "Summary description for {HX_G_ABOUT_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_ABOUT_SCREEN

inherit
	HX_G_BOARDS

feature

	text : STRING

	-- Displays description of the project
	 info_description_window(main_ui : MAIN_WINDOW ; a_text : STRING)
	 require
			deferred
			end

end
