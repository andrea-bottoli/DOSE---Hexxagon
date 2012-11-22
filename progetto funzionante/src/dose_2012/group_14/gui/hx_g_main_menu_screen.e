note
	description: "Summary description for {HX_G_MAIN_MENU_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_MAIN_MENU_SCREEN

inherit
	HX_G_BOARDS

feature

            Main_description : STRING
            
            PlayGameButton : EV_BUTTON

            PreferencesButton : EV_BUTTON

            HighScoresButton : EV_BUTTON

            AboutButton : EV_BUTTON

            HelpButton : EV_BUTTON

            quitButton : EV_BUTTON

end
