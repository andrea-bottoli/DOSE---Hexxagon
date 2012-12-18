note
	description: "Summary description for {CU_SUGGESTION}."
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MAKE_A_SUGGESTION

inherit
	CU_WINDOWS

create
	make

feature

	make(m_game:CU_MAIN_GAME)
		-- Displays a window for make a suggestion
		do
			create suspects_combo_box.make_with_strings (make_list_suspects)
			suspects_combo_box.set_minimum_size (120,24)
			suspects_combo_box.disable_edit

			create weapons_combo_box.make_with_strings (make_list_weapons)
			weapons_combo_box.set_minimum_size (120, 24)
			weapons_combo_box.disable_edit

			create suggest_button.make_with_text ("Suggest")
			suggest_button.set_minimum_size (75,24)
			suggest_button.select_actions.extend (agent hide)

			create cancel_button.make_with_text ("Cancel")
			cancel_button.set_minimum_size (75, 24)
			cancel_button.select_actions.extend (agent hide)
			cancel_button.select_actions.extend (agent m_game.set_sensitive_suggest)

			suggest_button.select_actions.extend (agent take_elements(suspects_combo_box,weapons_combo_box))
			create horizontal_separator
			create con_suggestion
			con_suggestion.extend_with_position_and_size (horizontal_separator, 0, 0, 410, 5)
			con_suggestion.extend_with_position_and_size (suggest_button, 62, 200, 80, 40)
			con_suggestion.extend_with_position_and_size (cancel_button, 249, 200, 80, 40)
			con_suggestion.extend_with_position_and_size (suspects_combo_box, 10, 50, 120, 24)
			con_suggestion.extend_with_position_and_size (weapons_combo_box, 140, 50, 120, 24)

			set_message("Select a Suspect")
			con_suggestion.extend_with_position_and_size (message_label, 10, 15, 100, 20)
			set_message("Select a Weapon")
			con_suggestion.extend_with_position_and_size (message_label, 140, 15, 100, 20)


			make_with_title ("Make an Suggestion - Cluedo")
			set_size (410,350)
			put (con_suggestion)
			disable_user_resize
		ensure
			accusation_is_displayed: not is_displayed
		end

feature

	make_list_suspects: LINKED_LIST [STRING]
		local
			index: INTEGER
		do
			create a_suspects
			create Result.make
			from
				index := 0
			until
				index >= 6
			loop
				Result.extend (a_suspects.get_full_name (index))
				index := index + 1
			end
		end

	make_list_weapons: LINKED_LIST [STRING]
		local
			index: INTEGER
		do
			create a_weapons
			create Result.make
			from
				index := 0
			until
				index >= 6
			loop
				Result.extend (a_weapons.get_full_name (index))
				index := index + 1
			end
		end

	take_elements(susp: EV_COMBO_BOX; weap: EV_COMBO_BOX)
		local
			list: LINKED_LIST[STRING]
		do
			create list.make
			if attached weap.selected_item then
				list.extend (weap.selected_item.text)
			end
			if attached susp.selected_item then
				list.extend (susp.selected_item.text)
			end

			create suggest.make_suggest (list)
			suggest.show
		end

feature	--Implementation/ Constants

	suggest_button: EV_BUTTON
            -- "Suggest" button
	cancel_button: EV_BUTTON
            -- "Cancel" button
    suspects_combo_box: EV_COMBO_BOX
    		-- "Suspects" combo box
    weapons_combo_box: EV_COMBO_BOX
    		-- "Weapons" combo box

	con_suggestion: EV_FIXED

feature -- Constants

	a_suspects: CU_ENUM_SUSPECTS
	a_weapons: CU_ENUM_WEAPONS
	suggest: CU_SHOW_SUGGEST_ACCUSATION
end
