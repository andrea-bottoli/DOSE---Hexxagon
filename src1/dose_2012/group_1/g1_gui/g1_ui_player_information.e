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

    player_id : INTEGER
    player_name : STRING
    player_money : INTEGER
    property_brown_state : STRING
	property_brown_two : STRING
	property_light_blu_statee : STRING
	property_light_blue_two_state : STRING
	property_light_blue_three_state : STRING
	property_pink_state : STRING
	property_pink_two_state : STRING
	property_pink_three_state : STRING
	property_orange_state : STRING
	property_orange_two_state : STRING
	property_orange_three_state : STRING
	property_red_state : STRING
	property_red_two_state : STRING
	property_red_three_state : STRING
	property_yellow_state : STRING
	property_yellow_two_state : STRING
	property_yellow_three_state : STRING
	property_green_state : STRING
	property_green_two_state : STRING
	property_green_three_state : STRING
	property_dark_blue_state : STRING
	property_dark_blue_two_state : STRING
	panel_railway_state : STRING
	panel_railway_two_state : STRING
	panel_railway_three_state : STRING
	panel_railway_four_state : STRING
	panel_electric_company_state : STRING
    panel_water_works_state : STRING
    panel_get_out_of_jail_state : STRING


feature {NONE} -- Initialization

	make(a_player_id : INTEGER; a_player_name : STRING)
	local
		pixmap : EV_PIXMAP
		do
			default_create()
			create pixmap
		   	pixmap.set_with_named_file (file_system.pathname_to_string (mp_img_load("background_gameboard.png")))
			Current.set_background_pixmap (pixmap)

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

feature {ANY} -- Implementation features update

	update_buy
	do

	end

	update_card_get_out_of_jail_community(state : BOOLEAN)
	do
		if state then
			panel_get_out_of_jail_community := set_background(mp_img_load("panel_get_out_of_jail_community.png"),50,30);
			extend_with_position_and_size (panel_get_out_of_jail_community, 300, 70, 50, 30)
		else
			panel_get_out_of_jail_community.remove_background_pixmap
		end
	end

	update_card_get_out_of_jail_chance(state : BOOLEAN)
	do
		if state then
			panel_get_out_of_jail_chance := set_background(mp_img_load("panel_get_out_of_jail_chance.png"),50,30);
			extend_with_position_and_size (panel_get_out_of_jail_chance, 300, 100, 50, 30)
		else
			panel_get_out_of_jail_chance.remove_background_pixmap
		end

	end

	update_mortgage
	do
		-- parametro id cell
	end

	update_trade
	do
		-- parametro id cell, id player nuovo proprietario
	end

	update_money(a_money : INTEGER)
		local
			a_money_string : STRING
		do
			a_money_string := a_money.out
			label_money.set_text ("$ "+a_money_string)
	end

end
