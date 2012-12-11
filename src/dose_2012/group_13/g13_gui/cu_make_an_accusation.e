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
	make
		-- Displays a window for make an accusation
		require
--			not_is_displayed: not is_displayed
		do
			create suspects_combo_box.make_with_strings (make_list_suspects)
			suspects_combo_box.set_minimum_size (120,24)
			suspects_combo_box.disable_edit

--			io.put_integer (suspects_combo_box.width)
--			io.put_integer (suspects_combo_box.height)

			create weapons_combo_box.make_with_strings (make_list_weapons)
			weapons_combo_box.set_minimum_size (120, 24)
			weapons_combo_box.disable_edit

			create rooms_combo_box.make_with_strings (make_list_rooms)
			suspects_combo_box.set_minimum_size (120, 24)
			rooms_combo_box.disable_edit

			create accuse_button.make_with_text ("Accuse")
			accuse_button.set_minimum_size (75,24)
			accuse_button.select_actions.extend (agent hide)

			create cancel_button.make_with_text ("Cancel")
			cancel_button.set_minimum_size (75, 24)
			cancel_button.select_actions.extend (agent hide)

			create con_accusation
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

feature -- Implementation/ Operations

	select_a_suspect ():INTEGER
		-- Display  all characters and select one of them
		do

		ensure
			valid_selection: Result >= 0 and Result <= 5
		end

	select_a_weapon (): INTEGER
		-- Display  all weapons and select one of them
		do

		ensure
			valid_selection: Result >= 0 and Result <= 5
		end

	select_a_room ():INTEGER
		-- Display  all rooms and select one of them
		do
		ensure
			valid_selection: Result >= 0 and Result <= 8
		end

feature

--    set_message (a_message: STRING)
--    	require
--    		messagge_not_empty: a_message /= void
--		do
--			create message_label.default_create
--			message_label.set_text (a_message)
--		ensure
--			message_updated: message_label.text.is_equal (a_message)
--	    end

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

--    message_label: EV_LABEL
        -- Label situated on the top of the dialog,
        -- contains the message.

	suspects: CU_ENUM_SUSPECTS
	weapons: CU_ENUM_WEAPONS
	rooms: CU_ENUM_ROOMS
end

