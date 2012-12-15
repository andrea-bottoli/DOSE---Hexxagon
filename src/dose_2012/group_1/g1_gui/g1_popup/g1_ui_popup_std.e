note
	description: "Summary description for {G1_UI_POPUP_STD}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_UI_POPUP_STD
	--- It's a Graphical Inteface

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
	make_property, make_deed, make_street, make_society, make_prova

feature {NONE}	-- Attributes

	card_area : EV_FIXED

	btn_auction : EV_BUTTON
	btn_buy_property : EV_BUTTON
	btn_buy_house : EV_BUTTON
	btn_buy_hotel : EV_BUTTON
	btn_pay_rent : EV_BUTTON
	btn_mortgage : EV_BUTTON
	btn_unmortgage : EV_BUTTON
	btn_sell_property : EV_BUTTON
	btn_sell_house : EV_BUTTON
	btn_sell_hotel : EV_BUTTON

	label_owner: EV_LABEL
	label_owner_name: EV_LABEL
	label_status: EV_LABEL
	label_status_property: EV_LABEL
	label_house: EV_LABEL
	label_house_number : EV_LABEL
	label_hotel : EV_LABEL
	label_hotel_number : EV_LABEL

	deed : G1_DEED
	street: G1_STREET

feature {NONE} -- Initialization

	make_prova(a_controller : G1_UI_CONTROLLER; p_id : INTEGER )   -- DA ELIMINARE, SOLO DI PROVA
	do
		controller := a_controller
		make_title(p_id)
		set_dimension
		set_house_hotel

		set_button_manage

		create btn_buy_house.make_with_text ("Buy House")
		popup_area.extend_with_position_and_size (btn_buy_house, 10, 220, 80, 30)
		btn_buy_house.select_actions.extend (agent buy_house)

		create btn_buy_hotel.make_with_text ("Buy Hotel")
		popup_area.extend_with_position_and_size (btn_buy_hotel, 105, 220, 80, 30)
		btn_buy_hotel.select_actions.extend (agent buy_hotel)

		create btn_sell_house.make_with_text ("Sell House")
		popup_area.extend_with_position_and_size (btn_sell_house, 10, 260, 80, 30)
		btn_sell_house.select_actions.extend (agent sell_house)

		create btn_sell_hotel.make_with_text ("Sell Hotel")
		popup_area.extend_with_position_and_size (btn_sell_hotel, 105, 260, 80, 30)
		btn_sell_hotel.select_actions.extend (agent sell_hotel)
	end   -- ELIMINA FINO A QUA

	make_property(a_controller : G1_UI_CONTROLLER; a_street : G1_STREET )  -- da usare quando dopo ROLL DICE viene visualizzata una casella di arrivo che è una strada
		do
			controller := a_controller
		    make_title(a_street.id_cell)
			set_dimension
			set_button
			set_house_hotel
			deed := a_street
		end

	make_deed(a_controller : G1_UI_CONTROLLER; a_deed : G1_DEED )   -- da usare quando dopo ROLL DICE viene visualizzata una casella di arrivo che è una stazione o una società
		do
			controller := a_controller
		    make_title(a_deed.id_cell)
			set_dimension
			set_button
			deed := a_deed
		end

	make_street(a_controller : G1_UI_CONTROLLER; a_street : G1_STREET )   -- da usare quando si apre il popup di una strada da MANAGE-HOUSE-HOTEL
	local
		l_player : G1_PLAYER
	do
		controller := a_controller
		make_title(a_street.id_cell)
		set_dimension
		deed := a_street

		set_house_hotel
		set_button_manage

		create btn_buy_house.make_with_text ("Buy House")
		popup_area.extend_with_position_and_size (btn_buy_house, 10, 220, 80, 30)
		btn_buy_house.select_actions.extend (agent buy_house)

		create btn_buy_hotel.make_with_text ("Buy Hotel")
		popup_area.extend_with_position_and_size (btn_buy_hotel, 105, 220, 80, 30)
		btn_buy_hotel.select_actions.extend (agent buy_hotel)

		create btn_sell_house.make_with_text ("Sell House")
		popup_area.extend_with_position_and_size (btn_sell_house, 10, 260, 80, 30)
		btn_sell_house.select_actions.extend (agent sell_house)

		create btn_sell_hotel.make_with_text ("Sell Hotel")
		popup_area.extend_with_position_and_size (btn_sell_hotel, 105, 260, 80, 30)
		btn_sell_hotel.select_actions.extend (agent sell_hotel)

	end

	make_society(a_controller : G1_UI_CONTROLLER; a_deed : G1_DEED ) -- da usare quando si apre il popup di una stazione\società da MANAGE-HOUSE-HOTEL
		do
			controller := a_controller
			make_title(a_deed.id_cell)
			set_dimension
			deed := a_deed
			set_button_manage
		end

	initialize
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend(agent request_close_popup(current))

		popup_area := set_background(mp_img_load("background_gameboard.png"),0,0);

		create label_owner
		label_owner.set_background_color (GREEN)
		label_owner.set_text ("Owner:")
		label_owner.align_text_center
		popup_area.extend_with_position_and_size (label_owner, 170, 5, 50, 20)

		create label_owner_name
		label_owner_name.set_background_color (GREEN)
		label_owner_name.set_text ("NOME PROVA")
		label_owner_name.align_text_center
		popup_area.extend_with_position_and_size (label_owner_name, 220, 5, 80, 20)

		create label_status
		label_status.set_background_color (GREEN)
		label_status.set_text ("Status:")
		label_status.align_text_center
		popup_area.extend_with_position_and_size (label_status, 170, 25, 50, 20)

		create label_status_property
		label_status_property.set_background_color (GREEN)
		label_status_property.set_text ("STATO PROVA")
		label_status_property.align_text_center
		popup_area.extend_with_position_and_size (label_status_property, 220, 25, 80, 20)

		extend(popup_area)
	end

feature {NONE} -- Implementation creation

	make_title(id : INTEGER)
		do
			if id = 1 then
			make_with_title ("Mediteranean Avenue")
			card_area := set_background(mp_img_load("deed_mediterranean_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 3 then
			make_with_title ("Baltic Avenue")
			card_area := set_background(mp_img_load("deed_baltic_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 6 then
			make_with_title ("Oriental Avenue")
			card_area := set_background(mp_img_load("deed_oriental_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 8 then
			make_with_title ("Vermont Avenue")
			card_area := set_background(mp_img_load("deed_vermont_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 9 then
			make_with_title ("Connecticut Avenue")
			card_area := set_background(mp_img_load("deed_connecticut_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 11 then
			make_with_title ("St. Charles Place")
			card_area := set_background(mp_img_load("deed_st_charles_place.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 13 then
			make_with_title ("States Avenue")
			card_area := set_background(mp_img_load("deed_states_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 14 then
			make_with_title ("Virginia Avenue")
			card_area := set_background(mp_img_load("deed_virginia_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 16 then
			make_with_title ("St. James Place")
			card_area := set_background(mp_img_load("deed_st_james_place.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 18 then
			make_with_title ("Tennessee Avenue")
			card_area := set_background(mp_img_load("deed_tennessee_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 19 then
			make_with_title ("New York Avenue")
			card_area := set_background(mp_img_load("deed_new_york_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 21 then
			make_with_title ("Kentucky Avenue")
			card_area := set_background(mp_img_load("deed_kentucky_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 23 then
			make_with_title ("Indiana Avenue")
			card_area := set_background(mp_img_load("deed_indiana_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 24 then
			make_with_title ("Illinois Avenue")
			card_area := set_background(mp_img_load("deed_illinois_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 26 then
			make_with_title ("Atlantic Avenue")
			card_area := set_background(mp_img_load("deed_atlantic_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 27 then
			make_with_title ("Ventnor Avenue")
			card_area := set_background(mp_img_load("deed_ventnor_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 29 then
			make_with_title ("Marvin Gardens")
			card_area := set_background(mp_img_load("deed_marvin_gardens.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 31 then
			make_with_title ("Pacific Avenue")
			card_area := set_background(mp_img_load("deed_pacific_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 32 then
			make_with_title ("North Carolina Avenue")
			card_area := set_background(mp_img_load("deed_north_carolina_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 34 then
			make_with_title ("Pennsylvania Avenue")
			card_area := set_background(mp_img_load("deed_pennsylvania_avenue.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 37 then
			make_with_title ("Park Place")
			card_area := set_background(mp_img_load("deed_park_place.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 39 then
			make_with_title ("Boardwalk")
			card_area := set_background(mp_img_load("deed_boardwalk.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 12 then
			make_with_title ("Electric Company")
			card_area := set_background(mp_img_load("deed_electric_company.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 28 then
			make_with_title ("Water Works")
			card_area := set_background(mp_img_load("deed_water_works.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 5 then
			make_with_title ("Reading Railroad")
			card_area := set_background(mp_img_load("deed_reading_railroad.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 15 then
			make_with_title ("Pennsylvania Railroad")
			card_area := set_background(mp_img_load("deed_pennsylvania_railroad.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 25 then
			make_with_title ("B.O. Railroad")
			card_area := set_background(mp_img_load("deed_b_o_railroad.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			elseif id = 35 then
			make_with_title ("Short Line Railroad")
			card_area := set_background(mp_img_load("deed_short_line_railroad.png"),160,160);
			popup_area.extend_with_position_and_size (card_area, 5, 5, 160, 160)
			end
	    end

	set_dimension
		do
			set_x_position (800)
			set_y_position ((screen_height // 2) - (Window_height // 2))

			-- set the size of the window
	    	set_height (Popup_std_height)
			set_width (Popup_std_width)

			disable_user_resize
		end

	set_button
		do
			create btn_buy_property.make_with_text ("Buy Property")
			popup_area.extend_with_position_and_size (btn_buy_property, 10, 180, 80, 30)
			btn_buy_property.select_actions.extend (agent buy_property)

			create btn_pay_rent.make_with_text ("Pay Rent")
			popup_area.extend_with_position_and_size (btn_pay_rent, 105, 180, 80, 30)
			btn_pay_rent.select_actions.extend (agent pay_rent)

			create btn_auction.make_with_text ("Auction")
			popup_area.extend_with_position_and_size (btn_auction, 200, 180, 80, 30)
			btn_auction.select_actions.extend (agent auction)
		end

	set_house_hotel
		do
			create label_house
			label_house.set_background_color (GREEN)
			label_house.set_text ("  House:")
			label_house.align_text_center
			popup_area.extend_with_position_and_size (label_house, 170, 45, 40, 20)

			create label_house_number
			label_house_number.set_background_color (GREEN)
			label_house_number.set_text ("0")
			label_house_number.align_text_center
			popup_area.extend_with_position_and_size (label_house_number, 210, 45, 20, 20)

			create label_hotel
			label_hotel.set_background_color (GREEN)
			label_hotel.set_text (" Hotel:")
			label_hotel.align_text_center
			popup_area.extend_with_position_and_size (label_hotel, 170, 65, 40, 20)

			create label_hotel_number
			label_hotel_number.set_background_color (GREEN)
			label_hotel_number.set_text ("0")
			label_hotel_number.align_text_center
			popup_area.extend_with_position_and_size (label_hotel_number, 210, 65, 20, 20)
		end

	set_button_manage
		do
			create btn_sell_property.make_with_text ("Sell Property")
			popup_area.extend_with_position_and_size (btn_sell_property, 10, 180, 80, 30)
			btn_sell_property.select_actions.extend (agent sell_property)

			create btn_mortgage.make_with_text ("Mortgage")
			popup_area.extend_with_position_and_size (btn_mortgage, 105, 180, 80, 30)
			btn_mortgage.select_actions.extend (agent mortgage)

			create btn_unmortgage.make_with_text ("Unmortgage")
			popup_area.extend_with_position_and_size (btn_unmortgage, 200, 180, 80, 30)
			btn_unmortgage.select_actions.extend (agent unmortgage)
		end

feature {NONE} -- Implementation features buttons

	auction
		-- open the popup_auction
		local
			auction_popup : G1_UI_POPUP_AUCTION
		do
		    create auction_popup.make(controller)
			auction_popup.show
		end

	buy_property
		do
			controller.buy_property (deed)
		end

	buy_house
		do
			controller.build(street)
		end

	buy_hotel
		do
			controller.build(street)
		end

	sell_property
		do
			controller.sell_property(deed)
		end

	sell_house
		do
			controller.sell_hotel_house(street)
		end

	sell_hotel
		do
			controller.sell_hotel_house(street)
		end

	pay_rent
		do
			controller.pay_rent
		end

	mortgage
		do
			controller.mortgage (deed)
			-- update immagine
		end

	unmortgage
		do
			controller.unmortgage (deed)
			-- update immagine
		end
end
