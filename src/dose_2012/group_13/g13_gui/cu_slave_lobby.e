note
	description: "Summary description for {CU_GAME_SLAVE_LOBBY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_GAME_SLAVE_LOBBY

inherit
	CU_WINDOWS

create
	make

feature
	start_game_button: EV_BUTTON
	            -- "Switch character" button
	switch_char_button: EV_BUTTON

	make (a_controller: CU_INIT_CONTROLLER)
		-- Generates the window to the slave
		do
			a_controller.start ("slave")

			create switch_char_button.make_with_text ("Switch Char")
			switch_char_button.set_minimum_size (75, 24)

			create switch_character.make_gl(Current,a_controller)
			switch_char_button.select_actions.extend (agent switch_character.show)
			switch_char_button.select_actions.extend (agent switch_char_button.disable_sensitive)

			create leave_game_button.make_with_text ("Leave Game")
			leave_game_button.set_minimum_size (75, 24)
			leave_game_button.select_actions.extend (agent hide)

			create start_game_button.make_with_text ("Start Game")
			start_game_button.set_minimum_size (75, 24)
			start_game_button.disable_sensitive
			create main_game.make (a_controller,3)
			start_game_button.select_actions.extend (agent main_game.show)
			create horizontal_separator
			create con_slave
			con_slave.extend_with_position_and_size (horizontal_separator, 0, 0, 360, 5)
			con_slave.extend_with_position_and_size (switch_char_button, 50, 140, 100, 50)
			con_slave.extend_with_position_and_size (leave_game_button, 200, 140, 100, 50)
			con_slave.extend_with_position_and_size (start_game_button, 125, 50, 100, 50)

			make_with_title ("Game Slave Lobby - Cluedo")
			set_size (360,300)
			put (con_slave)

		end
feature -- Method
	set_sensitive_start
	do
		start_game_button.enable_sensitive
	end

	set_sensitive_switch
	do
		switch_char_button.enable_sensitive
	end

	set_disable_switch
		do
			switch_char_button.disable_sensitive
		end


feature	--Implementation/ Constants

	leave_game_button: EV_BUTTON
			-- "Leave Game" button

	con_slave: EV_FIXED

	switch_character: CU_SWITCH_CHARACTER

	main_game: CU_MAIN_GAME

end
