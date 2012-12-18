class
	CU_SHOW_SUGGEST_ACCUSATION

inherit
	CU_WINDOWS

	CU_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end
create
	make_suggest,
	make_accuse

feature
		-- make of the suggestion
	make_suggest (items_selected: LINKED_LIST [STRING])
			-- Displays the window of the suggestion
		require
--			not_displayed: not is_displayed
		do
			create ok_button.make_with_text ("Accept")
			ok_button.select_actions.extend (agent destroy)

			create con_suggest
			con_suggest.extend_with_position_and_size (ok_button, 285, 420, 80, 40)

			make_with_title ("Suggestion - Cluedo")
			set_size (750,470)
			put (con_suggest)
			disable_user_resize

			set_image (items_selected,con_suggest)
		ensure
--			suggest_is_displayed: is_displayed
		end

		-- make of the acussation
	make_accuse (items_selected: LINKED_LIST [STRING])
			-- Displays the window of the suggestion
		require
--			not_displayed: not is_displayed
		do
			create ok_button.make_with_text ("Accept")
			ok_button.select_actions.extend (agent hide)

			create horizontal_separator
			create con_accuse
			con_accuse.extend_with_position_and_size (horizontal_separator, 0, 0, 750, 5)
			con_accuse.extend_with_position_and_size (ok_button, 285, 420, 80, 40)

			make_with_title ("Accusation - Cluedo")
			set_size (750,470)
			put (con_accuse)
			disable_user_resize

			set_image (items_selected,con_accuse)
		ensure
--			suggest_is_displayed: is_displayed
		end

	set_image (items: LINKED_LIST [STRING]; contain: EV_FIXED)
		do
			items.start
			if items.item.is_equal ("Kitchen") then
				contain.extend_with_position_and_size (set_pixmap(img_card_kitchen), 510, 30, 230, 360)
			end
			if items.item.is_equal ("Ball Room") then
				contain.extend_with_position_and_size (set_pixmap(img_card_ball_room), 510, 30, 230, 360)
			end
			if items.item.is_equal ("Conservatory") then
				contain.extend_with_position_and_size (set_pixmap(img_card_conservatory), 510, 30, 230, 360)
			end
			if items.item.is_equal ("Dining Room") then
				contain.extend_with_position_and_size (set_pixmap(img_card_dining_room), 510, 30, 230, 360)
			end
			if items.item.is_equal ("Billiard Room") then
				contain.extend_with_position_and_size (set_pixmap(img_card_billiard_room), 510, 30, 230, 360)
			end
			if items.item.is_equal ("Library") then
				contain.extend_with_position_and_size (set_pixmap(img_card_library), 510, 30, 230, 360)
			end
			if items.item.is_equal ("Lounge") then
				contain.extend_with_position_and_size (set_pixmap(img_card_lounge), 510, 30, 230, 360)
			end
			if items.item.is_equal ("Hall") then
				contain.extend_with_position_and_size (set_pixmap(img_card_hall), 510, 30, 230, 360)
			end
			if items.item.is_equal ("Study") then
				contain.extend_with_position_and_size (set_pixmap(img_card_study), 510, 30, 230, 360)
			end
			items.forth


			if items.item.is_equal ("Rope") then
				contain.extend_with_position_and_size (set_pixmap(img_card_rope), 260, 30, 230, 360)
			end
			if items.item.is_equal ("Lead Pipe") then
				contain.extend_with_position_and_size (set_pixmap(img_card_lead_pipe), 260, 30, 230, 360)
			end
			if items.item.is_equal ("Knife") then
				contain.extend_with_position_and_size (set_pixmap(img_card_knife), 260, 30, 230, 360)
			end
			if items.item.is_equal ("Wrench") then
				contain.extend_with_position_and_size (set_pixmap(img_card_wrench), 260, 30, 230, 360)
			end
			if items.item.is_equal ("Candlestick") then
				contain.extend_with_position_and_size (set_pixmap(img_card_candlestick), 260, 30, 230, 360)
			end
			if items.item.is_equal ("Pistol") then
				contain.extend_with_position_and_size (set_pixmap(img_card_revolver), 260, 30, 230, 360)
			end
			items.forth


			if items.item.is_equal ("Miss. Scarlet") then
				contain.extend_with_position_and_size (set_pixmap(img_card_scarlett), 10, 30, 230, 360)
			end
			if items.item.is_equal ("Colonel Mustard") then
				contain.extend_with_position_and_size (set_pixmap(img_card_mustard), 10, 30, 230, 360)
			end
			if items.item.is_equal ("Mrs. White") then
				contain.extend_with_position_and_size (set_pixmap(img_card_white), 10, 30, 230, 360)
			end
			if items.item.is_equal ("Mr. Green") then
				contain.extend_with_position_and_size (set_pixmap(img_card_green), 10, 30, 230, 360)
			end
			if items.item.is_equal ("Mrs. Peacock") then
				contain.extend_with_position_and_size (set_pixmap(img_card_peacock), 10, 30, 230, 360)
			end
			if items.item.is_equal ("Professor Plum") then
				contain.extend_with_position_and_size (set_pixmap(img_card_plum), 10, 30, 230, 360)
			end

		end

feature {NONE}

	con_accuse: EV_FIXED
	con_suggest: EV_FIXED

	ok_button: EV_BUTTON
        -- "OK" button.

end
