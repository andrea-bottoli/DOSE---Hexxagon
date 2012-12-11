note
	description: "Summary description for {CU_MAIN_BOARD}."
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MAIN_GAME

inherit

	CU_WINDOWS

create
    make

feature -- make

    make
	    do
	    	create pass_turn.make_with_text ("Pass turn")
	    	pass_turn.select_actions.extend (agent hide)

	    	create throw_dices.make_with_text ("Throw dices")
	    	throw_dices.select_actions.extend (agent hide)

	    	create make_suggestion.make_with_text ("Make a suggestion")
	    	create make_sugg.make
	    	make_suggestion.select_actions.extend (agent make_sugg.show)

	    	create make_accusation.make_with_text ("Make an acussation")
	    	create make_accus.make
	    	make_accusation.select_actions.extend (agent make_accus.show)

	    	create leave_room.make_with_text ("Leave room")
	    	leave_room.select_actions.extend (agent hide)

	    	create use_secret_passages.make_with_text ("Use secret passage")
	    	use_secret_passages.select_actions.extend (agent hide)

	    	create left_button.make_with_text ("Left")
	    	left_button.select_actions.extend (agent hide)

	    	create right_button.make_with_text ("Right")
	    	right_button.select_actions.extend (agent move_right (pix_peacock))

	    	create up_button.make_with_text ("Up")
	    	up_button.select_actions.extend (agent hide)

	    	create down_button.make_with_text ("Down")
	    	down_button.select_actions.extend (agent hide)

	    	create show_cards.make_with_text ("Show cards")

	    	show_cards.select_actions.extend (agent hide)

	    	create take_notes.make_with_text ("Notes")
	    	create notes.make
	    	take_notes.select_actions.extend (agent notes.show)

	    	create show_rules.make_with_text ("Show rules")
	    	create rules.make
	    	show_rules.select_actions.extend (agent rules.show)

	    	create leave_game.make_with_text ("Leave Game")
	    	leave_game.select_actions.extend (agent hide)

	    	create con_main_game
	    	con_main_game.extend_with_position_and_size (pix_board_game, 440, 0, 890, 710)
	    	con_main_game.extend_with_position_and_size (pix_peacock, 1233, 186, 25,24)
	    	con_main_game.extend_with_position_and_size (pass_turn, 50, 50, 110, 50)
	    	con_main_game.extend_with_position_and_size (throw_dices, 250, 50, 110, 50)
	    	con_main_game.extend_with_position_and_size (make_suggestion, 50, 120, 110, 50)
	    	con_main_game.extend_with_position_and_size (make_accusation, 250, 120, 110, 50)
	    	con_main_game.extend_with_position_and_size (leave_room, 50, 190, 110, 50)
	    	con_main_game.extend_with_position_and_size (use_secret_passages, 250, 190, 110, 50)
	    	con_main_game.extend_with_position_and_size (left_button, 50, 360, 110, 50)
	    	con_main_game.extend_with_position_and_size (right_button, 250, 360, 110, 50)
	    	con_main_game.extend_with_position_and_size (up_button, 150, 280, 110, 50)
	    	con_main_game.extend_with_position_and_size (down_button, 150, 440, 110, 50)
	    	con_main_game.extend_with_position_and_size (show_cards, 50, 550, 110, 50)
	    	con_main_game.extend_with_position_and_size (take_notes, 250, 550, 110, 50)
	    	con_main_game.extend_with_position_and_size (show_rules, 50, 620, 110, 50)
	    	con_main_game.extend_with_position_and_size (leave_game, 250, 620, 110, 50)
--	    	con_main_game.extend_with_position_and_size (a_widget: [detachable] EV_WIDGET, a_x, a_y, a_width, a_height: INTEGER_32)

	    	make_with_title ("Main Game - Cluedo")
	    	put (con_main_game)
	    	set_size (1310, 710)
	    	disable_user_resize


	    end

feature

	move_right (image: EV_PIXMAP)
	do
		con_main_game.set_item_position (image, image.x_position - 30, image.y_position)
	end

	update_state
		do
		end

	set_player_name (player_name: STRING)
		do
		end

	set_turn (turn: STRING)
		do
		end

feature {ANY}

    on_lose_accus_incorrect
	    	-- Display the Lose dialog
			require
				lose_accus_incorrect_dialog_not_displayed: not lose_accus_incorrect_dialog.is_displayed
	        do
	        ensure
	        	lose_accus_incorrect_dialog_displayed: lose_accus_incorrect_dialog.is_displayed
	        end

	on_lose_accus_correct
	    	-- Display the Lose dialog
			require
				lose_accus_correct_dialog_not_displayed: not lose_accus_correct_dialog.is_displayed
	        do
			ensure
				lose_accus_correct_dialog_displayed: lose_accus_correct_dialog.is_displayed
	        end

    on_win
	    	-- Display the Win dialog
	        require
	        	win_dialog_not_displayed: not win_dialog.is_displayed
	        do
	        ensure
	        	win_dialog_displayed: win_dialog.is_displayed
	        end

feature {NONE} -- Implementation / Constants

	-- Buttons enabled during the turn of player
	pass_turn: EV_BUTTON
	throw_dices: EV_BUTTON
	make_suggestion: EV_BUTTON
	make_accusation: EV_BUTTON
--	enter_room: EV_BUTTON
	leave_room: EV_BUTTON
	use_secret_passages: EV_BUTTON

	--	Buttons of movements of the player, during turn of player
	left_button: EV_BUTTON
	right_button: EV_BUTTON
	up_button: EV_BUTTON
	down_button: EV_BUTTON

	-- Buttons enabled during all the match
	show_cards: EV_BUTTON
	take_notes: EV_BUTTON
	show_rules: EV_BUTTON
	leave_game: EV_BUTTON
--	quit_game: EV_BUTTON

	pix_board_game: EV_PIXMAP
			-- returns the background for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_background))
		end

	con_main_game: EV_FIXED

	pix_peacock: EV_PIXMAP
			-- returns the background for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_peacock))
		end


	-- Instance of screens shows during the game
	win_dialog: CU_VICTORY
	lose_accus_correct_dialog: CU_LOSE_FOR_ACCUSATION_CORRECT
	lose_accus_incorrect_dialog: CU_LOSE_FOR_ACCUSATION_INCORRECT
	rules: CU_SHOW_RULES
	make_sugg: CU_MAKE_A_SUGGESTION
	make_accus:CU_MAKE_AN_ACCUSATION
	cards: CU_SHOW_CARDS
	notes: CU_TAKE_NOTES
end
