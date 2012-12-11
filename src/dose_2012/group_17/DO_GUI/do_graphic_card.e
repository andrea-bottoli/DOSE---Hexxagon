note
	description: "Summary description for {DO_GRAPHIC_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_GRAPHIC_CARD

--inherit
	--DO_BOARD

create
	 make_card,make_supply

feature {ANY} -- Initialization
	make_card(name:STRING; board:DO_BOARD)
		do
			big_card_name:=name+".png"
			card_name:=name+"Small.png"
			buyable_card:=false
			father_board:= board
		end

	make_supply(name:STRING; buys:INTEGER; board:DO_BOARD)
		do
			big_card_name:=name+".png"
			card_name:=name+"Supply.png"
			card_buys:=buys
			buyable_card:=true
			father_board:=board
		end

	on_click (z_x, z_y: INTEGER; z_button: INTEGER; z_x_tilt, z_y_tilt: DOUBLE; z_pressure: DOUBLE; z_screen_x, z_screen_y: INTEGER)
			-- Gives information about which button was pressed
			-- How to know which card was selected?
		do
			if buyable_card and card_buys>0 then
				buy_card
				print(card_name+" - "+card_buys.out+" %N")
				father_board.aux_message.extend (card_name)
			else
				print(card_name+"%N")
			end
		end

	create_buy
		do
			create buys_back_color.make_with_8_bit_rgb (232, 0, 99)
			if number_of_buys=Void then
				create number_of_buys.make_with_text (card_buys.out)
			else
				number_of_buys.destroy
				create number_of_buys.make_with_text (card_buys.out)
			end
			number_of_buys.set_background_color(buys_back_color)
		end

	buy_card
		do
			card_buys:=card_buys-1
			father_board.refresh_buy_zone(current)
		end

	set_card_pos_x_y(x:INTEGER;y:INTEGER)
		do
			pos_x:=x
			pos_Y:=y
		end
	set_buy_pos_x_y(x:INTEGER;y:INTEGER)
		do
			buy_number_zone_x:=x
			buy_number_zone_Y:=y
		end

	buys_back_color: EV_COLOR
	number_of_buys: EV_LABEL
	father_board:DO_BOARD
	big_card_name:STRING
	card_name:STRING
	card_buys:INTEGER
	buyable_card:BOOLEAN
	buy_number_zone_x:INTEGER
	buy_number_zone_y:INTEGER
	pos_x:INTEGER
	pos_y:INTEGER

end
