note
	description: "Summary description for {G1_UI_PLAYER_INFORMATION}."
	author: "Milano7-Group1"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_UI_PLAYER_INFORMATION

inherit
	EV_FIXED

	G1_UI_CONSTANTS
	    export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	make

feature {NONE}	-- Attributes

	player_token_area : EV_FIXED
	player_flag_area : EV_FIXED

	label_name : EV_LABEL
	label_money : EV_LABEL

	ui_player : G1_PLAYER

	trade_popup : G1_UI_POPUP_TRADE

	property_panel_brown : EV_FIXED
	property_panel_brown_two : EV_FIXED
	property_panel_light_blue : EV_FIXED
	property_panel_light_blue_two : EV_FIXED
	property_panel_light_blue_three : EV_FIXED
	property_panel_pink : EV_FIXED
	property_panel_pink_two : EV_FIXED
	property_panel_pink_three : EV_FIXED
	property_panel_orange : EV_FIXED
	property_panel_orange_two : EV_FIXED
	property_panel_orange_three : EV_FIXED
	property_panel_red : EV_FIXED
	property_panel_red_two : EV_FIXED
	property_panel_red_three : EV_FIXED
	property_panel_yellow : EV_FIXED
	property_panel_yellow_two : EV_FIXED
	property_panel_yellow_three : EV_FIXED
	property_panel_green : EV_FIXED
	property_panel_green_two : EV_FIXED
	property_panel_green_three : EV_FIXED
	property_panel_dark_blue : EV_FIXED
	property_panel_dark_blue_two : EV_FIXED
	panel_railway : EV_FIXED
	panel_railway_two : EV_FIXED
	panel_railway_three : EV_FIXED
	panel_railway_four : EV_FIXED
	panel_electric_company : EV_FIXED
    panel_water_works : EV_FIXED
    panel_get_out_of_jail_community : EV_FIXED
    panel_get_out_of_jail_chance : EV_FIXED

feature {NONE} -- Initialization

	make(a_player : G1_PLAYER)
	local
		a_player_id : INTEGER
		a_player_name : STRING
		pixmap : EV_PIXMAP
		do
			default_create()
			ui_player := a_player
			create pixmap
		   	pixmap.set_with_named_file (file_system.pathname_to_string (mp_img_load("background_gameboard.png")))
			Current.set_background_pixmap (pixmap)

			a_player_id := a_player.id_player
			a_player_name := a_player.name

			if a_player_id = 1 then
				 player_token_area := set_background(mp_img_load("monopoly_token_dog.png"),50,50);
			elseif a_player_id = 2 then
				 player_token_area := set_background(mp_img_load("monopoly_token_car.png"),50,50);
			elseif a_player_id = 3 then
				 player_token_area := set_background(mp_img_load("monopoly_token_hat.png"),50,50);
			elseif a_player_id = 4 then
				 player_token_area := set_background(mp_img_load("monopoly_token_ship.png"),50,50);
			elseif a_player_id = 5 then
				 player_token_area := set_background(mp_img_load("monopoly_token_iron.png"),50,50);
			elseif a_player_id = 6 then
				 player_token_area := set_background(mp_img_load("monopoly_token_boot.png"),50,50);
			end

		    extend_with_position_and_size (player_token_area, 0, 0, 50, 50)

		    create label_name
		    label_name.set_background_color (GREEN)
		    label_name.set_text (a_player_name)
			label_name.align_text_center
			extend_with_position_and_size (label_name, 70, 0, 100, 20)

			create label_money
		    label_money.set_background_color (GREEN)
		    label_money.set_text ("$ 1500")
			label_money.align_text_center
			extend_with_position_and_size (label_money, 70, 30, 60, 20)

			player_flag_area := set_background(mp_flag("IT"),60,50);
			extend_with_position_and_size (player_flag_area, 180, 0, 60, 50)

			property_panel_brown := set_background(mp_img_load("property_panel_brown_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_brown, 10, 70, 30, 30)
			property_panel_brown_two := set_background(mp_img_load("property_panel_brown_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_brown_two, 50, 70, 30, 30)

			property_panel_light_blue := set_background(mp_img_load("property_panel_light_blue_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue, 10, 100, 30, 30)
			property_panel_light_blue_two := set_background(mp_img_load("property_panel_light_blue_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue_two, 50, 100, 30, 30)
			property_panel_light_blue_three := set_background(mp_img_load("property_panel_light_blue_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue_three, 90, 100, 30, 30)

			property_panel_pink := set_background(mp_img_load("property_panel_pink_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_pink, 10, 130, 30, 30)
			property_panel_pink_two := set_background(mp_img_load("property_panel_pink_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_pink_two, 50, 130, 30, 30)
			property_panel_pink_three := set_background(mp_img_load("property_panel_pink_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_pink_three, 90, 130, 30, 30)

			property_panel_orange := set_background(mp_img_load("property_panel_orange_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_orange, 10, 160, 30, 30)
			property_panel_orange_two := set_background(mp_img_load("property_panel_orange_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_orange_two, 50, 160, 30, 30)
			property_panel_orange_three := set_background(mp_img_load("property_panel_orange_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_orange_three, 90, 160, 30, 30)

			property_panel_red := set_background(mp_img_load("property_panel_red_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_red, 10, 190, 30, 30)
			property_panel_red_two := set_background(mp_img_load("property_panel_red_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_red_two, 50, 190, 30, 30)
			property_panel_red_three := set_background(mp_img_load("property_panel_red_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_red_three, 90, 190, 30, 30)

			property_panel_yellow := set_background(mp_img_load("property_panel_yellow_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_yellow, 160, 70, 30, 30)
			property_panel_yellow_two := set_background(mp_img_load("property_panel_yellow_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_yellow_two, 200, 70, 30, 30)
			property_panel_yellow_three := set_background(mp_img_load("property_panel_yellow_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_yellow_three, 240, 70, 30, 30)

			property_panel_green := set_background(mp_img_load("property_panel_green_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_green, 160, 100, 30, 30)
			property_panel_green_two := set_background(mp_img_load("property_panel_green_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_green_two, 200, 100, 30, 30)
			property_panel_green_three := set_background(mp_img_load("property_panel_green_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_green_three, 240, 100, 30, 30)

			property_panel_dark_blue := set_background(mp_img_load("property_panel_dark_blue_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_dark_blue, 160, 130, 30, 30)
			property_panel_dark_blue_two := set_background(mp_img_load("property_panel_dark_blue_not_owned.png"),30,30);
			extend_with_position_and_size (property_panel_dark_blue_two, 200, 130, 30, 30)

			panel_railway := set_background(mp_img_load("panel_railway_not_owned.png"),30,30);
			extend_with_position_and_size (panel_railway, 160, 160, 30, 30)
			panel_railway_two := set_background(mp_img_load("panel_railway_not_owned.png"),30,30);
			extend_with_position_and_size (panel_railway_two, 200, 160, 30, 30)
			panel_railway_three := set_background(mp_img_load("panel_railway_not_owned.png"),30,30);
			extend_with_position_and_size (panel_railway_three, 240, 160, 30, 30)
			panel_railway_four := set_background(mp_img_load("panel_railway_not_owned.png"),30,30);
			extend_with_position_and_size (panel_railway_four, 280, 160, 30, 30)

			panel_electric_company := set_background(mp_img_load("panel_utility_not_owned.png"),30,30);
			extend_with_position_and_size (panel_electric_company, 160, 190, 30, 30)
			panel_water_works := set_background(mp_img_load("panel_utility_not_owned.png"),30,30);
			extend_with_position_and_size (panel_water_works, 200, 190, 30, 30)

		end

feature {ANY} -- Implementation features update user player

	update_buy(a_id : INTEGER)
	do
		if a_id = 1 then
			property_panel_brown := set_background(mp_img_load("property_panel_brown.png"),30,30);
			extend_with_position_and_size (property_panel_brown, 10, 70, 30, 30)
		elseif a_id = 3 then
			property_panel_brown_two := set_background(mp_img_load("property_panel_brown.png"),30,30);
			extend_with_position_and_size (property_panel_brown_two, 50, 70, 30, 30)
		elseif a_id = 5 then
			panel_railway := set_background(mp_img_load("panel_railway.png"),30,30);
			extend_with_position_and_size (panel_railway, 160, 160, 30, 30)
		elseif a_id = 6 then
			property_panel_light_blue := set_background(mp_img_load("property_panel_light_blue.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue, 10, 100, 30, 30)
		elseif a_id = 8 then
			property_panel_light_blue_two := set_background(mp_img_load("property_panel_light_blue.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue_two, 50, 100, 30, 30)
		elseif a_id = 9 then
			property_panel_light_blue_three := set_background(mp_img_load("property_panel_light_blue.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue_three, 90, 100, 30, 30)
		elseif a_id = 11 then
			property_panel_pink := set_background(mp_img_load("property_panel_pink.png"),30,30);
			extend_with_position_and_size (property_panel_pink, 10, 130, 30, 30)
		elseif a_id = 12 then
			panel_electric_company := set_background(mp_img_load("panel_electric_company.png"),30,30);
			extend_with_position_and_size (panel_electric_company, 160, 190, 30, 30)
		elseif a_id = 13 then
			property_panel_pink_two := set_background(mp_img_load("property_panel_pink.png"),30,30);
			extend_with_position_and_size (property_panel_pink_two, 50, 130, 30, 30)
		elseif a_id = 14 then
			property_panel_pink_three := set_background(mp_img_load("property_panel_pink.png"),30,30);
			extend_with_position_and_size (property_panel_pink_three, 90, 130, 30, 30)
		elseif a_id = 15 then
			panel_railway_two := set_background(mp_img_load("panel_railway.png"),30,30);
			extend_with_position_and_size (panel_railway_two, 200, 160, 30, 30)
		elseif a_id = 16 then
			property_panel_orange := set_background(mp_img_load("property_panel_orange.png"),30,30);
			extend_with_position_and_size (property_panel_orange, 10, 160, 30, 30)
		elseif a_id = 18 then
			property_panel_orange_two := set_background(mp_img_load("property_panel_orange.png"),30,30);
			extend_with_position_and_size (property_panel_orange_two, 50, 160, 30, 30)
		elseif a_id = 19 then
			property_panel_orange_three := set_background(mp_img_load("property_panel_orange.png"),30,30);
			extend_with_position_and_size (property_panel_orange_three, 90, 160, 30, 30)
		elseif a_id = 21 then
			property_panel_red := set_background(mp_img_load("property_panel_red.png"),30,30);
			extend_with_position_and_size (property_panel_red, 10, 190, 30, 30)
		elseif a_id = 23 then
			property_panel_red_two := set_background(mp_img_load("property_panel_red.png"),30,30);
			extend_with_position_and_size (property_panel_red_two, 50, 190, 30, 30)
		elseif a_id = 24 then
			property_panel_red_three := set_background(mp_img_load("property_panel_red.png"),30,30);
			extend_with_position_and_size (property_panel_red_three, 90, 190, 30, 30)
		elseif a_id = 25 then
			panel_railway_three := set_background(mp_img_load("panel_railway.png"),30,30);
			extend_with_position_and_size (panel_railway_three, 240, 160, 30, 30)
		elseif a_id = 26 then
			property_panel_yellow := set_background(mp_img_load("property_panel_yellow.png"),30,30);
			extend_with_position_and_size (property_panel_yellow, 160, 70, 30, 30)
		elseif a_id = 27 then
			property_panel_yellow_two := set_background(mp_img_load("property_panel_yellow.png"),30,30);
			extend_with_position_and_size (property_panel_yellow_two, 200, 70, 30, 30)
		elseif a_id = 28 then
			panel_water_works := set_background(mp_img_load("panel_water_works.png"),30,30);
			extend_with_position_and_size (panel_water_works, 200, 190, 30, 30)
		elseif a_id = 29 then
			property_panel_yellow_three := set_background(mp_img_load("property_panel_yellow.png"),30,30);
			extend_with_position_and_size (property_panel_yellow_three, 240, 70, 30, 30)
		elseif a_id = 31 then
			property_panel_green := set_background(mp_img_load("property_panel_green.png"),30,30);
			extend_with_position_and_size (property_panel_green, 160, 100, 30, 30)
		elseif a_id = 32 then
			property_panel_green_two := set_background(mp_img_load("property_panel_green.png"),30,30);
			extend_with_position_and_size (property_panel_green_two, 200, 100, 30, 30)
		elseif a_id = 34 then
			property_panel_green_three := set_background(mp_img_load("property_panel_green.png"),30,30);
			extend_with_position_and_size (property_panel_green_three, 240, 100, 30, 30)
		elseif a_id = 35 then
			panel_railway_four := set_background(mp_img_load("panel_railway.png"),30,30);
			extend_with_position_and_size (panel_railway_four, 280, 160, 30, 30)
		elseif a_id = 37 then
			property_panel_dark_blue := set_background(mp_img_load("property_panel_dark_blue.png"),30,30);
			extend_with_position_and_size (property_panel_dark_blue, 160, 130, 30, 30)
		elseif a_id = 39 then
			property_panel_dark_blue_two := set_background(mp_img_load("property_panel_dark_blue.png"),30,30);
			extend_with_position_and_size (property_panel_dark_blue_two, 200, 130, 30, 30)
		end
	end

	update_card_get_out_of_jail_community(state : BOOLEAN)
	do
		if state then
			panel_get_out_of_jail_community := set_background(mp_img_load("panel_get_out_of_jail_community.png"),50,30);
			extend_with_position_and_size (panel_get_out_of_jail_community, 300, 70, 50, 30)
		else
			panel_get_out_of_jail_community.destroy
		end
	end

	update_card_get_out_of_jail_chance(state : BOOLEAN)
	do
		if state then
			panel_get_out_of_jail_chance := set_background(mp_img_load("panel_get_out_of_jail_chance.png"),50,30);
			extend_with_position_and_size (panel_get_out_of_jail_chance, 300, 100, 50, 30)
		else
			panel_get_out_of_jail_chance.destroy
		end

	end

	update_mortgage(a_id : INTEGER)
	do
		if a_id = 1 then
			property_panel_brown := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_brown, 10, 70, 30, 30)
		elseif a_id = 3 then
			property_panel_brown_two := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_brown_two, 50, 70, 30, 30)
		elseif a_id = 5 then
			panel_railway := set_background(mp_img_load("panel_railway.png"),30,30);
			extend_with_position_and_size (panel_railway, 160, 160, 30, 30)
		elseif a_id = 6 then
			property_panel_light_blue := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue, 10, 100, 30, 30)
		elseif a_id = 8 then
			property_panel_light_blue_two := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue_two, 50, 100, 30, 30)
		elseif a_id = 9 then
			property_panel_light_blue_three := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue_three, 90, 100, 30, 30)
		elseif a_id = 11 then
			property_panel_pink := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_pink, 10, 130, 30, 30)
		elseif a_id = 12 then
			panel_electric_company := set_background(mp_img_load("panel_mortgaged.png"),30,30);
			extend_with_position_and_size (panel_electric_company, 160, 190, 30, 30)
		elseif a_id = 13 then
			property_panel_pink_two := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_pink_two, 50, 130, 30, 30)
		elseif a_id = 14 then
			property_panel_pink_three := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_pink_three, 90, 130, 30, 30)
		elseif a_id = 15 then
			panel_railway_two := set_background(mp_img_load("panel_mortgaged.png"),30,30);
			extend_with_position_and_size (panel_railway_two, 200, 160, 30, 30)
		elseif a_id = 16 then
			property_panel_orange := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_orange, 10, 160, 30, 30)
		elseif a_id = 18 then
			property_panel_orange_two := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_orange_two, 50, 160, 30, 30)
		elseif a_id = 19 then
			property_panel_orange_three := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_orange_three, 90, 160, 30, 30)
		elseif a_id = 21 then
			property_panel_red := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_red, 10, 190, 30, 30)
		elseif a_id = 23 then
			property_panel_red_two := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_red_two, 50, 190, 30, 30)
		elseif a_id = 24 then
			property_panel_red_three := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_red_three, 90, 190, 30, 30)
		elseif a_id = 25 then
			panel_railway_three := set_background(mp_img_load("panel_mortgaged.png"),30,30);
			extend_with_position_and_size (panel_railway_three, 240, 160, 30, 30)
		elseif a_id = 26 then
			property_panel_yellow := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_yellow, 160, 70, 30, 30)
		elseif a_id = 27 then
			property_panel_yellow_two := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_yellow_two, 200, 70, 30, 30)
		elseif a_id = 28 then
			panel_water_works := set_background(mp_img_load("panel_mortgaged.png"),30,30);
			extend_with_position_and_size (panel_water_works, 200, 190, 30, 30)
		elseif a_id = 29 then
			property_panel_yellow_three := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_yellow_three, 240, 70, 30, 30)
		elseif a_id = 31 then
			property_panel_green := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_green, 160, 100, 30, 30)
		elseif a_id = 32 then
			property_panel_green_two := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_green_two, 200, 100, 30, 30)
		elseif a_id = 34 then
			property_panel_green_three := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_green_three, 240, 100, 30, 30)
		elseif a_id = 35 then
			panel_railway_four := set_background(mp_img_load("panel_mortgaged.png"),30,30);
			extend_with_position_and_size (panel_railway_four, 280, 160, 30, 30)
		elseif a_id = 37 then
			property_panel_dark_blue := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_dark_blue, 160, 130, 30, 30)
		elseif a_id = 39 then
			property_panel_dark_blue_two := set_background(mp_img_load("property_mortgaged.png"),30,30);
			extend_with_position_and_size (property_panel_dark_blue_two, 200, 130, 30, 30)
		end
	end

	update_trade
	do
		-- parametro id cell, id player nuovo proprietario
	end

	update_vision_trade(a_id : INTEGER)
		do
			if a_id = 1 then
			property_panel_brown := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_brown, 10, 70, 30, 30)
		elseif a_id = 3 then
			property_panel_brown_two := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_brown_two, 50, 70, 30, 30)
		elseif a_id = 5 then
			panel_railway := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (panel_railway, 160, 160, 30, 30)
		elseif a_id = 6 then
			property_panel_light_blue := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue, 10, 100, 30, 30)
		elseif a_id = 8 then
			property_panel_light_blue_two := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue_two, 50, 100, 30, 30)
		elseif a_id = 9 then
			property_panel_light_blue_three := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_light_blue_three, 90, 100, 30, 30)
		elseif a_id = 11 then
			property_panel_pink := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_pink, 10, 130, 30, 30)
		elseif a_id = 12 then
			panel_electric_company := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (panel_electric_company, 160, 190, 30, 30)
		elseif a_id = 13 then
			property_panel_pink_two := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_pink_two, 50, 130, 30, 30)
		elseif a_id = 14 then
			property_panel_pink_three := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_pink_three, 90, 130, 30, 30)
		elseif a_id = 15 then
			panel_railway_two := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (panel_railway_two, 200, 160, 30, 30)
		elseif a_id = 16 then
			property_panel_orange := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_orange, 10, 160, 30, 30)
		elseif a_id = 18 then
			property_panel_orange_two := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_orange_two, 50, 160, 30, 30)
		elseif a_id = 19 then
			property_panel_orange_three := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_orange_three, 90, 160, 30, 30)
		elseif a_id = 21 then
			property_panel_red := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_red, 10, 190, 30, 30)
		elseif a_id = 23 then
			property_panel_red_two := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_red_two, 50, 190, 30, 30)
		elseif a_id = 24 then
			property_panel_red_three := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_red_three, 90, 190, 30, 30)
		elseif a_id = 25 then
			panel_railway_three := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (panel_railway_three, 240, 160, 30, 30)
		elseif a_id = 26 then
			property_panel_yellow := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_yellow, 160, 70, 30, 30)
		elseif a_id = 27 then
			property_panel_yellow_two := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_yellow_two, 200, 70, 30, 30)
		elseif a_id = 28 then
			panel_water_works := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (panel_water_works, 200, 190, 30, 30)
		elseif a_id = 29 then
			property_panel_yellow_three := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_yellow_three, 240, 70, 30, 30)
		elseif a_id = 31 then
			property_panel_green := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_green, 160, 100, 30, 30)
		elseif a_id = 32 then
			property_panel_green_two := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_green_two, 200, 100, 30, 30)
		elseif a_id = 34 then
			property_panel_green_three := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_green_three, 240, 100, 30, 30)
		elseif a_id = 35 then
			panel_railway_four := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (panel_railway_four, 280, 160, 30, 30)
		elseif a_id = 37 then
			property_panel_dark_blue := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_dark_blue, 160, 130, 30, 30)
		elseif a_id = 39 then
			property_panel_dark_blue_two := set_background(mp_img_load("property_trade.png"),30,30);
			extend_with_position_and_size (property_panel_dark_blue_two, 200, 130, 30, 30)
		end
	end

	update_money(a_money : INTEGER)
		local
			a_money_string : STRING
		do
			a_money_string := a_money.out
			label_money.set_text ("$ "+a_money_string)
	end

feature {ANY} -- Implementation features update other player

	update_situation(a_player : G1_PLAYER)
		local
			l_deed : G1_DEED
		do
			from
				a_player.properties.start
			until
				a_player.properties.after
			loop
				l_deed := a_player.properties.item
				if l_deed.is_mortgaged then
					update_mortgage(l_deed.id_cell)
				else
					update_buy(l_deed.id_cell)
				end
				a_player.properties.forth
			end
		end

feature {ANY} -- Implementation features click property for trade

	set_popup_trade(a_trade_popup : G1_UI_POPUP_TRADE)
		do
			trade_popup := a_trade_popup
		end

	update_button_property (a_id : INTEGER)
		do
			if a_id = 1 then
				property_panel_brown.pointer_button_release_actions.extend (agent select_property(property_panel_brown,?,?,?,?,?,?,?,?))
		    elseif a_id = 3 then
				property_panel_brown_two.pointer_button_release_actions.extend (agent select_property(property_panel_brown_two,?,?,?,?,?,?,?,?))
		    elseif a_id = 5 then
		    	panel_railway.pointer_button_release_actions.extend (agent select_property(panel_railway,?,?,?,?,?,?,?,?))
	    	elseif a_id = 6 then
				property_panel_light_blue.pointer_button_release_actions.extend (agent select_property(property_panel_light_blue,?,?,?,?,?,?,?,?))
	  		elseif a_id = 8 then
				property_panel_light_blue_two.pointer_button_release_actions.extend (agent select_property(property_panel_light_blue_two,?,?,?,?,?,?,?,?))
			elseif a_id = 9 then
				property_panel_light_blue_three.pointer_button_release_actions.extend (agent select_property(property_panel_light_blue_three,?,?,?,?,?,?,?,?))
			elseif a_id = 11 then
				property_panel_pink.pointer_button_release_actions.extend (agent select_property(property_panel_pink,?,?,?,?,?,?,?,?))
			elseif a_id = 12 then
				panel_electric_company.pointer_button_release_actions.extend (agent select_property(panel_electric_company,?,?,?,?,?,?,?,?))
			elseif a_id = 13 then
				property_panel_pink_two.pointer_button_release_actions.extend (agent select_property(property_panel_pink_two,?,?,?,?,?,?,?,?))
			elseif a_id = 14 then
				property_panel_pink_three.pointer_button_release_actions.extend (agent select_property(property_panel_pink_three,?,?,?,?,?,?,?,?))
			elseif a_id = 15 then
				panel_railway_two.pointer_button_release_actions.extend (agent select_property(panel_railway_two,?,?,?,?,?,?,?,?))
			elseif a_id = 16 then
				property_panel_orange.pointer_button_release_actions.extend (agent select_property(property_panel_orange,?,?,?,?,?,?,?,?))
			elseif a_id = 18 then
				property_panel_orange_two.pointer_button_release_actions.extend (agent select_property(property_panel_orange_two,?,?,?,?,?,?,?,?))
			elseif a_id = 19 then
				property_panel_orange_three.pointer_button_release_actions.extend (agent select_property(property_panel_orange_three,?,?,?,?,?,?,?,?))
			elseif a_id = 21 then
				property_panel_red.pointer_button_release_actions.extend (agent select_property(property_panel_red,?,?,?,?,?,?,?,?))
			elseif a_id = 23 then
				property_panel_red_two.pointer_button_release_actions.extend (agent select_property(property_panel_red_two,?,?,?,?,?,?,?,?))
			elseif a_id = 24 then
				property_panel_red_three.pointer_button_release_actions.extend (agent select_property(property_panel_red_three,?,?,?,?,?,?,?,?))
			elseif a_id = 25 then
				panel_railway_three.pointer_button_release_actions.extend (agent select_property(panel_railway_three,?,?,?,?,?,?,?,?))
			elseif a_id = 26 then
				property_panel_yellow.pointer_button_release_actions.extend (agent select_property(property_panel_yellow,?,?,?,?,?,?,?,?))
			elseif a_id = 27 then
				property_panel_yellow_two.pointer_button_release_actions.extend (agent select_property(property_panel_yellow_two,?,?,?,?,?,?,?,?))
			elseif a_id = 28 then
				panel_water_works.pointer_button_release_actions.extend (agent select_property(panel_water_works,?,?,?,?,?,?,?,?))
			elseif a_id = 29 then
				property_panel_yellow_three.pointer_button_release_actions.extend (agent select_property(property_panel_yellow_three,?,?,?,?,?,?,?,?))
			elseif a_id = 31 then
				property_panel_green.pointer_button_release_actions.extend (agent select_property(property_panel_green,?,?,?,?,?,?,?,?))
			elseif a_id = 32 then
				property_panel_green_two.pointer_button_release_actions.extend (agent select_property(property_panel_green_two,?,?,?,?,?,?,?,?))
			elseif a_id = 34 then
				property_panel_green_three.pointer_button_release_actions.extend (agent select_property(property_panel_green_three,?,?,?,?,?,?,?,?))
			elseif a_id = 35 then
				panel_railway_four.pointer_button_release_actions.extend (agent select_property(panel_railway_four,?,?,?,?,?,?,?,?))
			elseif a_id = 37 then
				property_panel_dark_blue.pointer_button_release_actions.extend (agent select_property(property_panel_dark_blue,?,?,?,?,?,?,?,?))
			elseif a_id = 39 then
				property_panel_dark_blue_two.pointer_button_release_actions.extend (agent select_property(property_panel_dark_blue_two,?,?,?,?,?,?,?,?))
		end

	end

	update_button_card(a_id : INTEGER)
		do
			if a_id = 100 then
				panel_get_out_of_jail_chance.pointer_button_release_actions.extend (agent select_property(panel_get_out_of_jail_chance,?,?,?,?,?,?,?,?))
			elseif a_id = 200 then
				panel_get_out_of_jail_community.pointer_button_release_actions.extend (agent select_property(panel_get_out_of_jail_community,?,?,?,?,?,?,?,?))
			end
		end

	select_property(a_property: EV_FIXED; a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		local
		do
			if a_property = property_panel_brown then
				trade_popup.set_deed_player (1,"Mediteranean Avenue", Current)
			elseif a_property = property_panel_brown_two then
				trade_popup.set_deed_player (3,"Baltic Avenue", Current)
			elseif a_property = property_panel_light_blue then
				trade_popup.set_deed_player (6,"Oriental Avenue", Current)
			elseif a_property = property_panel_light_blue_two then
				trade_popup.set_deed_player (8,"Vermont Avenue", Current)
			elseif a_property = property_panel_light_blue_three then
				trade_popup.set_deed_player (9,"Connecticut Avenue", Current)
			elseif a_property = property_panel_pink then
				trade_popup.set_deed_player (11,"St. Charles Place", Current)
			elseif a_property = property_panel_pink_two then
				trade_popup.set_deed_player (13,"States Avenue", Current)
			elseif a_property = property_panel_pink_three then
				trade_popup.set_deed_player (14,"Virginia Avenue", Current)
			elseif a_property = property_panel_orange then
				trade_popup.set_deed_player (16,"St. James Place", Current)
			elseif a_property = property_panel_orange_two then
				trade_popup.set_deed_player (18,"Tennessee Avenue", Current)
			elseif a_property = property_panel_orange_three then
				trade_popup.set_deed_player (19,"New York Avenue", Current)
			elseif a_property = property_panel_red then
				trade_popup.set_deed_player (21,"Kentucky Avenue", Current)
			elseif a_property = property_panel_red_two then
				trade_popup.set_deed_player (23,"Indiana Avenue", Current)
			elseif a_property = property_panel_red_three then
				trade_popup.set_deed_player (24,"Illinois Avenue", Current)
			elseif a_property = property_panel_yellow then
				trade_popup.set_deed_player (26,"Atlantic Avenue", Current)
			elseif a_property = property_panel_yellow_two then
				trade_popup.set_deed_player (27,"Ventnor Avenue", Current)
			elseif a_property = property_panel_yellow_three then
				trade_popup.set_deed_player (29,"Marvin Gardens", Current)
			elseif a_property = property_panel_green then
				trade_popup.set_deed_player (31,"Pacific Avenue", Current)
			elseif a_property = property_panel_green_two then
				trade_popup.set_deed_player (32,"North Carolina Avenue", Current)
			elseif a_property = property_panel_green_three then
				trade_popup.set_deed_player (34,"Pennsylvania Avenue", Current)
			elseif a_property = property_panel_dark_blue then
				trade_popup.set_deed_player (37,"Park Place", Current)
			elseif a_property = property_panel_dark_blue_two then
				trade_popup.set_deed_player (39,"Boardwalk", Current)
			elseif a_property = panel_railway then
				trade_popup.set_deed_player (5,"Reading Railroad", Current)
			elseif a_property = panel_railway_two then
				trade_popup.set_deed_player (15,"Pennsylvania Railroad", Current)
			elseif a_property = panel_railway_three then
				trade_popup.set_deed_player (25,"B.O. Railroad", Current)
			elseif a_property = panel_railway_four then
				trade_popup.set_deed_player (35,"Short Line Railroad", Current)
		    elseif a_property = panel_electric_company then
				trade_popup.set_deed_player (12,"Electric Company", Current)
			elseif a_property = panel_water_works then
				trade_popup.set_deed_player (28,"Water Works", Current)
			elseif a_property = panel_get_out_of_jail_chance then
				trade_popup.set_card_player("chance",22,Current)
			elseif a_property = panel_get_out_of_jail_community then
				trade_popup.set_card_player("chest",3,Current)
			end
		end

end
