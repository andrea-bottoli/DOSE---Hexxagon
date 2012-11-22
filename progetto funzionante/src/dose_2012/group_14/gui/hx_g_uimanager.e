note
	description: "Summary description for {HX_G_UIMANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

 class
	HX_G_UIMANAGER

inherit
	HX_G_IUIMANAGER

feature

	Click
	do
	end

	initGraphics
	do
	end

    numPlayers : INTEGER

    setNumPlayers
    do
    end

   difficulty_level : INTEGER


	repaint
	do

	end

	game_finished(l_message: HX_L_IGAME_END_MESSAGE)
	do
	end

	game_stopped(code: INTEGER; reason: STRING)
	do
	end

end
