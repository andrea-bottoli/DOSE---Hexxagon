note
	description: "Summary description for {G1_UI_POPUP_MORTGAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G1_UI_POPUP_MANAGE_PROPERTIES
inherit
	G1_UI_POPUP
		undefine
			copy, default_create
		end
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G1_UI_CONSTANTS
	    export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Attributes

    label_screen : EV_LABEL

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
    panel_get_out_of_jail : EV_FIXED

    property_brown : EV_LABEL
	property_brown_two : EV_LABEL
	property_light_blu: EV_LABEL
	property_light_blue_two : EV_LABEL
	property_light_blue_three : EV_LABEL
	property_pink : EV_LABEL
	property_pink_two : EV_LABEL
	property_pink_three : EV_LABEL
	property_orange : EV_LABEL
	property_orange_two : EV_LABEL
	property_orange_three : EV_LABEL
	property_red : EV_LABEL
	property_red_two : EV_LABEL
	property_red_three : EV_LABEL
	property_yellow : EV_LABEL
	property_yellow_two : EV_LABEL
	property_yellow_three : EV_LABEL
	property_green : EV_LABEL
	property_green_two : EV_LABEL
	property_green_three : EV_LABEL
	property_dark_blue : EV_LABEL
	property_dark_blue_two : EV_LABEL
	railway : EV_LABEL
	railway_two : EV_LABEL
	railway_three : EV_LABEL
	railway_four : EV_LABEL
	electric_company : EV_LABEL
    water_works : EV_LABEL

feature {NONE} -- Initialization

	make(a_controller : G1_UI_CONTROLLER )
	do
		controller := a_controller
		make_with_title (Popup_manage_title)

		set_x_position (20)
		set_y_position ((screen_height // 2) - (Window_height // 2))

			-- set the size of the window
	    set_height (Popup_manage_height)
		set_width (Popup_manage_width)

		disable_user_resize
	end

	initialize
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend(agent request_close_popup(current))

		popup_area := set_background(mp_img_load("background_gameboard.png"),0,0);

		create label_screen
		label_screen.set_background_color (GREEN)
		label_screen.set_text ("Select a property!")
		label_screen.align_text_center
		popup_area.extend_with_position_and_size (label_screen, 5, 5, 100, 20)

		property_panel_brown := set_background(mp_img_load("property_panel_brown_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_brown, 5, 35, 30, 30)
		create property_brown
		property_brown.set_background_color (GREEN)
		property_brown.set_text ("Mediteranean Avenue")
		property_brown.align_text_center
		popup_area.extend_with_position_and_size (property_brown, 40, 35, 120, 20)
		property_panel_brown.pointer_button_release_actions.extend (agent open_property(property_panel_brown,?,?,?,?,?,?,?,?))

		property_panel_brown_two := set_background(mp_img_load("property_panel_brown_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_brown_two, 170, 35, 30, 30)
		create property_brown_two
		property_brown_two.set_background_color (GREEN)
		property_brown_two.set_text ("Baltic Avenue")
		property_brown_two.align_text_center
		popup_area.extend_with_position_and_size (property_brown_two, 205, 35, 120, 20)

		property_panel_light_blue := set_background(mp_img_load("property_panel_light_blue_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_light_blue, 5, 70, 30, 30)
		create property_light_blu
		property_light_blu.set_background_color (GREEN)
		property_light_blu.set_text ("Oriental Avenue")
		property_light_blu.align_text_center
		popup_area.extend_with_position_and_size (property_light_blu, 40, 70, 120, 20)

		property_panel_light_blue_two := set_background(mp_img_load("property_panel_light_blue_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_light_blue_two, 170, 70, 30, 30)
		create property_light_blue_two
		property_light_blue_two.set_background_color (GREEN)
		property_light_blue_two.set_text ("Vermont Avenue")
		property_light_blue_two.align_text_center
		popup_area.extend_with_position_and_size (property_light_blue_two, 205, 70, 120, 20)

		property_panel_light_blue_three := set_background(mp_img_load("property_panel_light_blue_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_light_blue_three, 335, 70, 30, 30)
		create property_light_blue_three
		property_light_blue_three.set_background_color (GREEN)
		property_light_blue_three.set_text ("Connecticut Avenue")
		property_light_blue_three.align_text_center
		popup_area.extend_with_position_and_size (property_light_blue_three, 370, 70, 120, 20)

		property_panel_pink := set_background(mp_img_load("property_panel_pink_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_pink, 5, 105, 30, 30)
		create property_pink
		property_pink.set_background_color (GREEN)
		property_pink.set_text ("St. Charles Place")
		property_pink.align_text_center
		popup_area.extend_with_position_and_size (property_pink, 40, 105, 120, 20)

		property_panel_pink_two := set_background(mp_img_load("property_panel_pink_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_pink_two, 170, 105, 30, 30)
		create property_pink_two
		property_pink_two.set_background_color (GREEN)
		property_pink_two.set_text ("States Avenue")
		property_pink_two.align_text_center
		popup_area.extend_with_position_and_size (property_pink_two, 205, 105, 120, 20)

		property_panel_pink_three := set_background(mp_img_load("property_panel_pink_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_pink_three, 335, 105, 30, 30)
		create property_light_blue_three
		property_light_blue_three.set_background_color (GREEN)
		property_light_blue_three.set_text ("Virginia Avenue")
		property_light_blue_three.align_text_center
		popup_area.extend_with_position_and_size (property_light_blue_three, 370, 105, 120, 20)

		property_panel_orange := set_background(mp_img_load("property_panel_orange_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_orange, 5, 140, 30, 30)
		create property_orange
		property_orange.set_background_color (GREEN)
		property_orange.set_text ("St. James Place")
		property_orange.align_text_center
		popup_area.extend_with_position_and_size (property_orange, 40, 140, 120, 20)

		property_panel_orange_two := set_background(mp_img_load("property_panel_orange_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_orange_two, 170, 140, 30, 30)
		create property_orange_two
		property_orange_two.set_background_color (GREEN)
		property_orange_two.set_text ("Tennessee Avenue")
		property_orange_two.align_text_center
		popup_area.extend_with_position_and_size (property_orange_two, 205, 140, 120, 20)

		property_panel_orange_three := set_background(mp_img_load("property_panel_orange_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_orange_three, 335, 140, 30, 30)
		create property_orange_three
		property_orange_three.set_background_color (GREEN)
		property_orange_three.set_text ("New York Avenue")
		property_orange_three.align_text_center
		popup_area.extend_with_position_and_size (property_orange_three, 370, 140, 120, 20)

		property_panel_red := set_background(mp_img_load("property_panel_red_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_red, 5, 175, 30, 30)
		create property_red
		property_red.set_background_color (GREEN)
		property_red.set_text ("Kentucky Avenue")
		property_red.align_text_center
		popup_area.extend_with_position_and_size (property_red, 40, 175, 120, 20)

		property_panel_red_two := set_background(mp_img_load("property_panel_red_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_red_two, 170, 175, 30, 30)
		create property_red_two
		property_red_two.set_background_color (GREEN)
		property_red_two.set_text ("Indiana Avenue")
		property_red_two.align_text_center
		popup_area.extend_with_position_and_size (property_red_two, 205, 175, 120, 20)

		property_panel_red_three := set_background(mp_img_load("property_panel_red_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_red_three, 335, 175, 30, 30)
		create property_red_three
		property_red_three.set_background_color (GREEN)
		property_red_three.set_text ("Illinois Avenue")
		property_red_three.align_text_center
		popup_area.extend_with_position_and_size (property_red_three, 370, 175, 120, 20)

		property_panel_yellow := set_background(mp_img_load("property_panel_yellow_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_yellow, 5, 210, 30, 30)
		create property_yellow
		property_yellow.set_background_color (GREEN)
		property_yellow.set_text ("Atlantic Avenue")
		property_yellow.align_text_center
		popup_area.extend_with_position_and_size (property_yellow, 40, 210, 120, 20)

		property_panel_yellow_two := set_background(mp_img_load("property_panel_yellow_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_yellow_two, 170, 210, 30, 30)
		create property_yellow_two
		property_yellow_two.set_background_color (GREEN)
		property_yellow_two.set_text ("Ventnor Avenue")
		property_yellow_two.align_text_center
		popup_area.extend_with_position_and_size (property_yellow_two, 205, 210, 120, 20)

		property_panel_yellow_three := set_background(mp_img_load("property_panel_yellow_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_yellow_three, 335, 210, 30, 30)
		create property_yellow_three
		property_yellow_three.set_background_color (GREEN)
		property_yellow_three.set_text ("Marvin Gardens")
		property_yellow_three.align_text_center
		popup_area.extend_with_position_and_size (property_yellow_three, 370, 210, 120, 20)

		property_panel_green := set_background(mp_img_load("property_panel_green_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_green, 5, 245, 30, 30)
		create property_green
		property_green.set_background_color (GREEN)
		property_green.set_text ("Pacific Avenue")
		property_green.align_text_center
		popup_area.extend_with_position_and_size (property_green, 40, 245, 120, 20)

		property_panel_green_two := set_background(mp_img_load("property_panel_green_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_green_two, 170, 245, 30, 30)
		create property_green_two
		property_green_two.set_background_color (GREEN)
		property_green_two.set_text ("North Carolina Avenue")
		property_green_two.align_text_center
		popup_area.extend_with_position_and_size (property_green_two, 205, 245, 120, 20)

		property_panel_green_three := set_background(mp_img_load("property_panel_green_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_green_three, 335, 245, 30, 30)
		create property_green_three
		property_green_three.set_background_color (GREEN)
		property_green_three.set_text ("Pennsylvania Avenue")
		property_green_three.align_text_center
		popup_area.extend_with_position_and_size (property_green_three, 370, 245, 120, 20)

		property_panel_dark_blue := set_background(mp_img_load("property_panel_dark_blue_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_dark_blue, 5, 280, 30, 30)
		create property_dark_blue
		property_dark_blue.set_background_color (GREEN)
		property_dark_blue.set_text ("Park Place")
		property_dark_blue.align_text_center
		popup_area.extend_with_position_and_size (property_dark_blue, 40, 280, 120, 20)

		property_panel_dark_blue_two := set_background(mp_img_load("property_panel_dark_blue_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (property_panel_dark_blue_two, 170, 280, 30, 30)
		create property_dark_blue_two
		property_dark_blue_two.set_background_color (GREEN)
		property_dark_blue_two.set_text ("Boardwalk")
		property_dark_blue_two.align_text_center
		popup_area.extend_with_position_and_size (property_dark_blue_two, 205, 280, 120, 20)

		panel_railway := set_background(mp_img_load("panel_railway_not_owned.png"),30,30);
	    popup_area.extend_with_position_and_size (panel_railway, 5, 315, 30, 30)
		create railway
		railway.set_background_color (GREEN)
		railway.set_text ("Reading Railroad")
		railway.align_text_center
		popup_area.extend_with_position_and_size (railway, 40, 315, 120, 20)

		panel_railway_two := set_background(mp_img_load("panel_railway_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (panel_railway_two, 170, 315, 30, 30)
		create railway_two
		railway_two.set_background_color (GREEN)
		railway_two.set_text ("Pensylvania Railroad")
		railway_two.align_text_center
		popup_area.extend_with_position_and_size (railway_two, 205, 315, 120, 20)

		panel_railway_three := set_background(mp_img_load("panel_railway_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (panel_railway_three, 335, 315, 30, 30)
		create railway_three
		railway_three.set_background_color (GREEN)
		railway_three.set_text ("B.O. Railroad")
		railway_three.align_text_center
		popup_area.extend_with_position_and_size (railway_three, 370, 315, 120, 20)

		panel_railway_four := set_background(mp_img_load("panel_railway_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (panel_railway_four, 500, 315, 30, 30)
		create railway_four
		railway_four.set_background_color (GREEN)
		railway_four.set_text ("Short Line")
		railway_four.align_text_center
		popup_area.extend_with_position_and_size (railway_four, 535, 315, 120, 20)

		panel_electric_company := set_background(mp_img_load("panel_utility_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (panel_electric_company, 5, 350, 30, 30)
		create electric_company
		electric_company.set_background_color (GREEN)
		electric_company.set_text ("Electric Company")
		electric_company.align_text_center
		popup_area.extend_with_position_and_size (electric_company, 40, 350, 120, 20)

		panel_water_works := set_background(mp_img_load("panel_utility_not_owned.png"),30,30);
		popup_area.extend_with_position_and_size (panel_water_works, 170, 350, 30, 30)
		create water_works
		water_works.set_background_color (GREEN)
		water_works.set_text ("Water Works")
		water_works.align_text_center
		popup_area.extend_with_position_and_size (water_works, 205, 350, 120, 20)

		extend(popup_area)

	end

feature {NONE} -- Implementation features buttons

	open_property(a_property: EV_FIXED; a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		local
			std_popup : G1_UI_POPUP_STD
		do
			-- cell := controller.chiediAllaLogicaDeed(id chiesto)
			-- attached che tipo di cell è
	--		create std_popup.make (controller, )
	--		std_popup.show
			create std_popup.make_prova (controller, 1)   -- DA ELIMINARE, SOLO DI PROVA
			std_popup.show                                -- DA ELIMINARE SOLO DI PROVA
		end
end
