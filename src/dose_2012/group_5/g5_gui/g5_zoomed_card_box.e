note
	description: "Summary description for {G5_ZOOMED_CARD_BOX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_ZOOMED_CARD_BOX
inherit
	EV_FIXED

	G5_GUI_CARDS_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	make

feature -- initialization

	make
		-- This will initialize the zoomed box to the default_card
		do
			default_create

			create zoomed_card
			create default_zoomed_card

			-- chose the correct zoomed card to be displayed
			default_zoomed_card.set_with_named_file (file_system.pathname_to_string (img_default_zoomed_card))
			set_background_pixmap (default_zoomed_card)
		end


feature -- application

	set_zoomed_card (an_id: STRING)
		-- set the card to zoom
		local
			path_name: STRING
		do
			if(not(an_id.is_equal ("NONE"))) then
				path_name:= file_system.pathname_to_string (img_path_zoomed)
				path_name.append_string ("\")
				path_name.append_string (an_id)
				path_name.append_string (".png")
				zoomed_card.set_with_named_file (path_name)
				set_background_pixmap (zoomed_card)
			end
		end

	set_default_zoomed_card
		-- set the card to zoom
		do
			set_background_pixmap (default_zoomed_card)
		end

feature {NONE} -- Attributes

	zoomed_card: EV_PIXMAP
		-- the image of the zoomed card

	default_zoomed_card: EV_PIXMAP
		-- the image of default when no card are zoomed

end
