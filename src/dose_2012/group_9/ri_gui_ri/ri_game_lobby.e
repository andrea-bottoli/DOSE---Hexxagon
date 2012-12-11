note
	description: "Summary description for {RI_GAME_LOBBY}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_GAME_LOBBY

	feature

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

	feature

		on_create		--Handles the creation and initialization of the lobby window
			do

			end

		on_dispose		--Handles the closing of the lobby window
			do

			end


end
