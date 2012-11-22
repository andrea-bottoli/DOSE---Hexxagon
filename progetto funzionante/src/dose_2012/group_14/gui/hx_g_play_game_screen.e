note
	description: "Summary description for {HX_G_PLAY_GAME_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_PLAY_GAME_SCREEN

inherit
	HX_G_BOARDS

feature

	description : STRING

	Play_Game_Constructor_Window(main_ui : MAIN_WINDOW)
	require
		deferred
		end

	Play_Game_Vs_Pc_Button : EV_BUTTON
    Play_Game_Vs_Player_Button : EV_BUTTON
    Play_Game_Vs_Network_Player_Button : EV_BUTTON

    Set_Total_Players()
    require
    	deferred
    	end

    Set_Computer_Players()
    require
    	deferred
    	end

    totalPlayers : INTEGER

    computerPlayers : INTEGER



end
