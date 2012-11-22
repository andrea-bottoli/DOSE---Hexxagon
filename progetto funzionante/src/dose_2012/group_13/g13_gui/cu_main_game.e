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
		    end

feature

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
	enter_room: EV_BUTTON
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
	quit_game: EV_BUTTON

	-- Instance of screens shows during the game
	win_dialog: CU_VICTORY
	lose_accus_correct_dialog: CU_LOSE_FOR_ACCUSATION_CORRECT
	lose_accus_incorrect_dialog: CU_LOSE_FOR_ACCUSATION_INCORRECT

end
