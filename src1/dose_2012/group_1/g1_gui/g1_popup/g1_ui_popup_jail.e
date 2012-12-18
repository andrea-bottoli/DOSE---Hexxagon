note
	description: "Summary description for {G1_UI_POPUP_JAIL}."
	author: "Group1-Milano7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_UI_POPUP_JAIL

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

create make

feature {NONE}	-- Attributes

	btn_pay : EV_BUTTON
	btn_roll_dice : EV_BUTTON
	btn_card : EV_BUTTON

feature {NONE} -- Initialization

	make (a_controller : G1_UI_CONTROLLER)
		do
			make_with_title(Popup_jail_title)
			controller := a_controller

			set_x_position ((screen_width // 2) - (Window_width // 2))
			set_y_position ((screen_height // 2) - (Window_height // 2))

				-- set the size of the window
			set_height (Popup_jail_height)
			set_width (Popup_jail_width)

			disable_user_resize

		end

	initialize
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend(agent request_close_popup(current))  -- da gestire in modo che non possa chiudere ma per forza --> bottone
			popup_area := set_background(mp_img_load("jail.png"),0,0);

			create btn_roll_dice.make_with_text ("Roll For Doubles")
			popup_area.extend_with_position_and_size (btn_roll_dice, 330, 210, 100, 30)
			btn_roll_dice.select_actions.extend (agent roll_dice)

			create btn_card.make_with_text ("Use Card")
			popup_area.extend_with_position_and_size (btn_card, 330, 250, 100, 30)
			btn_card.select_actions.extend (agent use_card)

			create btn_pay.make_with_text ("Pay $50")
			popup_area.extend_with_position_and_size (btn_pay, 330, 290, 100, 30)
			btn_pay.select_actions.extend (agent pay)

			extend(popup_area)
		end

feature -- Implementation features

	roll_dice
		do

		end

	use_card
		do

		end

	pay
		do

		end
end
