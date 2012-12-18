note
	description: "Summary description for {CU_SWITCH_CHAR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SWITCH_CHARACTER

inherit
	CU_WINDOWS

create
	make
feature
	make

	local
			array: ARRAY[STRING]
			selection: STRING

--	require
--		not_displayed_window: not is_displayed
	do
		create array.make_filled ("", 0, 3)
		array.put ("hola", 0)
		array.put ("mundo", 1)
		array.put ("argentino", 2)
		array.put ("waaaaa", 3)
		create list_aux.make
		list_aux := make_list_suspects
		create list_characters.make_with_strings (make_list_suspects)

		create select_button.make_with_text ("Select")
		select_button.set_minimum_size (75,24)
		select_button.select_actions.extend (agent select_char (list_characters))

		create cancel_button.make_with_text ("Cancel")
		cancel_button.set_minimum_size (75, 24)
		cancel_button.select_actions.extend (agent hide)

		set_message ("List of Players")

		create con_switch
		con_switch.extend_with_position_and_size (select_button, 270,40 , 80, 40)
		con_switch.extend_with_position_and_size (cancel_button, 270, 200, 80, 40)
		con_switch.extend_with_position_and_size (message_label, 10, 10, 100, 30)
		con_switch.extend_with_position_and_size (list_characters, 10, 50, 200, 230)

		make_with_title ("Switch Character")
		set_size (400,350)
		put (con_switch)

	ensure
		displayed_windo: not is_displayed
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

	select_char (list_chars: EV_LIST)
			-- Remove a player of the connected list
		require
--			player_name_not_empty: player_name /= void
--			player_name_exists: get_player_list.has (player_name)
--		local
--			exhausted_list: BOOLEAN
		do
			if
				attached list_chars.selected_item
			then
				io.new_line
				io.put_string (list_chars.selected_item.text)

				list_chars.selected_item.destroy
			end
		ensure
--			player_name_removed: not get_player_list.has (player_name)
		end

feature -- Implementation / Constants

	list_of_char: EV_COMBO_BOX
		-- List of characters

    select_button: EV_BUTTON
            -- "Select" button.

	cancel_button: EV_BUTTON
			-- "Cancel" button

	con_switch: EV_FIXED

	list_characters: EV_LIST

	suspects: CU_ENUM_SUSPECTS

	list_aux: LINKED_LIST [STRING]

end
