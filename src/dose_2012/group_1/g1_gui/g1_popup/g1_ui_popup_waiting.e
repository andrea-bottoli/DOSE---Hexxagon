note
	description: "Summary description for {G1_UI_POPUP_WAITING}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G1_UI_POPUP_WAITING
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

	waiting_area: EV_FIXED
	l_controller: G1_UI_CONTROLLER
	l_gameboard: G1_UI_GAMEBOARD
	l_logic: G1_LOGIC_CLIENT

feature {NONE} -- Initialization

	make(a_controller : G1_UI_CONTROLLER; a_gameboard: G1_UI_GAMEBOARD)
		do
			l_controller := a_controller
			l_gameboard := a_gameboard

			default_create

			set_x_position ((screen_width // 2) - (Popup_std_width // 2))
			set_y_position ((screen_height // 2) - (Popup_std_width // 2))

			set_height (Popup_std_width)
			set_width (Popup_std_width)

			disable_user_resize
		end

	initialize
		local
			timer: G1_TIMER
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend (agent request_close)
			waiting_area := set_background(mp_img_load("waiting.png"),300,310);
			extend(waiting_area)
		end

feature -- Implementation features

	waiting_feature
	local
		thread: G1_TIMER
	do
		create thread.make (120)
		from
		until
			thread.terminated
		loop
		end
		Current.destroy
	end

	request_close
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text ("Do you want close the game?")
			question_dialog.show_modal_to_window (Current)
			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				current.destroy
				l_gameboard.destroy
			end
		end
end
