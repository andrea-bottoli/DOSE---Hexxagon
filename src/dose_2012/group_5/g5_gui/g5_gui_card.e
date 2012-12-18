note
	description: "Summary description for {G5_GUI_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_GUI_CARD
inherit
	EV_FIXED

	G5_GUI_CARDS_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	make_slim, make_mini

feature -- initialization

	make_slim(a_card_id: STRING; state: STRING)
		-- This is the constructor of the card in version slim
		require
			valid_arg: a_card_id /= void
			valid_arg: (state.is_equal("hand") xor state.is_equal("played") xor state.is_equal("pop-up"))
		do
			-- store values
			card_id:= a_card_id
			state_of_the_card:= state
			version_of_the_card:= "slim"

			default_create
			create card_image

			-- set the image
			set_image_slim

		end

	make_mini(a_card_id: STRING; state: STRING)
		-- This is the constructor of the card in version mini
		require
			valid_arg: a_card_id /= void
			valid_arg: (state.is_equal("hand") xor state.is_equal("played") xor state.is_equal("pop-up"))
		do
			-- store values
			card_id:= a_card_id
			state_of_the_card:= state
			version_of_the_card:= "mini"

			default_create
			create card_image

			-- set the image
			set_image_mini

		end


feature -- application

	convert_format
		-- convert the format (slim/mini) of the card to the other
		do
			if (version_of_the_card.is_equal("slim")) then
				set_image_mini
				version_of_the_card:= "mini"
			else
				set_image_slim
				version_of_the_card:= "slim"
			end
		end

	cost_of_the_card: INTEGER
		-- return the cost of the card
		do
			Result:= cost_of_a_card(card_id)
		end


feature {NONE} -- Sets images

	set_image_slim
		-- sets the image of the card in slim format
		local
			path_name: STRING
		do
			path_name:= file_system.pathname_to_string (img_path_slim)
			path_name.append_string ("/")
			path_name.append_string (card_id)
			path_name.append_string (".png")
			card_image.set_with_named_file (path_name)
			set_background_pixmap (card_image)
		end


	set_image_mini
		-- sets the image of the card in mini format
		local
			path_name: STRING
		do
			path_name:= file_system.pathname_to_string (img_path_mini)
			path_name.append_string ("/")
			path_name.append_string (card_id)
			path_name.append_string (".png")
			card_image.set_with_named_file (path_name)
			set_background_pixmap (card_image)
		end

feature {G5_POP_UP_WITH_SELECTION, G5_POP_UP_THIEF} -- feature used to display a label in pop-up

	selection_label: EV_LABEL
		-- the label that indicates if a cards is selected (in a pop-up)

	select_unselect_request
		-- set the label to select or none
		do
			if (selection_label= void) then
				create selection_label.make_with_text ("SELECTED")
				extend_with_position_and_size (selection_label, 0, 0, 60, 13)
			elseif (selection_label.text.is_equal ("SELECTED")) then
				prune (selection_label)
				selection_label:= void
			end
		end

feature -- ATTRIBUTES

	card_image: EV_PIXMAP
		-- the image of the card

	state_of_the_card: STRING
		-- can be "played" or "hand"

	card_id: STRING
		-- the id of the card

	version_of_the_card: STRING
		-- if the card is in "slim" version or in "mini" version

end
