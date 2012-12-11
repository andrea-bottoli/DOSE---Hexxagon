note
	description: "Summary description for {G10_LOBBY_CONSTANTS}."
	author: "Angel Kyriako"
	date: "$Date$"
	revision: "$Revision$"

class
	G10_LOBBY_CONSTANTS
inherit
	G10_GUI_CONSTANTS

feature{NONE} --folder path of lobby images
	lobby_folder: STRING = "lobby"
	lobby_main_folder: STRING = "main"


	lobby_img_path: KL_PATHNAME
		require
			img_path_not_null: img_path /= void
		do
			Result := img_path
			Result.append_name (lobby_folder)
			Result.append_name (lobby_main_folder)
		end

feature{ANY} --component sizes

	--window
	lobby_window_width: INTEGER = 1024
	lobby_window_height: INTEGER = 768
	lobby_title_height: INTEGER = 130

	--All Buttons
	button_width: INTEGER = 207
	button_height: INTEGER = 101
	distance_between_buttons: INTEGER = 20

	Buttons_Start_width: INTEGER
	once
		Result := lobby_window_width - button_width - distance_between_components
	end
	Return_Start_width: INTEGER
	once
		Result := lobby_window_width - button_height - distance_between_components
	end
	Create_Start_height: INTEGER
	once
		Result := lobby_title_height + distance_between_components
	end
	Join_Start_height: INTEGER
	once
		Result := lobby_title_height + distance_between_components + button_height + distance_between_buttons
	end
	Practice_Start_height: INTEGER
	once
		Result := lobby_title_height + distance_between_components + 2*button_height +  2*distance_between_buttons
	end
	Return_Start_height: INTEGER
	once
		Result := lobby_window_height - ( button_width + distance_between_components)
	end

	--new_game_info_panel
	new_game_info_panel_width: INTEGER
	once
 		Result := lobby_window_width - button_width - 2*distance_between_components - 2*distance_between_buttons
	end
	new_game_info_panel_height: INTEGER = 200

	new_game_info_panel_start_width: INTEGER
	once
		Result := distance_between_components
	end
	new_game_info_panel_start_height: INTEGER
	once
		Result := lobby_title_height + online_users_height + 2*distance_between_components
	end

	-- text bars in game info panel
		-- title input bar
		title_bar_width: INTEGER = 300
		title_bar_height: INTEGER = 25
		title_bar_start_width: INTEGER = 400
		title_bar_start_height: INTEGER = 53

		-- player num input bar
		player_num_bar_width: INTEGER = 40
		player_num_bar_height: INTEGER = 25
		player_num_bar_start_width: INTEGER = 530
		player_num_bar_start_height: INTEGER = 132

	-- start button in game info panel
		start_button_width: INTEGER = 125
		start_button_height: INTEGER = 104
		start_button_start_width: INTEGER
		do
			Result := new_game_info_panel_width - start_button_width - 2*distance_between_components
		end
		start_button_start_height: INTEGER
		do
			Result := new_game_info_panel_height - start_button_height - 2*distance_between_components
		end

	--online users list
	online_users_width: INTEGER = 200
	online_users_height: INTEGER
	once
		Result := lobby_window_height - lobby_title_height - new_game_info_panel_height - 2*distance_between_components
	end

	online_users_Start_width: INTEGER
	once
		Result := distance_between_components
	end
	online_users_Start_height: INTEGER
	once
		Result := lobby_title_height + distance_between_components
	end


	--hosted games list
	hosted_games_width: INTEGER
	once
		Result := lobby_window_width - online_users_width - button_width - 4*distance_between_components
	end
	hosted_games_height: INTEGER
	once
		Result := lobby_window_height - lobby_title_height - new_game_info_panel_height - 2*distance_between_components
	end

	hosted_games_start_width: INTEGER
	once
		Result := online_users_width + 2*distance_between_components
	end
	hosted_games_start_height: INTEGER
	once
		Result := lobby_title_height + distance_between_components
	end

feature{ANY} --PixMaps

	-- background
	img_lobby_background: KL_PATHNAME
		do
			Result := lobby_img_path
			Result.append_name ("lobby_background_1094_802.png")
		end
	pix_lobby_background: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_lobby_background) )
		end

	-- empty background
	img_empty_background: KL_PATHNAME
		do
			Result := lobby_img_path
			Result.append_name ("empty_background_834_238.png")
		end
	pix_empty_background: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_empty_background) )
		end

	-- new_game_info_panel
	img_new_game_info_background: KL_PATHNAME
		do
			Result := lobby_img_path
			Result.append_name ("new_game_info_834_238.png")
		end
	pix_new_game_info_background: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_new_game_info_background) )
		end

		-- start game button
		img_start_button: KL_PATHNAME
			do
				Result := lobby_img_path
				Result.append_name ("sakis_rouvas_125_104.png")
			end
		pix_start_button: EV_PIXMAP
			once
				create Result
				Result.set_with_named_file (file_system.pathname_to_string(img_start_button) )
			end
		-- highlighted start button
		img_highlighted_start_button: KL_PATHNAME
			do
				Result := lobby_img_path
				Result.append_name ("highlighted_sakis_rouvas_125_104.png")
			end
		pix_highlighted_start_button: EV_PIXMAP
			once
				create Result
				Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_start_button) )
			end

	-- all buttons
		-- create
	img_create_button: KL_PATHNAME
		do
			Result := lobby_img_path
			Result.append_name ("create_button.png")
		end
	pix_create_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_create_button) )
		end

		-- join
	img_join_button: KL_PATHNAME
		do
			Result := lobby_img_path
			Result.append_name ("join_button.png")
		end
	pix_join_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_join_button) )
		end

		-- practice
	img_practice_button: KL_PATHNAME
		do
			Result := lobby_img_path
			Result.append_name ("practice_button.png")
		end
	pix_practice_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_practice_button) )
		end
		-- highlighted practice
	img_highlighted_practice_button: KL_PATHNAME
		do
			Result := lobby_img_path
			Result.append_name ("highlighted_practice_button.png")
		end
	pix_highlighted_practice_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_highlighted_practice_button) )
		end

		-- return
	img_return_button: KL_PATHNAME
		do
			Result := lobby_img_path
			Result.append_name ("return_button.png")
		end
	pix_return_button: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_return_button) )
		end

	feature {ANY}

	lobby_id: STRING = "Lobby"
	lobby_ip: STRING = "192.168.1.65"
	lobby_port: STRING = "6666"
end
