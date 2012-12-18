note
	description: "Summary description for {G21_AI_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_AI_GAME

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G21_COMMONS
		undefine default_create, copy end

feature
	initialize
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend(agent close_window)
		set_title("Triple Triad - Select AI difficulty level")
		set_size(280, 179)
		disable_user_resize

		extend (rule_horizontal_box)
		rule_horizontal_box.extend (easy)
		rule_horizontal_box.extend (medium)
		rule_horizontal_box.extend (hard)

		rule_horizontal_box.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (0, 0, 0))
		rule_horizontal_box.set_minimum_width (280)
		rule_horizontal_box.set_minimum_height (179)
		easy.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (0, 0, 0))
		easy.set_tooltip ("Easy")
		easy.set_with_named_file (rpath("easy.png"))
		east.pointer_button_press_actions.extend (agent OnEasyClick (?, ?, ?, ?, ?, ?, ?, ?))
		medium.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (0, 0, 0))
		medium.set_tooltip ("Medium")
		medium.set_with_named_file (rpath("medium.png"))
		medium.pointer_button_press_actions.extend (agent OnMediumClick (?, ?, ?, ?, ?, ?, ?, ?))
		hard.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (0, 0, 0))
		hard.set_tooltip ("Hard")
		hard.set_with_named_file (rpath("hard.png"))
		hard.pointer_button_press_actions.extend (agent OnHardClick (?, ?, ?, ?, ?, ?, ?, ?))
	end

	addlistener(listener_a : G21_NOTIFYLISTENER)
	require
		listener /= Void
	do
		listener := listener_a
	ensure
		listener = listener_a
	end

feature {NONE}
	close_window
	do
		(create {EV_ENVIRONMENT}).application.destroy
	end

	onEasyClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
		listener.message("AI_EASY")
	end

	onMediumClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
		listener.message("AI_MEDIUM")
	end

	onHardClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
		listener.message("AI_HARD")
	end

feature {NONE}
	rule_horizontal_box: EV_HORIZONTAL_BOX
	easy, medium, hard: EV_PIXMAP

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	TT_folder: STRING = "group_21"

	listener : G21_NOTIFYLISTENER
end
