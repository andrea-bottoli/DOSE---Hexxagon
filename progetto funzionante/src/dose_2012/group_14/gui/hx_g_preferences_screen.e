note
	description: "Summary description for {HX_G_PREFERENCES_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_PREFERENCES_SCREEN

inherit
	HX_G_BOARDS

feature

            constructor_preferences_window(a_main_ui : MAIN_WINDOW)
            require
				deferred
			end

            piece_images : ARRAY [ STRING]
            background_images : ARRAY[STRING]

            save_Button : EV_BUTTON


            set_Piece( a_piece : STRING)
            require
				deferred
			end

            setBackground()
            require
				deferred
			end

end
