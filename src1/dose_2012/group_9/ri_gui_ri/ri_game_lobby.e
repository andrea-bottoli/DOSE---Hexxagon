note
	description: "Summary description for {RI_GAME_LOBBY}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_GAME_LOBBY

inherit
	EV_FIXED

	RI_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end


	create
		make


	feature --Initialization

		make(a_window: RI_WELCOME_WINDOW)
			-- Creation procedure
		do
			default_create
			build_primitives

		end




	feature
		con_game        : EV_FIXED 	--Container for buttons, labels, text fields
		btn_Create_Game : EV_BUTTON
		btn_Join_Game 	: EV_BUTTON
		lbl_GNAME		: EV_LABEL
		txt_Game_Name	: EV_TEXT_FIELD
		lst_Current		: EV_LIST
		lst_InGame		: EV_LIST
		lst_InLobby		: EV_LIST
		lbl_Current_Ser : EV_LABEL
		con_Horizontal	: EV_HORIZONTAL_BOX
		con_Vertical	: EV_VERTICAL_BOX
		con_main 		: EV_FIXED 	--Main Container for Image and widget container


		pix_bg_welcome: EV_PIXMAP
					-- returns the background for the active game
				once
					create Result
					Result.set_with_named_file (file_system.pathname_to_string (img_bg_welcome))
				end

		build_primitives
		require



		do

			set_background_pixmap (pix_bg_welcome)

		end

		create_game 	--Handles the server transaction for requesting a new game
			do

			end

		join_game		--Handles the server transaction for joining a new game
			do

			end

		refresh_info	--Synchronizes server information with GUI
			do

			end

		show_tooltip	--Handles the mouseover event, displaying a tooltip with game information
			do

			end

		classify_games	--Handles the prioritizing of available games based on certain criteria
			do

			end

	feature {NONE} -- close window agent





end
