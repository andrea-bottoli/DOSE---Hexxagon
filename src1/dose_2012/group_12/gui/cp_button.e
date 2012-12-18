note
	description: "Summary description for {CP_BUTTON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CP_BUTTON

inherit
	CP_MAIN_WINDOW_INTERFACES
	export {NONE} all
	undefine
		default_create, copy, is_equal
	end

	EV_FIXED


create
	make

feature  -- Initialization

	make(text:STRING)
		local
			white_color:EV_COLOR
			black_color:EV_COLOR
		do
			-- Create the colors
			create white_color.make_with_8_bit_rgb (255, 255, 255)
			create black_color.make_with_8_bit_rgb (0, 0, 0)

			-- Create the button
			default_create
			create btn_label.make_with_text(text)
			set_background_color(white_color)
			set_background_pixmap(button_normal_img)
			btn_label.set_background_color (white_color)
			btn_label.pointer_enter_actions.extend (agent event_on_hover)
			extend_with_position_and_size (btn_label, 12, 50, 100, 23)
			pointer_enter_actions.extend (agent event_on_hover)
			pointer_leave_actions.extend (agent event_on_leave)

		end
feature -- Set Agent Action

	on_click_do(action: PROCEDURE [ANY, TUPLE])
		do
			c:=action
			pointer_button_release_actions.extend(agent mouse_button_actions (?,?,?,?,?,?,?,?))
			btn_label.pointer_button_release_actions.extend (agent  mouse_button_actions (?,?,?,?,?,?,?,?))
		end



feature {NONE}	-- Events

	mouse_button_actions (a, b, cf: INTEGER_32; d, e, f: REAL_64; g, h: INTEGER_32)
	do
		c.apply
		event_on_leave
	end

	event_on_hover
		local
			white_color:EV_COLOR
			black_color:EV_COLOR
		do
			create black_color.make_with_8_bit_rgb (0, 0, 0)
			create white_color.make_with_8_bit_rgb (255, 255, 255)
			set_background_pixmap (button_onhover_img)
			btn_label.set_background_color (black_color)
			btn_label.set_foreground_color (white_color)
		end

	event_on_leave
		local
			white_color:EV_COLOR
			black_color:EV_COLOR
		do
			create black_color.make_with_8_bit_rgb (0, 0, 0)
			create white_color.make_with_8_bit_rgb (255, 255, 255)
			set_background_pixmap (button_normal_img)
			btn_label.set_background_color (white_color)
			btn_label.set_foreground_color (black_color)
		end




feature {NONE} -- Attributes




	-- The images for the main menu

	button_normal_img: EV_PIXEL_BUFFER
		-- Board buttn normal state (with alpha)
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (board_normal_btn_img))
		end


	button_onhover_img:	EV_PIXEL_BUFFER
			-- Board button hover state (with alpha)
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (board_hover_btn_img))
		end


	-- The label for the button
	btn_label:EV_LABEL
	--font:EV_FONT
	c: PROCEDURE [ANY, TUPLE]
end
