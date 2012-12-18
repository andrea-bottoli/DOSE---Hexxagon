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

	make_suggestion: EV_BUTTON
	make_accusation: EV_BUTTON

    make (a_controller: CU_INIT_CONTROLLER; a_pawn: INTEGER)
    local
    	pawn_blue: EV_PIXMAP
    	pawn_white: EV_PIXMAP
    	pawn_red: EV_PIXMAP
    	pawn_violet: EV_PIXMAP
    	pawn_green: EV_PIXMAP
    	pawn_yellow: EV_PIXMAP

	    do
	    	create pawn_blue
	    	create pawn_white
	    	create pawn_red
	    	create pawn_violet
	    	create pawn_green
	    	create pawn_yellow

	    	pawn_blue.set_with_named_file (file_system.pathname_to_string (img_peacock))
	    	pawn_white.set_with_named_file (file_system.pathname_to_string (img_white))
	    	pawn_red.set_with_named_file (file_system.pathname_to_string (img_scarlett))
	    	pawn_violet.set_with_named_file (file_system.pathname_to_string (img_plum))
	    	pawn_green.set_with_named_file (file_system.pathname_to_string (img_green))
	    	pawn_yellow.set_with_named_file (file_system.pathname_to_string (img_mustard))


	    	create pawn
	    	inspect a_pawn
	    	when 0 then
	    		pawn := pawn_red
	    	when 1 then
	    		pawn := pawn_yellow
	    	when 2 then
	    		pawn := pawn_white
	    	when 3 then
	    		pawn := pawn_green
	    	when 4 then
	    		pawn := pawn_blue
	    	when 5 then
				pawn := pawn_violet
	    	end
	    	
			create pass_turn.make_with_text ("Pass Turn")

	       	create throw_dices.make_with_text ("Throw dices")
	    	create dices.make
	    	throw_dices.select_actions.extend (agent dices.show)
	    	throw_dices.select_actions.extend (agent throw_dices.disable_sensitive)

	    	create make_suggestion.make_with_text ("Make a suggestion")
	    	create make_sugg.make(Current)
	    	make_suggestion.select_actions.extend (agent make_sugg.show)
			make_suggestion.select_actions.extend (agent make_suggestion.disable_sensitive)

	    	create make_accusation.make_with_text ("Make an acussation")
	    	create make_accus.make(Current)
	    	make_accusation.select_actions.extend (agent make_accus.show)
			make_accusation.select_actions.extend (agent make_accusation.disable_sensitive)

	    	create use_secret_passages.make_with_text ("Use secret passage")
	    	use_secret_passages.select_actions.extend (agent hide)

	    	create left_button.make_with_text ("Left")
	    	left_button.select_actions.extend (agent move_left (pawn, a_controller))

	    	create right_button.make_with_text ("Right")
	    	right_button.select_actions.extend (agent move_right (pawn, a_controller))

	    	create up_button.make_with_text ("Up")
	    	up_button.select_actions.extend (agent move_up (pawn, a_controller))

	    	create down_button.make_with_text ("Down")
	    	down_button.select_actions.extend (agent move_down (pawn, a_controller))

	    	create show_cards.make_with_text ("Show cards")
--	    	create hand.make
--	    	hand.sequence_put (create {CU_WEAPON_CARD}.make (3))
--	    	hand.force (create {CU_WEAPON_CARD}.make (3))
--	    	hand.extend (create {CU_SUSPECT_CARD}.make (1))
--	    	hand.extend (create {CU_ROOM_CARD}.make (7))
--	    	hand.extend (create {CU_WEAPON_CARD}.make (4))
--	    	create cards.make (hand)
--			show_cards.select_actions.extend (agent cards.show)
--	    	show_cards.select_actions.extend (agent hide)

	    	create take_notes.make_with_text ("Notes")
	    	create notes.make
	    	take_notes.select_actions.extend (agent notes.show)

	    	create show_rules.make_with_text ("Show rules")
	    	create rules.make
	    	show_rules.select_actions.extend (agent rules.show)

	    	create leave_game.make_with_text ("Leave Game")
	    	leave_game.select_actions.extend (agent hide)

			create horizontal_separator

	    	create con_main_game
			con_main_game.extend_with_position_and_size (set_pixmap (img_background), 440, 10, 730, 550)
			con_main_game.extend_with_position_and_size (pawn_blue, 1134, 140, 31,23)
			con_main_game.extend_with_position_and_size (pawn_white, 713, 8, 31,23)
			con_main_game.extend_with_position_and_size (pawn_violet, 1135, 427, 31,23)
			con_main_game.extend_with_position_and_size (pawn_red, 654, 536, 31,23)
			con_main_game.extend_with_position_and_size (pawn_green, 865, 10, 31,23)
			con_main_game.extend_with_position_and_size (pawn_yellow, 442, 383, 31,23)
			con_main_game.extend_with_position_and_size (horizontal_separator, 0, 0, 1310, 5)
	    	con_main_game.extend_with_position_and_size (pass_turn, 50, 50, 110, 50)
	    	con_main_game.extend_with_position_and_size (throw_dices, 250, 50, 110, 50)
	    	con_main_game.extend_with_position_and_size (make_suggestion, 50, 120, 110, 50)
	    	con_main_game.extend_with_position_and_size (make_accusation, 250, 120, 110, 50)
	    	con_main_game.extend_with_position_and_size (use_secret_passages, 250, 190, 110, 50)
	    	con_main_game.extend_with_position_and_size (left_button, 50, 360, 110, 50)
	    	con_main_game.extend_with_position_and_size (right_button, 250, 360, 110, 50)
	    	con_main_game.extend_with_position_and_size (up_button, 150, 280, 110, 50)
	    	con_main_game.extend_with_position_and_size (down_button, 150, 440, 110, 50)
	    	con_main_game.extend_with_position_and_size (show_cards, 50, 550, 110, 50)
	    	con_main_game.extend_with_position_and_size (take_notes, 250, 550, 110, 50)
	    	con_main_game.extend_with_position_and_size (show_rules, 50, 620, 110, 50)
	    	con_main_game.extend_with_position_and_size (leave_game, 250, 620, 110, 50)

	    	make_with_title ("Main Game - Cluedo")
	    	put (con_main_game)
	    	set_size (1310, 710)
	    	disable_user_resize

	    end

feature


	move_right (image: EV_PIXMAP; a_controller: CU_INIT_CONTROLLER)
	do
		a_controller.logic.move ("r")
		con_main_game.set_item_position (image, image.x_position + 30, image.y_position)
	end

	move_left (image: EV_PIXMAP; a_controller: CU_INIT_CONTROLLER)
	do
		a_controller.logic.move ("l")
		con_main_game.set_item_position (image, image.x_position - 30, image.y_position)
	end

	move_up (image: EV_PIXMAP; a_controller: CU_INIT_CONTROLLER)
	do
		a_controller.logic.move ("u")
		con_main_game.set_item_position (image, image.x_position, image.y_position - 22)
	end

	move_down (image: EV_PIXMAP; a_controller: CU_INIT_CONTROLLER)
	do
		a_controller.logic.move ("d")
		con_main_game.set_item_position (image, image.x_position, image.y_position + 22)
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

	set_sensitive_accuse
	do
		make_accusation.enable_sensitive
	end

	set_sensitive_suggest
	do
		make_suggestion.enable_sensitive
	end

feature {NONE} -- Implementation / Constants

	-- Buttons enabled during the turn of player
	pass_turn: EV_BUTTON
	throw_dices: EV_BUTTON
--	leave_room: EV_BUTTON
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

	con_main_game: EV_FIXED

	-- Instance of screens shows during the game

--	win_dialog: CU_VICTORY
--	lose_accus_correct_dialog: CU_LOSE_FOR_ACCUSATION_CORRECT
--	lose_accus_incorrect_dialog: CU_LOSE_FOR_ACCUSATION_INCORRECT
	rules: CU_SHOW_RULES
	make_sugg: CU_MAKE_A_SUGGESTION
	make_accus:CU_MAKE_AN_ACCUSATION
	cards: CU_SHOW_CARDS
	notes: CU_TAKE_NOTES
	dices: CU_THROW_DICES

	pawn: EV_PIXMAP
end
