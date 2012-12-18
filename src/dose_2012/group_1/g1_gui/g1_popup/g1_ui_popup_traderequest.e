note
	description: "Summary description for {G1_UI_POPUP_TRADEREQUEST}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_UI_POPUP_TRADEREQUEST
	-- It's a Graphical Inteface

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

    label_own_money : EV_LABEL
    label_other_money : EV_LABEL
	label_my_money : EV_LABEL
    label_player_money : EV_LABEL

    btn_accept : EV_BUTTON
    btn_refuse : EV_BUTTON

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
			create player_information.make (controller.get_player)
			popup_area.extend_with_position_and_size (player_information, 5, 5, 365, 245)

			create label_own_money
			label_own_money.set_background_color (GREEN)
            label_own_money.set_text ("Money: ")
			label_own_money.align_text_center
			popup_area.extend_with_position_and_size (label_own_money, 5,250,50,20)

			create label_my_money
			label_my_money.set_background_color (GREEN)
			label_my_money.set_text ("???")
			label_my_money.align_text_center
			popup_area.extend_with_position_and_size (label_my_money, 55, 250, 60, 20)

		--	create other_player_information.make (1,"Nome Giocatore")      -- aggiornare
		--  popup_area.extend_with_position_and_size (other_player_information, 460, 5, 365, 245)

			create label_other_money
			label_other_money.set_background_color (GREEN)
            label_other_money.set_text ("Money: ")
			label_other_money.align_text_center
			popup_area.extend_with_position_and_size (label_other_money, 460,250,50,20)

			create label_player_money
			label_player_money.set_background_color (GREEN)
			label_player_money.set_text ("??")
			label_player_money.align_text_center
			popup_area.extend_with_position_and_size (label_player_money, 510, 250, 60, 20)

			create btn_accept.make_with_text ("Accept")
			btn_accept.select_actions.extend (agent accept_trade)
			popup_area.extend_with_position_and_size (btn_accept, 600, 250, 100, 30)

			create btn_refuse.make_with_text ("Refuse")
			btn_refuse.select_actions.extend (agent refuse_trade)
			popup_area.extend_with_position_and_size (btn_refuse, 710, 250, 100, 30)

			extend(popup_area)
		end

feature -- Implementation features

	accept_trade
		do

		end

	refuse_trade
		do

		end

end
