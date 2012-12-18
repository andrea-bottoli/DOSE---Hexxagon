note
	description: "Summary description for {G20_MAIN_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_MENU

inherit
	EV_FIXED

	G20_GUI_IMAGES
		export
			{NONE} all
		undefine
			default_create, copy,is_equal
		end



feature {ANY}


	skin
		do
			set_minimum_size(700,700)
			set_background_pixmap(img_main_back)
			create_buttons
			Current.extend_with_position_and_size (b_new_game, 265, 340, 170, 40)
			Current.extend_with_position_and_size (b_net_game, 265, 420, 170, 40)
		end


	create_buttons
	do
		create b_new_game.make_with_text_and_action ("New Game",agent a_new_game)
		create b_net_game.make_with_text_and_action ("Network",agent  a_net_game)
	end


	set_actions(a:PROCEDURE [ANY, TUPLE])
	do
		notify_new_game:=a
	end

	a_new_game
	do
		io.put_string ("New Game%N")
		notify_new_game.call ([])
	end

	a_net_game
	local net:G20_NET
	do
		create net.make (3)
		io.put_string ("Network%N")
	end

	b_new_game:EV_BUTTON
	b_net_game:EV_BUTTON


	main_ui: MAIN_WINDOW
	main_container: EV_FIXED

	notify_new_game:PROCEDURE [ANY, TUPLE]


end
