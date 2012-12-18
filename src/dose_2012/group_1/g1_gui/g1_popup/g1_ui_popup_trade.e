note
	description: "Summary description for {G1_UI_POPUP_TRADE}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_UI_POPUP_TRADE
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
	make

feature {NONE}	-- Attributes

	player_information: G1_UI_PLAYER_INFORMATION
    other_player_information: G1_UI_PLAYER_INFORMATION

    combo_box_total_players: EV_COMBO_BOX

	label_players : EV_LABEL
--    label_own_money : EV_LABEL
--    label_other_money : EV_LABEL

--    txt_own_money : EV_TEXT_FIELD
--    txt_other_money : EV_TEXT_FIELD

    label_property_offered : EV_LABEL
    label_property_requested : EV_LABEL
    label_card_offered : EV_LABEL
    label_card_requested : EV_LABEL

    btn_confirm : EV_BUTTON

	player_one_id : INTEGER
	player_two_id : INTEGER
	deed_player_one_id : INTEGER
	deed_player_two_id : INTEGER
	card_player_one_id : INTEGER
	card_player_two_id : INTEGER

feature {NONE} -- Initialization

	make(a_controller : G1_UI_CONTROLLER)
		do
			controller := a_controller

			make_with_title(Popup_trade_title)

			set_x_position ((screen_width // 2) - (Window_width // 2))
			set_y_position ((screen_height // 2) - (Window_height // 2))

				-- set the size of the window
			set_height (Popup_trade_height)
			set_width (Popup_trade_width)

		end

	initialize
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend(agent request_close_popup(current))
			popup_area := set_background(mp_img_load("background_gameboard.png"),0,0);

			player_two_id := 0

			create player_information.make (controller.get_player)
			popup_area.extend_with_position_and_size (player_information, 5, 5, 365, 245)
			player_information.update_situation(controller.get_player)
			player_information.set_popup_trade(current)
			initialize_button(controller.get_player)

			create label_players
			label_players.set_background_color (GREEN)
            label_players.set_text ("Player: ")
			label_players.align_text_center
			popup_area.extend_with_position_and_size (label_players, 375,5,80,20)

			-- per ora che non c'è tutta la logica+net, altrimenti update_combo_box
			create combo_box_total_players.make_with_strings (<<"0", "1", "2", "3">>)
			combo_box_total_players.disable_edit
			popup_area.extend_with_position_and_size (combo_box_total_players, 375, 25, 80, 24)
			combo_box_total_players.select_actions.extend (agent view_player_information)

			create label_property_offered
			label_property_offered.set_background_color (GREEN)
            label_property_offered.set_text ("Property Offered: ")
			label_property_offered.align_text_left
			popup_area.extend_with_position_and_size (label_property_offered, 5,250,300,20)

			create label_card_offered
			label_card_offered.set_background_color (GREEN)
            label_card_offered.set_text ("Card Offered: ")
			label_card_offered.align_text_left
			popup_area.extend_with_position_and_size (label_card_offered, 5,270,300,20)

	--		create label_own_money
	--		label_own_money.set_background_color (GREEN)
    --      label_own_money.set_text ("Money: ")
	--		label_own_money.align_text_center
	--		popup_area.extend_with_position_and_size (label_own_money, 5,250,50,20)

	--		create txt_own_money
	--		txt_own_money.set_background_color (GREEN)
	--		txt_own_money.set_text ("0")
	--		txt_own_money.align_text_center
	--		popup_area.extend_with_position_and_size (txt_own_money, 55, 250, 60, 20)

			create btn_confirm.make_with_text ("Confirm")
			btn_confirm.select_actions.extend (agent confirm_trade)
			popup_area.extend_with_position_and_size (btn_confirm, 710, 250, 100, 30)

			extend(popup_area)
		end

feature -- Implementation features

	initialize_button(a_player : G1_PLAYER)
		local
			l_deed : G1_DEED
		do
			from
				a_player.properties.start
			until
				a_player.properties.after
			loop
				l_deed := a_player.properties.item
				player_information.update_button_property (l_deed.id_cell)
				a_player.properties.forth
			end

			if a_player.jail_cards = 1 then
				player_information.update_card_get_out_of_jail_chance (true)
				player_information.update_button_card (100)
			elseif a_player.jail_cards = 2 then
				player_information.update_card_get_out_of_jail_chance (true)
				player_information.update_button_card (100)
				player_information.update_card_get_out_of_jail_community (true)
				player_information.update_button_card (200)
			end
		end

	view_player_information

		local
			k, id : INTEGER
			l_other_player : G1_PLAYER
		do
			deed_player_one_id := 0
			deed_player_two_id := 0
			card_player_one_id := 0
			card_player_two_id := 0
			label_property_offered.set_text ("Property Offered: ")
			label_card_offered.set_text ("Card Offered: ")

		--	k := combo_box_total_players.index
		--	id := players_combo_box.caret_position (k)
		--  l_other_player := controller.ask_player (id)
			set_player_two(id)
			player_two_id := combo_box_total_players.caret_position  -- solo per ora
			create l_other_player.make (2, "giocatore")         -- solo per ora
			create other_player_information.make(l_other_player)
        	popup_area.extend_with_position_and_size (other_player_information, 460, 5, 365, 245)
        --	other_player_information.update_situation (l_other_player)   -- ook


			create label_property_requested
			label_property_requested.set_background_color (GREEN)
            label_property_requested.set_text ("Property Requested: ")
			label_property_requested.align_text_left
			popup_area.extend_with_position_and_size (label_property_requested, 460,250,240,20)

			create label_card_requested
			label_card_requested.set_background_color (GREEN)
            label_card_requested.set_text ("Card Requested: ")
			label_card_requested.align_text_left
			popup_area.extend_with_position_and_size (label_card_requested, 460,270,240,20)

   --     	create label_other_money
   --   	label_other_money.set_background_color (GREEN)
   --       label_other_money.set_text ("Money: ")
   --		label_other_money.align_text_center
   --		popup_area.extend_with_position_and_size (label_other_money, 460,250,50,20)

--			create txt_other_money
--			txt_other_money.set_background_color (GREEN)
--			txt_other_money.set_text ("0")
--			txt_other_money.align_text_center
--			popup_area.extend_with_position_and_size (txt_other_money, 510, 250, 60, 20)

		end

	set_deed_player(id : INTEGER; name_property : STRING; information_player : G1_UI_PLAYER_INFORMATION)
		do
			if information_player = player_information then
				label_property_offered.set_text ("Property Offered: "+name_property)
				deed_player_one_id := id
			else
				label_property_requested.set_text ("Property Requested: "+name_property)
				deed_player_two_id := id
			end
		end

	set_player_two(id : INTEGER)
		do
			player_two_id := id
		end

	set_card_player(type : STRING; id : INTEGER; information_player : G1_UI_PLAYER_INFORMATION )
		do
			if information_player = player_information then
				label_card_offered.set_text ("Card Offered: "+type+" get_out_of_jail")
				card_player_one_id := id
			else
				label_card_requested.set_text ("Card Requested: "+type+" get_out_of_jail")
				card_player_two_id := id
			end
		end

	confirm_trade
		do
			if(player_two_id = 0) then
				error_no_player
			elseif( (deed_player_one_id = 0) and (deed_player_two_id = 0) and (card_player_one_id = 0) and (card_player_two_id = 0) ) then
				error_no_trade
			else
				controller.trade_with_a_player (controller.get_player.id_player, deed_player_one_id, card_player_one_id, player_two_id , deed_player_two_id, card_player_two_id)
			end
		end

	error_no_player
	    local
	    	dialog: EV_INFORMATION_DIALOG
		do
			create dialog.make_with_text ("Select a player!")
			dialog.show_modal_to_window (Current)
		end

	error_no_trade
	    local
	    	dialog: EV_INFORMATION_DIALOG
		do
			create dialog.make_with_text ("Select a deed or a card to trade!")
			dialog.show_modal_to_window (Current)
		end
end
