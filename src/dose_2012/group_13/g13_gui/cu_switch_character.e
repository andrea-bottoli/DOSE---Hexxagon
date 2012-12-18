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
	make_gm,
	make_gl
feature
	make_gm(game_master: CU_GAME_MASTER_LOBBY; a_controller: CU_INIT_CONTROLLER)
		local
			array: ARRAY[STRING]
			selection: STRING
	do

		create list_characters.make_with_strings (make_list_suspects(a_controller))

		create select_button.make_with_text ("Select")
		select_button.set_minimum_size (75,24)
		select_button.select_actions.extend (agent select_char (list_characters,a_controller))
		select_button.select_actions.extend (agent select_button.disable_sensitive)
		select_button.select_actions.extend (agent game_master.set_disable_switch)
		select_button.select_actions.extend (agent game_master.set_sensitive_start)
		select_button.select_actions.extend (agent hide)


		create cancel_button.make_with_text ("Cancel")
		cancel_button.set_minimum_size (75, 24)
		cancel_button.select_actions.extend (agent hide)
		cancel_button.select_actions.extend (agent game_master.set_sensitive_switch)



		set_message ("List of Players")
		create horizontal_separator
		create con_switch
		con_switch.extend_with_position_and_size (horizontal_separator, 0, 0, 400, 5)
		con_switch.extend_with_position_and_size (select_button, 270,40 , 80, 40)
		con_switch.extend_with_position_and_size (cancel_button, 270, 200, 80, 40)
		con_switch.extend_with_position_and_size (message_label, 10, 10, 100, 30)
		con_switch.extend_with_position_and_size (list_characters, 10, 50, 200, 230)

		make_with_title ("Switch Character - Cluedo")
		set_size (400,350)
		put (con_switch)
	end


	make_gl(game_slave: CU_GAME_SLAVE_LOBBY; a_controller: CU_INIT_CONTROLLER)

	local
			array: ARRAY[STRING]
			selection: STRING
	do

		create list_characters.make_with_strings (make_list_suspects(a_controller))

		create select_button.make_with_text ("Select")
		select_button.set_minimum_size (75,24)
		select_button.select_actions.extend (agent select_char (list_characters,a_controller))
		select_button.select_actions.extend (agent select_button.disable_sensitive)
		select_button.select_actions.extend (agent game_slave.set_disable_switch)
		select_button.select_actions.extend (agent game_slave.set_sensitive_start)
		select_button.select_actions.extend (agent hide)


		create cancel_button.make_with_text ("Cancel")
		cancel_button.set_minimum_size (75, 24)
		cancel_button.select_actions.extend (agent hide)
		cancel_button.select_actions.extend (agent game_slave.set_sensitive_switch)



		set_message ("List of Players")

		create con_switch
		con_switch.extend_with_position_and_size (select_button, 270,40 , 80, 40)
		con_switch.extend_with_position_and_size (cancel_button, 270, 200, 80, 40)
		con_switch.extend_with_position_and_size (message_label, 10, 10, 100, 30)
		con_switch.extend_with_position_and_size (list_characters, 10, 50, 200, 230)

		make_with_title ("Switch Character - Cluedo")
		set_size (400,350)
		put (con_switch)
	end

feature

	make_list_suspects (a_controller: CU_INIT_CONTROLLER): LINKED_LIST [STRING]
	local
		index: INTEGER
		list_of_integer: LINKED_LIST [INTEGER]
	do
--------		list_of_integer := a_controller.logic.game.active_players.at (6).pawn
------		create suspects
------		create Result.make
------		from
--------			list_of_integer.start
------			index := 0
------		until
--------			list_of_integer.exhausted
------			index >= a_controller.logic.game.active_players.count
------		loop
------			Result.extend (suspects.get_full_name (a_controller.logic.game.active_players.at (1).pawn))
--------			list_of_integer.forth
------			index := index + 1
------		end

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

		ensure
			list_suspects_not_void: Result /= void
	end

	select_char (list_chars: EV_LIST; a_controller: CU_INIT_CONTROLLER)
			-- Remove a player of the connected list
		require
			list_chars_not_empty: list_chars /= void
		local
--			exhausted_list: BOOLEAN
			index: INTEGER
			list_suspects:  LINKED_LIST [STRING]
		do
			list_suspects := make_list_suspects (a_controller)
			if
				attached list_chars.selected_item
			then
--				list_chars.selected_item.text
				from
					index := 0
					list_suspects.start
				until
					list_suspects.exhausted
				loop
					if
						list_suspects.item.is_equal (list_chars.selected_item.text)
					then
						pawn_selected := index
						list_suspects.finish
					end
					list_suspects.forth
					index := index + 1
				end
--				list_chars.selected_item.destroy
--				a_controller.logic.game.active_players.force (list_chars.selected_item, i: INTEGER_32)
--				a_controller.logic.rcv_message (a_msg: [detachable] CU_MESSAGE)
			end
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
