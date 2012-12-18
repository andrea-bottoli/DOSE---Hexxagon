note
	description: "Summary description for {DO_GRAPHIC_CARD}."
	author: "Team Rio Cuarto9"
	date: "$Date$"
	revision: "$Revision$"

class
	DO_GRAPHIC_CARD

--inherit
	--DO_BOARD

create
	 make_card, make_supply, make_played

feature {ANY} -- Initialization
	make_card(name:STRING; board:DO_BOARD)
		do
			big_card_name:=name+".png"
			small_card_name:= name+"Small.png"
			card_name:=name
			father_board:= board
			type:="play"
		end

	make_supply(name:STRING; buys:INTEGER; board:DO_BOARD)
		do
			big_card_name:=name+".png"
			small_card_name:=name+"Supply.png"
			type:="buy"
			card_name:=name
			card_buys:=buys
			father_board:=board
		end

	make_played(name:STRING; board:DO_BOARD)
		do
			big_card_name:=name+".png"
			small_card_name:=name+"Supply.png"
			type:="clean"
			card_name:=name
			father_board:=board
		end

	on_click (z_x, z_y: INTEGER; z_button: INTEGER; z_x_tilt, z_y_tilt: DOUBLE; z_pressure: DOUBLE; z_screen_x, z_screen_y: INTEGER)
			-- Gives information about which button was pressed
			-- How to know which card was selected?
		do
			if father_board.game_phase.is_equal(current.type) then
				father_board.on_update(father_board.game_reference.NotifyGameState(father_board.game_phase+"_"+card_name), current)
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
			if 0<card_buys then
				card_buys:=card_buys-1
				father_board.refresh_buy_number(current)
			end
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
	small_card_name:STRING
	card_name:STRING
	card_buys:INTEGER
	type:STRING
	buy_number_zone_x:INTEGER
	buy_number_zone_y:INTEGER
	pos_x:INTEGER
	pos_y:INTEGER

end
