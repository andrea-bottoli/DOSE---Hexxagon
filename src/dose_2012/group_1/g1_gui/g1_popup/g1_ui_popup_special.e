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
			make_with_title(Popup_special_title)

			set_x_position ((screen_width // 2) - (Window_width // 2))
			set_y_position ((screen_height // 2) - (Window_height // 2))
			disable_user_resize
		end

	make(a_controller : G1_UI_CONTROLLER; a_non_deed : G1_NON_DEED)   -- corretto
		do
			controller := a_controller
			non_deed := a_non_deed
			make_with_title(Popup_special_title)

			set_x_position ((screen_width // 2) - (Window_width // 2))
			set_y_position ((screen_height // 2) - (Window_height // 2))

			disable_user_resize
		end

	initialize
		do
			Precursor {EV_TITLED_WINDOW}
		    close_request_actions.extend(agent request_close_popup(current))

		 --   id := non_deed.id_cell    corretto da scommentare quando testato le gui di tutte le special card
		 	create btn_ok.make_with_text ("OK")

		    if id = 0 then
		    	popup_area := set_background(mp_img_load("pass_go.png"),0,0);
		    	set_height (410)
				set_width (520)
				popup_area.extend_with_position_and_size (btn_ok, 380, 290, 100, 30)
			elseif id = 1 then  -- Community Chest
				card := controller.get_card (1)
				if card.id = 0 then
				elseif card.id = 1 then
				elseif card.id = 2 then
				elseif card.id = 3 then
				elseif card.id = 4 then
				elseif card.id = 5 then
				elseif card.id = 6 then
				elseif card.id = 7 then
				elseif card.id = 8 then
				elseif card.id = 9 then
				elseif card.id = 10 then
				elseif card.id = 11 then
				elseif card.id = 12 then
				elseif card.id = 13 then
				elseif card.id = 14 then
				elseif card.id = 15 then
				end
			elseif id = 2 then  -- Community Chance
				card := controller.get_card (2)
				if card.id = 16 then
					popup_area := set_background(mp_img_load("chance_advance_to_go.png"),0,0);
		            set_height (260)
			        set_width (400)
			        popup_area.extend_with_position_and_size (btn_ok, 285, 130, 100, 30)
				elseif card.id = 17 then
					popup_area := set_background(mp_img_load("chance_advance_to_illinois.png"),0,0);
		    		set_height (260)
					set_width (400)
					popup_area.extend_with_position_and_size (btn_ok, 30, 160, 100, 30)
				elseif card.id = 18 then
					popup_area := set_background(mp_img_load("chance_advance_to_st_charles_place.png"),0,0);
		    		set_height (260)
					set_width (380)
					popup_area.extend_with_position_and_size (btn_ok, 290, 60, 100, 30)
				elseif card.id = 19 then
					popup_area := set_background(mp_img_load("chance_advance_to_utility.png"),0,0);
		    		set_height (145)
					set_width (225)
					-- popup_area.extend_with_position_and_size (btn_ok, 30, 160, 100, 30)   ?? no, non ci sta ??
				elseif card.id = 20 then
				--	popup_area := set_background(mp_img_load("chance_advance_to_railroad"),0,0);  ????? a eiffel non piace questa immagine .. ??
				--	set_height (260)
				--	set_width (380)
				--	popup_area.extend_with_position_and_size (btn_ok, 295, 190, 100, 30)
				elseif card.id = 21 then
					popup_area := set_background(mp_img_load("chance_bank_pay_you.png"),0,0);
					set_height (260)
					set_width (400)
					popup_area.extend_with_position_and_size (btn_ok, 45, 60, 100, 30)
				elseif card.id = 22 then
					popup_area := set_background(mp_img_load("chance_get_out_of_jail.png"),0,0);
					set_height (260)
					set_width (400)
					popup_area.extend_with_position_and_size (btn_ok, 160, 195, 100, 30)
				elseif card.id = 23 then
					popup_area := set_background(mp_img_load("chance_go_back.png"),0,0);
					set_height (260)
					set_width (400)
					popup_area.extend_with_position_and_size (btn_ok, 25, 85, 100, 30)
				elseif card.id = 24 then
					popup_area := set_background(mp_img_load("chance_go_directly_to_jail.png"),0,0);
					set_height (260)
					set_width (400)
		    		--popup_area.extend_with_position_and_size (btn_ok, 25, 85, 100, 30)    non ci sta!!
				elseif card.id = 25 then
					popup_area := set_background(mp_img_load("chance_pay_for_repairs.png"),0,0);
					set_height (260)
					set_width (400)
					--popup_area.extend_with_position_and_size (btn_ok, 25, 85, 100, 30)   non ci sta!!
				elseif card.id = 26 then
					popup_area := set_background(mp_img_load("chance_pay_poor_tax.png"),0,0);
			 		set_height (260)
			 		set_width (320)
			 		popup_area.extend_with_position_and_size (btn_ok, 180, 30, 100, 30)
				elseif card.id = 27 then
					popup_area := set_background(mp_img_load("chance_take_a_ride.png"),0,0);
		     		set_height (260)
			 		set_width (405)
			 		popup_area.extend_with_position_and_size (btn_ok, 20, 140, 100, 30)
				elseif card.id = 28 then
					popup_area := set_background(mp_img_load("chance_take_a_walk.png"),0,0);
			 		set_height (260)
					set_width (400)
		     		--popup_area.extend_with_position_and_size (btn_ok, 340, 220, 30, 30)   non mi piace
				elseif card.id = 29 then
					popup_area := set_background(mp_img_load("chance_elected_chairman.png"),0,0);
			 		set_height (260)
			 		set_width (400)
		     		--popup_area.extend_with_position_and_size (btn_ok, 140, 20, 100, 30)  non mi piace
				elseif card.id = 30 then
					 popup_area := set_background(mp_img_load("chance_building_loan.png"),0,0);
			 		set_height (260)
			 		set_width (400)
		     		--popup_area.extend_with_position_and_size (btn_ok, 140, 20, 100, 30)  non mi piace
				elseif card.id = 31 then
					popup_area := set_background(mp_img_load("chance_won_competition.png"),0,0);
			 		set_height (260)
					 set_width (400)
		     		--popup_area.extend_with_position_and_size (btn_ok, 140, 20, 100, 30)  non mi piace
				end
			elseif id = 3 then
				popup_area := set_background(mp_img_load("pay_tax.png"),0,0);
		    	set_height (375)
				set_width (465)
				btn_ok.set_text ("Pay 10percent")
				popup_area.extend_with_position_and_size (btn_ok, 320, 20, 100, 30)
				create btn_pay.make_with_text ("Pay $200")
				popup_area.extend_with_position_and_size (btn_pay, 320, 60, 100, 30)
			elseif id = 4 then
				popup_area := set_background(mp_img_load("pay_tax.png"),0,0);
		    	set_height (375)
				set_width (465)
				btn_ok.set_text ("Pay $75")
				popup_area.extend_with_position_and_size (btn_ok, 320, 20, 100, 30)
			elseif id = 5 then
						popup_area := set_background(mp_img_load("jail_visiting.png"),0,0);
						set_height (270)
						set_width (255)
						popup_area.extend_with_position_and_size (btn_ok, 160, 215, 50, 30)
			elseif id = 6 then
				popup_area := set_background(mp_img_load("go_to_jail.png"),0,0);
				set_height (410)
				set_width (520)
				popup_area.extend_with_position_and_size (btn_ok, 380, 290, 100, 30)
				btn_ok.set_text ("Go To Jail")
			elseif id = 7 then
				popup_area := set_background(mp_img_load("free_parking.png"),0,0);
				set_height (410)
				set_width (520)
				popup_area.extend_with_position_and_size (btn_ok, 380, 290, 100, 30)
			end

		btn_ok.select_actions.extend (agent close)
		extend(popup_area)
		   -- popup_area := set_background(mp_img_load("background_gameboard.png"),0,0);
		end

feature -- Implementation features

	close
		do
			current.destroy
		end
end
