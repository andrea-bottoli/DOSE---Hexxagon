note
	description: "Summary description for {CU_ACCUSATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MAKE_AN_ACCUSATION

inherit
	CU_WINDOWS

create
	make

feature
	make(m_game: CU_MAIN_GAME)
		-- Displays a window for make an accusation
		do
			create suspects_combo_box.make_with_strings (make_list_suspects)
			suspects_combo_box.set_minimum_size (120,24)
			suspects_combo_box.disable_edit

			create weapons_combo_box.make_with_strings (make_list_weapons)
			weapons_combo_box.set_minimum_size (120, 24)
			weapons_combo_box.disable_edit

			create rooms_combo_box.make_with_strings (make_list_rooms)
			suspects_combo_box.set_minimum_size (120, 24)
			rooms_combo_box.disable_edit

			create accuse_button.make_with_text ("Accuse")
			accuse_button.set_minimum_size (75,24)
			accuse_button.select_actions.extend (agent destroy)
			accuse_button.select_actions.extend (agent take_elements(suspects_combo_box,weapons_combo_box,rooms_combo_box))

			create cancel_button.make_with_text ("Cancel")
			cancel_button.set_minimum_size (75, 24)
			cancel_button.select_actions.extend (agent hide)
			cancel_button.select_actions.extend (agent m_game.set_sensitive_accuse)

			create horizontal_separator
			create con_accusation
			con_accusation.extend_with_position_and_size (horizontal_separator, 0, 0, 410, 5)
			con_accusation.extend_with_position_and_size (accuse_button, 62, 200, 80, 40)
			con_accusation.extend_with_position_and_size (cancel_button, 249, 200, 80, 40)
			con_accusation.extend_with_position_and_size (suspects_combo_box, 10, 50, 120, 24)
			con_accusation.extend_with_position_and_size (weapons_combo_box, 140, 50, 120, 24)
			con_accusation.extend_with_position_and_size (rooms_combo_box, 270, 50, 120, 24)

			set_message("Select a Suspect")
			con_accusation.extend_with_position_and_size (message_label, 10, 15, 100, 20)
			set_message("Select a Weapon")
			con_accusation.extend_with_position_and_size (message_label, 140, 15, 100, 20)
			set_message("Select a Room")
			con_accusation.extend_with_position_and_size (message_label, 270, 15, 100, 20)

			make_with_title ("Make an Accusation - Cluedo")
			set_size (410,350)
			put (con_accusation)
			disable_user_resize

		ensure
			accusation_is_displayed: not is_displayed
		end

feature

	make_list_suspects: LINKED_LIST [STRING]
		local
			index: INTEGER
		do
			create suspects
			create Result.make
			from
				index := 0
			until
				index >= 6
			loop
				Result.extend (suspects.get_full_name (index))
				index := index + 1
			end
		end

	make_list_weapons: LINKED_LIST [STRING]
		local
			index: INTEGER
		do
			create weapons
			create Result.make
			from
				index := 0
			until
				index >= 6
			loop
				Result.extend (weapons.get_full_name (index))
				index := index + 1
			end
		end

	make_list_rooms: LINKED_LIST [STRING]
		local
			index: INTEGER
		do
			create rooms
			create Result.make
			from
				index := 0
			until
				index >= 9
			loop
				Result.extend (rooms.get_full_name (index))
				index := index + 1
			end
		end

	take_elements(susp: EV_COMBO_BOX; weap: EV_COMBO_BOX; room: EV_COMBO_BOX)
		local
			list: LINKED_LIST[STRING]
		do
			create list.make

			if attached room.selected_item then
				list.extend (room.selected_item.text)
			end
			if attached weap.selected_item then
				list.extend (weap.selected_item.text)
			end
			if attached susp.selected_item then
				list.extend (susp.selected_item.text)
			end

		create accuse.make_accuse (list)
		accuse.show

	end



feature	--Implementation/ Constants

	accuse_button: EV_BUTTON
            -- "Accuse" button
	cancel_button: EV_BUTTON
            -- "Cancel" button
    suspects_combo_box: EV_COMBO_BOX
    		-- "Suspects" combo box
    weapons_combo_box: EV_COMBO_BOX
    		-- "Weapons" combo box
    rooms_combo_box: EV_COMBO_BOX
    		-- "Rooms" combo box

    window_label: EV_LABEL

    con_accusation: EV_FIXED

	suspects: CU_ENUM_SUSPECTS
	weapons: CU_ENUM_WEAPONS
	rooms: CU_ENUM_ROOMS

	accuse: CU_SHOW_SUGGEST_ACCUSATION

end
