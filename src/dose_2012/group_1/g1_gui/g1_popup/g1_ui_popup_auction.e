note
	description: "Summary description for {G1_UI_POPUP_AUCTION}."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_UI_POPUP_AUCTION
	--- It's a Graphical Inteface

inherit
	G1_UI_POPUP
		undefine
			copy, default_create
		end
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G1_UI_CONSTANTS
	    export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE}	-- Attributes

	card_area : EV_FIXED

	btn_bid : EV_BUTTON
	txt_bid : EV_TEXT_FIELD

	label_highest_bid_value: EV_LABEL
	txt_highest_bid_value: EV_LABEL
	label_highest_bidder_name: EV_LABEL
	txt_highest_bidder_name: EV_LABEL
	label_bid: EV_LABEL

	deed : G1_DEED
	street: G1_STREET

feature {NONE} -- Initialization

	make(a_controller : G1_UI_CONTROLLER)
		do
			controller := a_controller

			make_with_title(Popup_auction_title)

			set_x_position ((screen_width // 2) - (Window_width // 2))
			set_y_position ((screen_height // 2) - (Window_height // 2))

				-- set the size of the window
			set_height (Popup_auction_height)
			set_width (Popup_auction_width)

			set_button

		end

	initialize
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend(agent request_close_popup(current))

			popup_area := set_background(mp_img_load("background_gameboard.png"),0,0);

			create label_highest_bid_value
			label_highest_bid_value.set_background_color (GREEN)
			label_highest_bid_value.set_text ("The highest bid offered:")
			label_highest_bid_value.align_text_center
			popup_area.extend_with_position_and_size (label_highest_bid_value, 170, 5, 70, 20)

			create txt_highest_bid_value
			txt_highest_bid_value.set_background_color (GREEN)
			txt_highest_bid_value.set_text ("0")
			txt_highest_bid_value.align_text_center
			popup_area.extend_with_position_and_size (txt_highest_bid_value, 250, 5, 70, 20)


			create label_highest_bidder_name
			label_highest_bidder_name.set_background_color (GREEN)
			label_highest_bidder_name.set_text ("Bidder name:")
			label_highest_bidder_name.align_text_center
			popup_area.extend_with_position_and_size (label_highest_bidder_name, 170, 30, 70, 20)

			create txt_highest_bidder_name
			txt_highest_bidder_name.set_background_color (GREEN)
			txt_highest_bidder_name.set_text ("NAME")
			txt_highest_bidder_name.align_text_center
			popup_area.extend_with_position_and_size (txt_highest_bidder_name, 250, 30, 70, 20)

			create label_bid
			label_bid.set_background_color (GREEN)
			label_bid.set_text ("Offer you bid:")
			label_bid.align_text_center
			popup_area.extend_with_position_and_size (label_bid, 170, 350, 70, 20)

			create txt_bid
			txt_bid.set_background_color (GREEN)
			txt_bid.set_text ("0")
			txt_bid.align_text_center
			popup_area.extend_with_position_and_size (txt_bid, 250, 350, 120, 20)

			extend(popup_area)
		end

feature {NONE} -- Implementation creation

	set_button
		do
			create btn_bid.make_with_text ("Submit")
			popup_area.extend_with_position_and_size (btn_bid, 245, 380, 80, 30)
			btn_bid.select_actions.extend (agent bid)

		end


feature {NONE} -- Implementation features buttons

	bid
		do
		end
end
