note
	description: "Summary description for {HX_G_HEX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_HEX

inherit
--	HX_G_GAME_SCREEN
	EV_MODEL_MOVE_HANDLE

create
	make_with_hex


feature		-- Implementation

			call: PROCEDURE[ANY, TUPLE[]]
			hex : EV_MODEL_PICTURE
            col : INTEGER
            row : INTEGER

            make_with_hex (a_hex: EV_PIXMAP; a_call: PROCEDURE[ANY, TUPLE[]])
            do
				default_create
				create hex.make_with_pixmap (a_hex)
				extend (hex)
				hex.set_point_position (0, 0)
				call := a_call
			 	pointer_button_press_actions.extend (agent on_pointer_button_press_on_world)
			end

			click_hex (a_hex: EV_PIXMAP; a_call: PROCEDURE[ANY, TUPLE[]])
			do
				hex.set_pixmap (a_hex)
				call := a_call
			end

            setHex()
            do
			end

            getHex()
            do
			end

			feature -- Status setting

			enable_move
			do
				pointer_motion_actions.extend (agent on_pointer_motion_on_world)
				pointer_button_press_actions.extend (agent on_pointer_button_press_on_world)
				pointer_button_release_actions.extend (agent on_pointer_button_release_on_world)
			end

			change_pixmap (a_hex: EV_PIXMAP ; a_call: PROCEDURE[ANY, TUPLE[]])
			do
				hex.set_pixmap (a_hex)
				call := a_call
			end

			set_empty_pic( a_hex: EV_PIXMAP)
			do
				hex.set_pixmap (a_hex)
			end


feature {NONE} -- Move features

			on_pointer_motion_on_world (ax, ay: INTEGER; x_tilt, y_tilt, pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
			do
				if has_capture then
					print ("Dragged tile view: (" + ax.out + "," + ay.out +")%N")
					set_point_position (ax, ay)
				end
			end

			on_pointer_button_press_on_world (ax, ay, button: INTEGER; x_tilt, y_tilt, pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
			do
				call.call([])
			end

			on_pointer_button_release_on_world (ax, ay, button: INTEGER; x_tilt, y_tilt, pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
			do
				if has_capture then
					disable_capture
				end
			end

end
