note
	description: "Summary description for {HX_G_IBOARDS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_BOARDS

inherit
	EV_TITLED_WINDOW
	KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        undefine
			copy,default_create
        end


feature --Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	HX_folder: STRING = "group14"

	-- windows dimensions
	Window_Height 	: INTEGER = 600
	Window_Width 	: INTEGER = 600


	-- The postfixes for the different tiles
	Img_player1_postfix: STRING = "_player1.png"
	Img_player2_postfix: STRING = "_player2.png"
	Img_blank_postfix: STRING = "_blank.png"
	Img_highlight_postfix: STRING = "_highlight.png"


	Window_title: STRING = "Hexxagon Game"
			-- Title of the main window

	Quit_dialog_message: STRING = "Do you really want to close?"
			-- Message for the quit dialog box

	img_path: KL_PATHNAME
			-- Path were the images of TTT are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (HX_folder)
		end


	img_background: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("background151.png")
		end

	img_play_game_button: KL_PATHNAME
			-- Path to "play_game_button" image
		do
			Result := img_path
			Result.append_name ("play.png")
		end


	img_preferences_button: KL_PATHNAME
		-- Path to "preferences_button" image
	do
		Result := img_path
		Result.append_name ("preferences.png")
	end

	img_high_score_button: KL_PATHNAME
		-- Path to "high_score_button" image
	do
		Result := img_path
		Result.append_name ("high_scores.png")
	end

	img_about_button: KL_PATHNAME
		-- Path to "about_button" image
	do
		Result := img_path
		Result.append_name ("about.png")
	end

	img_help_button: KL_PATHNAME
		-- Path to "help_button" image
	do
		Result := img_path
		Result.append_name ("help.png")
	end

	img_quit_button: KL_PATHNAME
		-- Path to "quit_button" image
	do
		Result := img_path
		Result.append_name ("quit.png")
	end

	img_go_back_button: KL_PATHNAME
		-- Path to "go_back_button" image
	do
		Result := img_path
		Result.append_name ("go_back.png")
	end

	img_play_new_game_button: KL_PATHNAME
		-- Path to "play_new_game_button" image
	do
		Result := img_path
		Result.append_name ("play_game.png")
	end

	img_play_again_button: KL_PATHNAME
		-- Path to "play_again_button" image
	do
		Result := img_path
		Result.append_name ("play.png")
	end

	img_go_back_button_2: KL_PATHNAME
		-- Path to "go_back_button" image
	do
		Result := img_path
		Result.append_name ("go_back22.png")
	end

	img_play_game_vs_pc: KL_PATHNAME
		-- Path to "play_game_vs_pc_button" image
	do
		Result := img_path
		Result.append_name ("play_game_vs_pc.png")
	end

	img_play_game_vs_player: KL_PATHNAME
		-- Path to "play_game_vs_player_button" image
	do
		Result := img_path
		Result.append_name ("play_game_vs_player_pc.png")
	end

	img_play_game_vs_network_player: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("play_game_vs_pc_net.png")
	end

	img_back_to_menu: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("back_to_menu.png")
	end

	img_save: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("save.png")
	end

	img_piece1: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("cell1.png")
	end

	img_piece2: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("cell2.png")
	end

	img_piece3: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("cell3.png")
	end

	img_piece4: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("cell4.png")
	end

	img_play_hover: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("play_hover.png")
	end

	--
	img_go_back_winner: KL_PATHNAME
		-- Path to "go_back_to_menu image
	do
		Result := img_path
		Result.append_name ("go_back_winner.png")
	end

	img_play_again_winner: KL_PATHNAME
		-- Path to "play_again_button" image
	do
		Result := img_path
		Result.append_name ("play_again_winner.png")
	end

	img_play_new_game_winner: KL_PATHNAME
		-- Path to "play_new_game_button" image
	do
		Result := img_path
		Result.append_name ("play_new_game_winner.png")
	end

	img_back_1: KL_PATHNAME
		-- Path to "play_new_game_button" image
	do
		Result := img_path
		Result.append_name ("pref_green.png")
	end

	img_back_2: KL_PATHNAME
		-- Path to "play_new_game_button" image
	do
		Result := img_path
		Result.append_name ("pref_dark_green.png")
	end
----------hover

	img_preferences_hover: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("preferences_hover.png")
	end

	img_high_score_hover: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("high_scores_hover.png")
	end

	img_help_hover: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("help_hover.png")
	end

	img_about_hover: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("about_hover.png")
	end

	img_quit_hover: KL_PATHNAME
		-- Path to "play_game_vs_network_player_button" image
	do
		Result := img_path
		Result.append_name ("quit_hover.png")
	end

	img_back_to_menu_hover : KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("back_to_menu_hover.png")
	end

	img_play_game_vs_pc_hover : KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("play_game_vs_PC_hover.png")
	end

	img_play_game_vs_player_hover : KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("play_game_vs_Player_PC_hover.png")
	end

	img_play_game_vs_network_player_hover : KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("play_game_vs_PC_NET_hover.png")
	end

	img_save_hover : KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("save_hover.png")
	end

	img_go_back_button_2_hover : KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("go_back_hover.png")
	end

	img_play_new_game_hover : KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("play_game_hover.png")
	end

	img_back_hover : KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("go_back_hover_winner.png")
	end

	img_about : KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("group14.png")
	end
end

