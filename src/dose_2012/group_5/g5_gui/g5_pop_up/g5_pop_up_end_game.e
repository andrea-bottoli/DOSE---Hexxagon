note
	description: "This class will display the pop-up that cointains the final scores of the game."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_END_GAME
inherit
	G5_POP_UP

create
	make

feature

	make(the_scores: HASH_TABLE[INTEGER, STRING]; a_gui: G5_GUI)
		-- The constructor of the class
		require
			valid_arg: the_scores /= void
		local
			font: EV_FONT
		do
			final_Scores:= the_scores
			gui:= a_gui


			-- create the window
			default_create

			current.set_title ("FINAL SCORES")

			-- the window should be centered in the screen
			set_x_position ((screen_width // 2) - (800 // 2))
			set_y_position ((screen_height // 2) - (550 // 2))

			-- set the size of the window
			set_height (550)
			set_width (800)
			set_minimum_size (800, 578)

			-- disable user resizing for the window
			disable_user_resize

			create pop_up_container
			create pop_up_container_background
			pop_up_container_background.set_with_named_file (file_system.pathname_to_string (img_pop_up_end_background))
			pop_up_container.set_background_pixmap (pop_up_container_background)

			-- create the main label
			create description_label.make_with_text ("GAME OVER - THE FINAL SCORES ARE:")
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 150, 50, 500, 30)

			-- create and add buttons to the pop-up
			create leave_button.make_with_text ("Leave")
			pop_up_container.extend_with_position_and_size (leave_button, 260, 450, 113, 42)
			leave_button.select_actions.extend(agent leave_request)

			-- create and add button to the pop-up
			create rematch_button.make_with_text ("Rematch")
			pop_up_container.extend_with_position_and_size (rematch_button, 430, 450, 113, 42)
			rematch_button.select_actions.extend(agent rematch_request)

			-- create all cards
			set_score_labels

			-- add the main container to the pop-up
			put (pop_up_container)

		end

feature {NONE} -- label initialization

	set_score_labels
		-- set the label with scores on the screen
		local
			key_set: ARRAY[STRING]
			i: INTEGER
			temporary_label: EV_LABEL
			temporary_string: STRING
			temporary_value: INTEGER
		do
			create score_labels_list.make (0)
			key_set:= final_scores.current_keys

			from
				i:=1
			until
				i> key_set.count
			loop
				temporary_value:= final_Scores.at (key_Set[i])
				temporary_string:= key_Set[i]
				temporary_string.append (" -->  ")
				temporary_string.append (temporary_value.out)
				create temporary_label.make_with_text (temporary_string)

				pop_up_container.extend_with_position_and_size (temporary_label, 325, 200+((i-1)*40), 150, 20)

				score_labels_list.force (temporary_label)

				i:=i+1
			end

		end

	leave_request
		-- the ok button has been pressed
		do
			gui.leave_request
			destroy
		end

	rematch_request
		-- the ok button has been pressed
		do
			gui.rematch_request
		end


feature -- Variables

	gui:G5_GUI
		-- the ref to the gui used to notify the player choice

	final_scores: HASH_TABLE[INTEGER, STRING]
		-- The list of players with their names and their final scores

	score_labels_list: ARRAYED_LIST[EV_LABEL]
		-- the list that cointains label with scores

feature -- Attributes

	leave_button: EV_BUTTON
		-- the leave button

	rematch_button: EV_BUTTON
		-- the rematch button

end
