note
	description: "Summary description for {HX_G_WINNER_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_WINNER_SCREEN
inherit
	HX_G_BOARDS

feature

            constructor_winner_window(a_main_ui : MAIN_WINDOW)
            require
				deferred
			end

            get_Winner_Name()
            require
				deferred
			end

            get_Winner_Score()
            require
				deferred
			end

            winner_description : STRING

end
