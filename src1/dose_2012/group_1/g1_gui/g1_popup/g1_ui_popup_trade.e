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
    label_own_money : EV_LABEL
    label_other_money : EV_LABEL

    txt_own_money : EV_TEXT_FIELD
    txt_other_money : EV_TEXT_FIELD

    btn_confirm : EV_BUTTON

    msg_trade : G1_MESSAGE_TRADE

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

			-- create player_information.make (controller.get_player.get_id_player,controller.get_player.get_name)
			create player_information.make (2,controller.get_player.get_name)  -- per ora
			popup_area.extend_with_position_and_size (player_information, 5, 5, 365, 245)

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

			create label_own_money
			label_own_money.set_background_color (GREEN)
            label_own_money.set_text ("Money: ")
			label_own_money.align_text_center
			popup_area.extend_with_position_and_size (label_own_money, 5,250,50,20)

			create txt_own_money
			txt_own_money.set_background_color (GREEN)
			txt_own_money.set_text ("0")
			txt_own_money.align_text_center
			popup_area.extend_with_position_and_size (txt_own_money, 55, 250, 60, 20)

			create btn_confirm.make_with_text ("Confirm")
			btn_confirm.select_actions.extend (agent confirm_trade)
			popup_area.extend_with_position_and_size (btn_confirm, 710, 250, 100, 30)

			extend(popup_area)
		end

feature -- Implementation features

	view_player_information

		local
			k, id : INTEGER
		do
		--	k := combo_box_total_players.index
		--	id := players_combo_box.item (k)
			-- create other_player_information.make (id,combo_box_total_players.selected_item.text)  -- corretto
			create other_player_information.make (1,combo_box_total_players.selected_item.text)      -- togliere
        	popup_area.extend_with_position_and_size (other_player_information, 460, 5, 365, 245)

        	create label_other_money
			label_other_money.set_background_color (GREEN)
            label_other_money.set_text ("Money: ")
			label_other_money.align_text_center
			popup_area.extend_with_position_and_size (label_other_money, 460,250,50,20)

			create txt_other_money
			txt_other_money.set_background_color (GREEN)
			txt_other_money.set_text ("0")
			txt_other_money.align_text_center
			popup_area.extend_with_position_and_size (txt_other_money, 510, 250, 60, 20)

		end

	confirm_trade
		do

		end
end
