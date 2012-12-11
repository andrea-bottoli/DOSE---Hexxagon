note
	description: "Summary description for {G1_NON_DEED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G1_NON_DEED

inherit

	G1_CELL

create
	make_non_deed

feature {ANY} -- Attributes

	description: STRING

feature -- Initialization

	make_non_deed (a_descrip: STRING; a_id_c: INTEGER; a_name_c: STRING)
			-- Initialize the non_deed.
		require
			valid_description: a_descrip /= void
		do
			set_description (a_descrip)
			id_cell := a_id_c
			name_cell := a_name_c
		ensure
			valid_description: description = a_descrip
		end

feature -- Procedures
	-- procedures to set the value of a non_deed.

	set_description (a_descrip: STRING)
			-- Sets the description of non_deed
		require
			valid_descrip: a_descrip /= void
		do
			description := a_descrip
		ensure
			valid_description: description = a_descrip
		end

		-- procedures to get the value of a non_deed.

	get_description (): STRING
			-- gets the description of non_deed
		do
			result := description
		ensure
			valid_description: description /= void
		end

end
