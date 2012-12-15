note
	description: "Class for visualizing main menu."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G19_MENU_IMPL

inherit
	EV_UNTITLED_DIALOG

	G19_GUI_CONSTANTS
		undefine
			default_create,
			copy
		end

create
	make_and_launch

feature
	make_and_launch
		local
			lv_bg: EV_PIXMAP
		do
			default_create

			set_x_position ((screen_width // 2) - (window_width // 2))
			set_y_position ((screen_height // 2) - (window_height // 2))

			set_width (window_width)
			set_height (window_height)

			disable_user_resize

			create main_box
			create lv_bg

			lv_bg.set_with_named_file (file_system.pathname_to_string (img_menu_background))
			main_box.set_background_pixmap (lv_bg)

			extend(main_box)

			menu_count := 0
		end

	add_menu_point(mp_title: STRING; callback: PROCEDURE [ANY, TUPLE [INTEGER_32, INTEGER_32, INTEGER_32, REAL_64, REAL_64, REAL_64, INTEGER_32, INTEGER_32]])
		local
			lv_menu: EV_FIXED
			lv_menu_bg: EV_PIXMAP
			lv_label: EV_LABEL
		do
			create lv_menu
			create lv_menu_bg
			create lv_label
			lv_menu_bg.set_with_named_file (file_system.pathname_to_string (img_menu_point_background))
			lv_menu.set_background_pixmap (lv_menu_bg)
			lv_label.set_text (mp_title)
			lv_label.pointer_button_release_actions.extend (callback)
			lv_menu.extend_with_position_and_size (lv_label, 3, 3, 194, 44)
			lv_menu.pointer_button_release_actions.extend (callback)
			main_box.extend_with_position_and_size (lv_menu, 300, 400 + (menu_count * 70), 200, 50)
			menu_count := menu_count + 1
		end

	screen_height: INTEGER
		once
			Result := (create {EV_SCREEN}).height
		end

	screen_width: INTEGER
		once
			Result := (create {EV_SCREEN}).width
		end

	main_box: EV_FIXED

	window_width: INTEGER = 800
	window_height: INTEGER = 600

	menu_count: INTEGER
end
