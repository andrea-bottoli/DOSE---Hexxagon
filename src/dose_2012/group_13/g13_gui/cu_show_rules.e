note
	description: "Show rules of the Cluedo."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SHOW_RULES

inherit

	CU_WINDOWS

create
	make

feature

	make
			-- Generates the window of the rules game
		require
--			not_displayed: not is_displayed
--			non_empty_label: message_label /= void
		local
			rules: LINKED_LIST [STRING]
			rules_text: STRING
			text_area: EV_RICH_TEXT
		do
			create accept_button.make_with_text ("Accept")
			accept_button.set_minimum_size (75, 24)
			accept_button.select_actions.extend (agent current.hide)

			create rules.make
			rules := read_my_file

			create rules_text.make_empty
			from
				rules.start
			until
				rules.exhausted
			loop
				rules_text.append (rules.item)
				rules.forth
			end

			create text_area
			text_area.set_minimum_size (400, 300)
			text_area.disable_edit
			text_area.set_text (rules_text)

			create color.make_with_rgb (0.9, 0.9, 0.9)
			text_area.set_background_color (color)

			create color.make_with_rgb (0.5, 0.5, 0.5)
			accept_button.set_background_color (color)

			create horizontal_separator
			create con_rules
			con_rules.extend_with_position_and_size (horizontal_separator, 0, 0, 800, 5)
			con_rules.extend_with_position_and_size (accept_button, 300, 620, 80, 50)
			con_rules.extend_with_position_and_size (text_area, 0, 0, 800, 600)

			make_with_title ("Rules")
			current.set_size (800, 680)
			current.put (con_rules)
		ensure
--			rules_displayed: not is_displayed
		end

	read_my_file : LINKED_LIST [STRING]
    local
		my_file: PLAIN_TEXT_FILE
      my_lines: LINKED_LIST [STRING]
    do
      create my_lines.make
      create my_file.make (file_system.pathname_to_string (txt_rules))
      my_file.open_read
      from
      until my_file.end_of_file
      loop
        my_file.read_line
        my_lines.extend ("%N")
        my_lines.extend (my_file.last_string.twin)
      end
      my_file.close
      Result := my_lines
    end

feature {NONE} -- Implementation/ Constants

	accept_button: EV_BUTTON
			-- "Accept" button

	con_rules: EV_FIXED


	color: EV_COLOR


end
