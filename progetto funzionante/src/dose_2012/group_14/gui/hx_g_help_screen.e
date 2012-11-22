note
	description: "Summary description for {HX_G_HELP_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_HELP_SCREEN

inherit
	HX_G_BOARDS

feature

	help_text : STRING

	 help_description_window(main_ui : MAIN_WINDOW ; a_help_text : STRING)
	 require
			deferred
			end
end
