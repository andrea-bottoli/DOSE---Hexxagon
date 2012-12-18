note
	description: "4rth layer window"
	author: "Dimitris Deyannis"
	date: "3/12/2012"
	revision: "0.0.1"

class
	B8_4RTH_LAYER_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	B8_GUI_CONST
		export
			{NONE} all
		undefine
			default_create, copy
		end


create
	make

feature {NONE}	-- Initialization
	make (a_logic: B8_LOGIC)
		do
			logic := a_logic
			make_with_title("Winner!")
		end

initialize
		-- Build the window
	do
		Precursor {EV_TITLED_WINDOW}
		set_size(465,410)

		close_request_actions.extend (agent request_close_window)
		create_container_4rth_layer
	end

create_container_4rth_layer
		-- the constructor of the 4rth layer container
	do
		-- Set the container
		create con_4rth_layer
		put(con_4rth_layer)
		con_4rth_layer.set_background_pixmap(pix_4rth_layer)

		-- add label winner_label
		create winner_label
		winner_label.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 128, 0))
		con_4rth_layer.extend_with_position_and_size(winner_label, 121, 160, 220, 40)
		set_board


		-- Set play_again_button
		create play_again_button
		create pix_play_again
		create pix_play_again_enter
		pix_play_again.set_with_named_file(file_system.pathname_to_string(img_play_again))
		pix_play_again_enter.set_with_named_file(file_system.pathname_to_string(img_play_again_enter))

		play_again_button.set_background_pixmap(pix_play_again)
		play_again_button.pointer_enter_actions.extend(agent pointer_enter(play_again_button))
		play_again_button.pointer_leave_actions.extend(agent pointer_leave(play_again_button))
		play_again_button.pointer_button_release_actions.extend (agent play_again_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
		con_4rth_layer.extend_with_position_and_size (play_again_button, 36, 306, 80, 40)


	-- Set exit_button
		create exit_button
		create pix_exit
		create pix_exit_enter
		pix_exit.set_with_named_file(file_system.pathname_to_string(img_exit))
		pix_exit_enter.set_with_named_file(file_system.pathname_to_string((img_exit_enter)))

		exit_button.set_background_pixmap(pix_exit)
		exit_button.pointer_enter_actions.extend(agent pointer_enter(exit_button))
		exit_button.pointer_leave_actions.extend(agent pointer_leave(exit_button))
		exit_button.pointer_button_release_actions.extend (agent exit_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
		con_4rth_layer.extend_with_position_and_size (exit_button, 340, 306, 80, 40)
	end

feature {NONE} -- Implementation / Agents

request_close_window
			-- The user wants to close the window using X button
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text ("Exit Blokus?")
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
			--		main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end

pointer_enter (a_area: EV_FIXED)
		-- the pointer is entering the area used as a button
	do
		if a_area = play_again_button then
			play_again_button.set_background_pixmap(pix_play_again_enter)
		elseif a_area = exit_button then
			exit_button.set_background_pixmap(pix_exit_enter)
		end
	end

pointer_leave (a_area: EV_FIXED)
		-- the pointer is leaving the area used as a button
	do
		if a_area = play_again_button then
			play_again_button.set_background_pixmap(pix_play_again)
		elseif a_area = exit_button then
			exit_button.set_background_pixmap(pix_exit)
		end
	end

play_again_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klisked on Exit button
	do
		destroy
		create l_1st_layer.make (main_ui,Void)
		l_1st_layer.show
	end

exit_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klisked on Exit button
	local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text ("Exit Blokus?")
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
			--		main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end

set_board
	-- Sets the result
	local
		i,j,n :INTEGER
		temp_s, temp_id: INTEGER
	do
 		n := logic.get_scores.count

		-- Sorting the scores
 		from
 			i:= n-2
 		until
 			i >= 1
 		loop

 			from
 				j := 1
 			until
 				j <= i
 			loop
 				if
 					logic.get_scores.i_th (j) < logic.get_scores.i_th (j+1)
 				then
 					temp_s := logic.get_scores.i_th (j)
 					logic.get_scores.i_th (j) := logic.get_scores.i_th (j+1)
 					logic.get_scores.i_th (j+1) := temp_s
 				end

 				j := j+1
 			end
 			i := i-1
 		end

 		from
 			i := 1
 		until
 			i > n
 		loop

 			-- Matching player ID with score
 			from
 				j:=1
 			until
 				j>n
 			loop
 				if logic.get_players.i_th(j).get_score = logic.get_scores.i_th (i) then
					res.append_string ("Player: ")
					res.append_integer (j)
					res.append_string ("  score: ")
 				end
 			end
 			res.append_integer (logic.get_scores.i_th (i))
 			res.append_string ("%N")
 		end
 		winner_label.set_text (res)
	end

feature {NONE}	-- Attributes

main_ui: MAIN_WINDOW
l_1st_layer: B8_1ST_LAYER_WINDOW

-- Containers

	-- the main, fixed-size container to which all other widgets are added
	con_4rth_layer: EV_FIXED

-- Buttons

	-- Exit button
	exit_button: EV_FIXED

	-- Play again button
	play_again_button: EV_FIXED

-- Pix
	-- 2nd layer server background
	pix_4rth_layer: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file(file_system.pathname_to_string(img_4rth_layer))
		end

	-- Play Again button image
	pix_play_again: EV_PIXMAP

	-- Play Again button image on pointer enter
	pix_play_again_enter: EV_PIXMAP

	-- Exit button image
	pix_exit: EV_PIXMAP

	-- Exit button image on pointer enter
	pix_exit_enter: EV_PIXMAP

-- Labels

	-- Winner label
		winner_label: EV_LABEL

-- String

	res: STRING

feature
	logic: B8_LOGIC

end
