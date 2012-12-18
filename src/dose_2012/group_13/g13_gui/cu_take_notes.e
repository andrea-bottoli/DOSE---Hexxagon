note
	description: "Summary description for {CU_NOTES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_TAKE_NOTES

inherit
	CU_WINDOWS
	redefine
		request_close_window
	end

	CU_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature
	make
			-- Displays the window of notes
		require
--			not_displayed_window: not is_displayed

		do
			create suspect_1_button.default_create
			create count_suspect_1
			suspect_1_button.select_actions.extend (agent set_image_button (suspect_1_button, count_suspect_1))

			create suspect_2_button.default_create
			create count_suspect_2
			suspect_2_button.select_actions.extend (agent set_image_button (suspect_2_button, count_suspect_2))

			create suspect_3_button.default_create
			create count_suspect_3
			suspect_3_button.select_actions.extend (agent set_image_button (suspect_3_button, count_suspect_3))

			create suspect_4_button.default_create
			create count_suspect_4
			suspect_4_button.select_actions.extend (agent set_image_button (suspect_4_button, count_suspect_4))

			create suspect_5_button.default_create
			create count_suspect_5
			suspect_5_button.select_actions.extend (agent set_image_button (suspect_5_button, count_suspect_5))

			create suspect_6_button.default_create
			create count_suspect_6
			suspect_6_button.select_actions.extend (agent set_image_button (suspect_6_button, count_suspect_6))

			create weapon_1_button.default_create
			create count_weapon_1
			weapon_1_button.select_actions.extend (agent set_image_button (weapon_1_button, count_weapon_1))

			create weapon_2_button.default_create
			create count_weapon_2
			weapon_2_button.select_actions.extend (agent set_image_button (weapon_2_button, count_weapon_2))

			create weapon_3_button.default_create
			create count_weapon_3
			weapon_3_button.select_actions.extend (agent set_image_button (weapon_3_button, count_weapon_3))

			create weapon_4_button.default_create
			create count_weapon_4
			weapon_4_button.select_actions.extend (agent set_image_button (weapon_4_button, count_weapon_4))

			create weapon_5_button.default_create
			create count_weapon_5
			weapon_5_button.select_actions.extend (agent set_image_button (weapon_5_button, count_weapon_5))

			create weapon_6_button.default_create
			create count_weapon_6
			weapon_6_button.select_actions.extend (agent set_image_button (weapon_6_button, count_weapon_6))

			create room_1_button.default_create
			create count_room_1
			room_1_button.select_actions.extend (agent set_image_button (room_1_button, count_room_1))

			create room_2_button.default_create
			create count_room_2
			room_2_button.select_actions.extend (agent set_image_button (room_2_button, count_room_2))

			create room_3_button.default_create
			create count_room_3
			room_3_button.select_actions.extend (agent set_image_button (room_3_button, count_room_3))

			create room_4_button.default_create
			create count_room_4
			room_4_button.select_actions.extend (agent set_image_button (room_4_button, count_room_4))

			create room_5_button.default_create
			create count_room_5
			room_5_button.select_actions.extend (agent set_image_button (room_5_button, count_room_5))

			create room_6_button.default_create
			create count_room_6
			room_6_button.select_actions.extend (agent set_image_button (room_6_button, count_room_6))

			create room_7_button.default_create
			create count_room_7
			room_7_button.select_actions.extend (agent set_image_button (room_7_button, count_room_7))

			create room_8_button.default_create
			create count_room_8
			room_8_button.select_actions.extend (agent set_image_button (room_8_button, count_room_8))

			create room_9_button.default_create
			create count_room_9
			room_9_button.select_actions.extend (agent set_image_button (room_9_button, count_room_9))

			create ok_button.make_with_text ("Accept")
			ok_button.select_actions.extend (agent hide)

			create horizontal_separator
			create con_notes
			con_notes.extend_with_position_and_size (horizontal_separator, 0, 0, 861, 5)

			con_notes.extend_with_position_and_size (set_pixmap(img_notes), 0, 10, 861, 422)
			con_notes.extend_with_position_and_size (suspect_1_button, 205, 75, 36, 25)
			con_notes.extend_with_position_and_size (suspect_2_button, 205, 110, 36, 25)
			con_notes.extend_with_position_and_size (suspect_3_button, 205, 147, 36, 25)
			con_notes.extend_with_position_and_size (suspect_4_button, 205, 184, 36, 25)
			con_notes.extend_with_position_and_size (suspect_5_button, 205, 220, 36, 25)
			con_notes.extend_with_position_and_size (suspect_6_button, 205, 255, 36, 25)

			con_notes.extend_with_position_and_size (weapon_1_button, 487, 75, 36, 25)
			con_notes.extend_with_position_and_size (weapon_2_button, 487, 110, 36, 25)
			con_notes.extend_with_position_and_size (weapon_3_button, 487, 147, 36, 25)
			con_notes.extend_with_position_and_size (weapon_4_button, 487, 184, 36, 25)
			con_notes.extend_with_position_and_size (weapon_5_button, 487, 220, 36, 25)
			con_notes.extend_with_position_and_size (weapon_6_button, 487, 255, 36, 25)

			con_notes.extend_with_position_and_size (room_1_button, 768, 75, 36, 25)
			con_notes.extend_with_position_and_size (room_2_button, 768, 110, 36, 25)
			con_notes.extend_with_position_and_size (room_3_button, 768, 147, 36, 25)
			con_notes.extend_with_position_and_size (room_4_button, 768, 182, 36, 25)
			con_notes.extend_with_position_and_size (room_5_button, 768, 217, 36, 25)
			con_notes.extend_with_position_and_size (room_6_button, 768, 253, 36, 25)
			con_notes.extend_with_position_and_size (room_7_button, 768, 287, 36, 25)
			con_notes.extend_with_position_and_size (room_8_button, 768, 321, 36, 25)
			con_notes.extend_with_position_and_size (room_9_button, 768, 359, 36, 25)

			con_notes.extend_with_position_and_size (ok_button, 380, 440, 80, 40)

			make_with_title ("Notes - Cluedo")
			set_size (861,490)
			put (con_notes)
			disable_user_resize
		ensure
--			displayed_window: is_displayed
		end

	set_image_button (a_button: EV_BUTTON; a_count: CU_VAR_INTEGER)
	do
		a_count.change_value (a_count.value)
		inspect a_count.value
		when 0 then
			a_button.remove_pixmap
		when 1 then
			a_button.set_pixmap (set_pixmap(img_notes_button_check))
		when 2 then
			a_button.set_pixmap (set_pixmap(img_notes_button_cross))
		when 3 then
			a_button.set_pixmap (set_pixmap(img_notes_button_question))
		end
	end
	request_close_window
	do
		hide
	end

feature {EQA_TEST_SET} -- Implementation / Constants

	notes: LINKED_LIST [STRING]

	suspect_1_button: EV_BUTTON
	suspect_2_button: EV_BUTTON
	suspect_3_button: EV_BUTTON
	suspect_4_button: EV_BUTTON
	suspect_5_button: EV_BUTTON
	suspect_6_button: EV_BUTTON
		-- Buttons of suspects

	weapon_1_button: EV_BUTTON
	weapon_2_button: EV_BUTTON
	weapon_3_button: EV_BUTTON
	weapon_4_button: EV_BUTTON
	weapon_5_button: EV_BUTTON
	weapon_6_button: EV_BUTTON
		-- Buttons of weapons

	room_1_button: EV_BUTTON
	room_2_button: EV_BUTTON
	room_3_button: EV_BUTTON
	room_4_button: EV_BUTTON
	room_5_button: EV_BUTTON
	room_6_button: EV_BUTTON
	room_7_button: EV_BUTTON
	room_8_button: EV_BUTTON
	room_9_button: EV_BUTTON

		-- Buttons of rooms

	ok_button: EV_BUTTON
		-- "Save Notes" button

	suspect_1_label: EV_LABEL
	suspect_2_label: EV_LABEL
	suspect_3_label: EV_LABEL
	suspect_4_label: EV_LABEL
	suspect_5_label: EV_LABEL
	suspect_6_label: EV_LABEL
		-- Labels of suspects

	weapon_1_label: EV_LABEL
	weapon_2_label: EV_LABEL
	weapon_3_label: EV_LABEL
	weapon_4_label: EV_LABEL
	weapon_5_label: EV_LABEL
	weapon_6_label: EV_LABEL
		-- Labels of weapons

	room_1_label: EV_LABEL
	room_2_label: EV_LABEL
	room_3_label: EV_LABEL
	room_4_label: EV_LABEL
	room_5_label: EV_LABEL
	room_6_label: EV_LABEL
	room_7_label: EV_LABEL
	room_8_label: EV_LABEL
	room_9_label: EV_LABEL
		-- Labels of rooms

	suspects_label: EV_LABEL
		-- "Suspects" label

	weapons_label: EV_LABEL
		-- "Weapons" label

	rooms_label: EV_LABEL
		-- "Rooms" label

	con_notes: EV_FIXED

	button_count : INTEGER

	count_suspect_1, count_suspect_2, count_suspect_3, count_suspect_4 ,count_suspect_5 ,count_suspect_6: CU_VAR_INTEGER

	count_weapon_1, count_weapon_2, count_weapon_3, count_weapon_4 ,count_weapon_5 ,count_weapon_6: CU_VAR_INTEGER

	count_room_1, count_room_2, count_room_3, count_room_4 ,count_room_5 ,count_room_6, count_room_7, count_room_8, count_room_9: CU_VAR_INTEGER

end
