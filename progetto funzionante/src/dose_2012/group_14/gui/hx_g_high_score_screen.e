note
	description: "Summary description for {HX_G_HIGH_SCORE_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_HIGH_SCORE_SCREEN

inherit
	HX_G_BOARDS

feature

	description : STRING

	high_score_window(main_ui : MAIN_WINDOW)
	require
			deferred
			end

	Get_High_Score()
	require
			deferred
			end

end
