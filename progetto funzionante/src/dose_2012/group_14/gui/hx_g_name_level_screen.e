note
	description: "Summary description for {HX_G_NAME_LEVEL_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_NAME_LEVEL_SCREEN

inherit
	HX_G_BOARDS

feature

	Window_Constructor(a_main_ui : MAIN_WINDOW)
	require
		deferred
		end

	Set_Name(a_player_name : STRING)
	require
		deferred
		end

	Set_Level(a_Level : INTEGER)
	require
		deferred
		end

	Save_Button : EV_BUTTON

	Radio_Button : EV_BUTTON

	text_field_name : EV_TEXT_FIELD


end
