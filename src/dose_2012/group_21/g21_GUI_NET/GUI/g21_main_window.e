note
	description: "Summary description for {G21_MAIN_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_MAIN_WINDOW
inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G21_COMMONS
		undefine default_create, copy end
	G21_CARD_MESSAGE
	undefine default_create, copy end

feature
	initialize
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend(agent close_window)
		set_title("Triple Triad")
		set_size(1024, 768)
		disable_user_resize
	end

feature {G21_GUI}

	show_message_box(msg : STRING)
	local
		msg_dialog : EV_INFORMATION_DIALOG
		internal_pixmap: EV_PIXMAP
	 	i: INTEGER
	 	tempCard : G21_BOARD_CELL
	do
		create msg_dialog.make_with_text(msg)
		msg_dialog.set_title("Message")

		relative_path := g21_img_path

		create internal_pixmap
		-- The boxes
		extend (vertical_box)
		-- 2 Players and board
		vertical_box.extend (upper_horizontal_box)
		upper_horizontal_box.extend (p1_table) -- player 1 hand
		upper_horizontal_box.extend (b_table) -- board
		upper_horizontal_box.extend (p2_table) -- player 2 hand
		vertical_box.extend (down_horizontal_box) -- menu bar
		down_horizontal_box.extend (menu_table) -- main menu
		down_horizontal_box.extend (rule_table) -- rules menu

		-- Main Frame size
		vertical_box.set_minimum_width (1020)
		vertical_box.set_minimum_height (730)

		-- Setting up Player1 hand
		-- p1_table.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		p1_table.set_minimum_width (290)
		p1_table.set_minimum_height (530)
		p1_table.resize (2, 3)
		p1_table.set_row_spacing (4)
		p1_table.set_column_spacing (4)
		p1_table.set_border_width (4)
		internal_pixmap.set_with_named_file (rpath("bk_left.png"))
		p1_table.set_background_pixmap (internal_pixmap)

		-- Setting up Player2 hand
		-- p2_table.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		p2_table.set_minimum_width (290)
		p2_table.set_minimum_height (500)
		p2_table.resize (2, 3)
		p2_table.set_row_spacing (4)
		p2_table.set_column_spacing (4)
		p2_table.set_border_width (4)
		internal_pixmap.set_with_named_file (rpath("bk_right.png"))
		p2_table.set_background_pixmap (internal_pixmap)

		-- Setting up board
		b_table.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		b_table.set_minimum_width (438)
		b_table.set_minimum_height (530)
		b_table.resize (3, 3)
		b_table.set_row_spacing (4)
		b_table.set_column_spacing (4)
		b_table.set_border_width (4)
		internal_pixmap.set_with_named_file (rpath("bk_center.png"))
		b_table.set_background_pixmap (internal_pixmap)

		-- Insert and position all children of `b_table'.
		from i:= 1
		until i = 9
		loop
			board_cards.force(create {G21_BOARD_CELL})
		end
		b_table.put_at_position (board_cards.item, 1, 1, 1, 1)
		tempCard := board_cards.item
		tempCard.set(1,1)
		b_table.pointer_button_press_actions.extend (agent tempCard.OnClickPlay)
		board_cards.forth
		b_table.put_at_position (board_cards.item, 2, 1, 1, 1)
		tempCard := board_cards.item
		tempCard.set(2,1)
		b_table.pointer_button_press_actions.extend (agent tempCard.OnClickPlay)
		board_cards.forth
		b_table.put_at_position (board_cards.item, 3, 1, 1, 1)
		tempCard := board_cards.item
		tempCard.set(3,1)
		b_table.pointer_button_press_actions.extend (agent tempCard.OnClickPlay)
		board_cards.forth
		b_table.put_at_position (board_cards.item, 1, 2, 1, 1)
		tempCard := board_cards.item
		tempCard.set(1,2)
		b_table.pointer_button_press_actions.extend (agent tempCard.OnClickPlay)
		board_cards.forth
		b_table.put_at_position (board_cards.item, 2, 2, 1, 1)
		tempCard := board_cards.item
		tempCard.set(2,2)
		b_table.pointer_button_press_actions.extend (agent tempCard.OnClickPlay)
		board_cards.forth
		b_table.put_at_position (board_cards.item, 3, 2, 1, 1)
		tempCard := board_cards.item
		tempCard.set(3,2)
		b_table.pointer_button_press_actions.extend (agent tempCard.OnClickPlay)
		board_cards.forth
		b_table.put_at_position (board_cards.item, 1, 3, 1, 1)
		tempCard := board_cards.item
		tempCard.set(1,3)
		b_table.pointer_button_press_actions.extend (agent tempCard.OnClickPlay)
		board_cards.forth
		b_table.put_at_position (board_cards.item, 2, 3, 1, 1)
		tempCard := board_cards.item
		tempCard.set(2,3)
		b_table.pointer_button_press_actions.extend (agent tempCard.OnClickPlay)
		board_cards.forth
		b_table.put_at_position (board_cards.item, 3, 3, 1, 1)
		tempCard := board_cards.item
		tempCard.set(3,3)
		b_table.pointer_button_press_actions.extend (agent tempCard.OnClickPlay)

		--Setting up menu area
		-- down_horizontal_box.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		down_horizontal_box.set_minimum_width (1020)
		down_horizontal_box.set_minimum_height (200)
		internal_pixmap.set_with_named_file (rpath("bk_down.png"))
		down_horizontal_box.set_background_pixmap (internal_pixmap)

		--Setting up main menu
		-- menu_table.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		menu_table.set_minimum_width (700)
		menu_table.set_minimum_height (200)
		menu_table.resize (3, 2)
		menu_table.set_row_spacing (5)
		menu_table.set_column_spacing (5)
		menu_table.set_border_width (5)

		--Setting up the main menu choices
		--single_duel.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		single_duel.set_minimum_width (1)
		single_duel.set_minimum_height (1)
		internal_pixmap.set_with_named_file (rpath("single.png"))
		single_duel.set_pixmap (internal_pixmap)
		single_duel.pointer_button_press_actions.extend (agent OnAIGameClick (?, ?, ?, ?, ?, ?, ?, ?))
		--multiplayer.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		join_game.set_minimum_width (1)
		join_game.set_minimum_height (1)
		internal_pixmap.set_with_named_file (rpath("multiplayer.png"))
		join_game.set_pixmap (internal_pixmap)
		join_game.pointer_button_press_actions.extend (agent OnJoinGameClick (?, ?, ?, ?, ?, ?, ?, ?))
		--options.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		host_game.set_minimum_width (1)
		host_game.set_minimum_height (1)
		internal_pixmap.set_with_named_file (rpath("options.png"))
		host_game.set_pixmap (internal_pixmap)
		host_game.pointer_button_press_actions.extend (agent OnHostGameClick (?, ?, ?, ?, ?, ?, ?, ?))
		--help.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		help.set_minimum_width (1)
		help.set_minimum_height (1)
		internal_pixmap.set_with_named_file (rpath("help.png"))
		help.set_pixmap (internal_pixmap)
		help.pointer_button_press_actions.extend (agent OnHelpClick (?, ?, ?, ?, ?, ?, ?, ?))
		--league.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		save.set_minimum_width (1)
		save.set_minimum_height (1)
		internal_pixmap.set_with_named_file (rpath("league.png"))
		save.set_pixmap (internal_pixmap)
		save.pointer_button_press_actions.extend (agent OnSaveClick (?, ?, ?, ?, ?, ?, ?, ?))
		--exit.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		exit.set_minimum_width (1)
		exit.set_minimum_height (1)
		internal_pixmap.set_with_named_file (rpath("exit.png"))
		exit.set_pixmap (internal_pixmap)
		exit.pointer_button_press_actions.extend (agent OnExitClick (?, ?, ?, ?, ?, ?, ?, ?))

		--Setting up rules menu
		rule_table.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		rule_table.set_minimum_width (370)
		rule_table.set_minimum_height (200)

		msg_dialog.show_modal_to_window(Current)
	end

	addListener(listener : G21_NOTIFYLISTENER)
	require
		listener /= Void
	do
		notifyListener := listener
	ensure
		notifyListener = listener
	end

	addCardListener(listener_a : G21_CARD_MESSAGE)
	require
		listener_a /= Void
	do
		cardListener := listener_a
	ensure
		cardListener = listener_a
	end

feature {NONE}
	close_window
	do
		(create {EV_ENVIRONMENT}).application.destroy
	end

	onAIGameClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
		notifyListener.message("AIGAME")
	end

	onHostGameClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
		notifyListener.message("HOSTGAME")
	end

	onJoinGameClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
		notifyListener.message("JOINGAME")
	end

	onSaveClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
		notifyListener.message("SAVE")
	end

	onExitClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
		notifyListener.message("EXIT")
		close_window
	end

	onHelpClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
		show_message_box("Help is not available yet")
	end

feature {G21_GUI}
	add_rule(rule : STRING)
	local
		newCheckBox : EV_CHECK_BUTTON
	do
		-- Adding rules choices	
		create newCheckBox
		newCheckBox.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (234, 38, 68))
		newCheckBox.enable_select
		newCheckBox.set_text ("rule")
		rules.force(newCheckBox)
		rule_table.extend (newCheckBox)
	end

	update_p1_hand(hand : ARRAY[G21_XLABEL])
	local
		p1_hand : ARRAY[G21_XLABEL]
		i : INTEGER
		tempCard : G21_XLABEL
	do
		p1_hand.make_empty

		--Empty player's hand on GUI
		from i := 1
		until i = hand.count
		loop
		p1_table.remove
		end

		--Repopulate player's hand
		from i := 1
		until i = hand.count
		loop
			p1_table.put_at_position (hand.item (i), (i\\2)+1, (i//2)+1, 1, 1)
			tempCard := hand.item (i)
			hand.item(i).pointer_button_press_actions.extend (agent tempCard.OnClickSelect)
		end

		--Redraws it
		p1_table.refresh_now
	end

	update_p2_hand(hand : ARRAY[G21_XLABEL])
	local
		p2_hand : ARRAY[G21_XLABEL]
		i : INTEGER
	do
		p2_hand.make_empty

		--Empty player's hand on GUI
		from i := 1
		until i = hand.count
		loop
		p2_table.remove
		end

		--Repopulate player's hand
		from i := 1
		until i = hand.count
		loop
			p2_table.put_at_position (hand.item (i), (i\\2)+1, (i//2)+1, 1, 1)
			tempCard := hand.item (i)
			hand.item(i).pointer_button_press_actions.extend (agent tempCard.OnClickSelect)
		end

		--Redraws it
		p2_table.refresh_now
	end

	sendCardPick(card_a : G21_CARD)
	do

	end

	sendCardSelect(card_a : G21_CARD)
	do
		selectedCard := card_a
	end

	sendCardPlay(card : G21_CARD; row : INTEGER ; col : INTEGER)
	do
		cardListener.sendCardClick(selectedCard, row, col)
	end

feature {NONE}
	rules : ARRAYED_LIST[EV_CHECK_BUTTON]
	board_cards : ARRAYED_LIST[EV_PIXMAP]
	vertical_box, rule_table: EV_VERTICAL_BOX
	upper_horizontal_box, down_horizontal_box: EV_HORIZONTAL_BOX
	p1_table, b_table, p2_table, menu_table: EV_TABLE

	single_duel, join_game, host_game, help, save, exit: EV_BUTTON

	relative_path : KL_PATHNAME
	relative_filename : KL_PATHNAME

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	TT_folder: STRING = "group_21"

	selectedCard : G21_CARD

	cardListener : G21_CARD_MESSAGE
	notifyListener : G21_NOTIFYLISTENER
end
