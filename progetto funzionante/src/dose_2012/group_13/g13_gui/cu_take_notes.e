note
	description: "Summary description for {CU_NOTES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_TAKE_NOTES

inherit
	CU_WINDOWS

create
	make

feature
	make
			-- Displays the window of notes
		require
			not_displayed_window: not is_displayed
		do
		ensure
			displayed_window: is_displayed
		end

	save_notes: LINKED_LIST [STRING]
			-- Save the notes taked by player
		require
			notes_non_empty: notes /= void
		do
		ensure
			notes_updated: notes = Result
		end

	load_notes (a_notes: LINKED_LIST [STRING])
			-- Load the notes taked by played
		require
			non_empty_notes: a_notes /= void
		do
		ensure
			notes_loaded: a_notes = notes
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

	save_notes_button: EV_BUTTON
		-- "Save Notes" button

	close_notes_button: EV_BUTTON
		-- "Close Notes" button

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

end
