note
	description: "Summary description for {G1_UI_POPUP_SPECIAL}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_UI_POPUP_SPECIAL
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

create make, make_prova

feature {NONE}	-- Attributes

	btn_ok : EV_BUTTON
	btn_pay : EV_BUTTON

	card_area : EV_FIXED

	non_deed : G1_NON_DEED

	card : G1_CARD

	id : INTEGER

feature {NONE} -- Initialization

	make_prova(a_controller : G1_UI_CONTROLLER; a_id: INTEGER)   -- solo per testare le GUI create
		do
			controller := a_controller
			id := a_id
			default_create

			set_x_position ((screen_width // 2) - (Window_width // 2))
			set_y_position ((screen_height // 2) - (Window_height // 2))
			disable_user_resize
		end

	make(a_controller : G1_UI_CONTROLLER; a_non_deed : G1_NON_DEED)   -- corretto
		do
			controller := a_controller
			non_deed := a_non_deed
			default_create

			set_x_position ((screen_width // 2) - (Window_width // 2))
			set_y_position ((screen_height // 2) - (Window_height // 2))

			disable_user_resize
		end

	initialize
		do
			Precursor {EV_TITLED_WINDOW}

		 --   id := non_deed.id_cell    corretto da scommentare quando testato le gui di tutte le special card

		    if id = 0 then
		    	popup_area := set_background(mp_img_load("pass_go.png"),0,0);
		    	current.set_title (Popup_special_title+" - Pass Go")
		    	set_height (410)
				set_width (520)
				close_request_actions.extend(agent close)
			elseif id = 1 then  -- Community Chest
				current.set_title (Popup_special_title+" - Community Chest")
				card := controller.get_card (1)
				if card.id = 0 then
					popup_area := set_background(mp_img_load("chest_holiday.png"),0,0);
		            set_height (250)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 1 then
					popup_area := set_background(mp_img_load("chest_bank_error.png"),0,0);
		            set_height (195)
			        set_width (300)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 2 then
					popup_area := set_background(mp_img_load("chest_doctor_fees.png"),0,0);
		            set_height (260)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 3 then
					popup_area := set_background(mp_img_load("chest_get_out_of_jail.png"),0,0);
		            set_height (240)
			        set_width (400)
			        controller.get_gameboard.update_jail_card_my_ui_player_information (0, true)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 4 then
					popup_area := set_background(mp_img_load("chest_go_directly_to_jail.png"),0,0);
		            set_height (245)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 5 then
					popup_area := set_background(mp_img_load("chest_birthday.png"),0,0);
		            set_height (260)
			        set_width (450)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 6 then
					popup_area := set_background(mp_img_load("chest_opera.png"),0,0);
		            set_height (245)
			        set_width (410)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 7 then
					popup_area := set_background(mp_img_load("chest_income_tax.png"),0,0);
		            set_height (240)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 8 then
					popup_area := set_background(mp_img_load("chest_life_insurance.png"),0,0);
		            set_height (250)
			        set_width (405)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 9 then
					popup_area := set_background(mp_img_load("chest_pay_hospital.png"),0,0);
		            set_height (240)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 10 then
					popup_area := set_background(mp_img_load("chest_pay_school.png"),0,0);
		            set_height (240)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 11 then
					popup_area := set_background(mp_img_load("chest_receive.png"),0,0);
		            set_height (265)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 12 then
					popup_area := set_background(mp_img_load("chest_repair.png"),0,0);
		            set_height (240)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 13 then
					popup_area := set_background(mp_img_load("chest_won_prize.png"),0,0);
		            set_height (180)
			        set_width (290)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 14 then
					popup_area := set_background(mp_img_load("chest_inherit.png"),0,0);
		            set_height (260)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 15 then
					popup_area := set_background(mp_img_load("chest_sale_of_stock.png"),0,0);
		            set_height (240)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				end
			elseif id = 2 then  -- Community Chance
				current.set_title (Popup_special_title+" - Chance")
				card := controller.get_card (2)
				if card.id = 16 then
					popup_area := set_background(mp_img_load("chance_advance_to_go.png"),0,0);
		            set_height (260)
			        set_width (400)
			        close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 17 then
					popup_area := set_background(mp_img_load("chance_advance_to_illinois.png"),0,0);
		    		set_height (260)
					set_width (400)
					close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 18 then
					popup_area := set_background(mp_img_load("chance_advance_to_st_charles_place.png"),0,0);
		    		set_height (260)
					set_width (380)
					close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 19 then
					popup_area := set_background(mp_img_load("chance_advance_to_utility.png"),0,0);
		    		set_height (145)
					set_width (225)
					close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 20 then
					popup_area := set_background(mp_img_load("chance_advance_to_railroad.png"),0,0);
					set_height (260)
					set_width (380)
					close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 21 then
					popup_area := set_background(mp_img_load("chance_bank_pay_you.png"),0,0);
					set_height (260)
					set_width (400)
					close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 22 then
					popup_area := set_background(mp_img_load("chance_get_out_of_jail.png"),0,0);
					set_height (260)
					set_width (400)
					controller.get_gameboard.update_jail_card_my_ui_player_information (1, true)
					close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 23 then
					popup_area := set_background(mp_img_load("chance_go_back.png"),0,0);
					set_height (260)
					set_width (400)
					close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 24 then
					popup_area := set_background(mp_img_load("chance_go_directly_to_jail.png"),0,0);
					set_height (260)
					set_width (400)
		    		close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 25 then
					popup_area := set_background(mp_img_load("chance_pay_for_repairs.png"),0,0);
					set_height (260)
					set_width (400)
					close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 26 then
					popup_area := set_background(mp_img_load("chance_pay_poor_tax.png"),0,0);
			 		set_height (260)
			 		set_width (320)
			 		close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 27 then
					popup_area := set_background(mp_img_load("chance_take_a_ride.png"),0,0);
		     		set_height (260)
			 		set_width (405)
			 		close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 28 then
					popup_area := set_background(mp_img_load("chance_take_a_walk.png"),0,0);
			 		set_height (260)
					set_width (400)
		     		close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 29 then
					popup_area := set_background(mp_img_load("chance_elected_chairman.png"),0,0);
			 		set_height (260)
			 		set_width (400)
		     		close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 30 then
					 popup_area := set_background(mp_img_load("chance_building_loan.png"),0,0);
			 		set_height (260)
			 		set_width (400)
		     		close_request_actions.extend(agent close_and_send_id_card(card.id))
				elseif card.id = 31 then
					popup_area := set_background(mp_img_load("chance_won_competition.png"),0,0);
			 		set_height (260)
					 set_width (400)
		     		close_request_actions.extend(agent close_and_send_id_card(card.id))
				end
			elseif id = 3 then
				current.set_title (Popup_special_title+" - Income Tax")
				popup_area := set_background(mp_img_load("pay_tax.png"),0,0);
		    	set_height (375)
				set_width (465)
				create btn_ok.make_with_text ("Pay 10 percent")
				popup_area.extend_with_position_and_size (btn_ok, 320, 20, 100, 30)
				btn_ok.select_actions.extend (agent controller.pay_ten_percent)
				create btn_pay.make_with_text ("Pay $200")
				popup_area.extend_with_position_and_size (btn_pay, 320, 60, 100, 30)
				btn_pay.select_actions.extend (agent controller.pay_two_hundred_dollars)
			    close_request_actions.extend(agent error)
			elseif id = 4 then
				current.set_title (Popup_special_title+" - Luxury Tax")
				popup_area := set_background(mp_img_load("pay_tax.png"),0,0);
		    	set_height (375)
				set_width (465)
				create btn_ok.make_with_text ("Pay $75")
				popup_area.extend_with_position_and_size (btn_ok, 290, 20, 100, 30)
				btn_ok.select_actions.extend (agent close)
				close_request_actions.extend(agent close)
			elseif id = 5 then
				current.set_title (Popup_special_title+" - In Jail, just visiting")
				popup_area := set_background(mp_img_load("jail_visiting.png"),0,0);
				set_height (270)
				set_width (255)
				close_request_actions.extend(agent close)
			elseif id = 6 then
				current.set_title (Popup_special_title+" - Go To Jail")
				popup_area := set_background(mp_img_load("go_to_jail.png"),0,0);
				set_height (410)
				set_width (520)
				create btn_ok.make_with_text ("Go To Jail")
				popup_area.extend_with_position_and_size (btn_ok, 380, 290, 100, 30)
				btn_ok.select_actions.extend (agent close)
				close_request_actions.extend(agent close)
			elseif id = 7 then
				current.set_title (Popup_special_title+" - Free Parking")
				popup_area := set_background(mp_img_load("free_parking.png"),0,0);
				set_height (410)
				set_width (520)
				close_request_actions.extend(agent close)
			end

		extend(popup_area)

		end

feature -- Implementation features

	close
		do
			current.destroy
		end

	close_and_send_id_card(a_id : INTEGER)
		do
			controller.communicate_id_card(a_id)
			current.destroy
		end

	error
	    local
	    	dialog: EV_INFORMATION_DIALOG
		do
			create dialog.make_with_text ("Select an option!")
			dialog.show_modal_to_window (Current)
		end
end
