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

	make
		-- Displays a window for make a suggestion
		require
--			not_is_displayed: not is_displayed
		do
			create suspects_combo_box.make_with_strings (make_list_suspects)

			create weapons_combo_box.make_with_strings (make_list_weapons)


			create suggest_button.make_with_text ("Suggest")
			suggest_button.set_minimum_size (75,24)
			suggest_button.select_actions.extend (agent destroy)

			create cancel_button.make_with_text ("Cancel")
			cancel_button.set_minimum_size (75, 24)
			cancel_button.select_actions.extend (agent hide)

			create con_suggestion
			io.put_integer (suspects_combo_box.height)
			con_suggestion.extend_with_position_and_size (suggest_button, 300,70 , 80, 40)
			con_suggestion.extend_with_position_and_size (cancel_button, 300, 160, 80, 40)
			con_suggestion.extend_with_position_and_size (suspects_combo_box, 30, 50, 100, 22)
			con_suggestion.extend_with_position_and_size (weapons_combo_box, 170, 50, 100, 22)
			set_message("Select a Suspect")
			con_suggestion.extend_with_position_and_size (message_label, 30, 20, 100, 30)
			set_message("Select a Weapon")
			con_suggestion.extend_with_position_and_size (message_label, 170, 20, 100, 30)


			make_with_title ("Make a Suggestion - Cluedo")
			set_size (400,300)
			put (con_suggestion)
		ensure
			accusation_is_displayed: not is_displayed
		end

feature

	select_a_suspect ():INTEGER
		-- Display  all characters and select one of them
		do
		ensure
			valid_selection: Result >= 0 and Result <=5
		end

	select_a_weapon (): INTEGER
		-- Display  all weapons and select one of them
		do
		ensure
			valid_selection: Result >= 0 and Result <= 5
		end

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

end
