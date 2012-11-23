note
	description: "THE WINDOW WHERE THE TICHU WILL BE PLAYED"
	author: "LYDATAKIS GEORGIOU KATEROS"
	date: "$Date$"
	revision: "$0.1$"

class
	G3_GAME_WINDOW

inherit
	G3_ABSTRACT_OBSERVER

feature{G3_START_GAME}

	intialize_game_window(wind:EV_FIXED)
		--intialize game window
		do

		end

	intialize_menu
		-- intialize menu
		do

		end

feature
	on_update
		do

		end

feature{ANY}

	show_fist_cards(cards :LINKED_LIST [G3_CARD])
			-- show player 8 first cards
		do

		end

	show_all_cards(cards : LINKED_LIST [G3_CARD])
			-- show player all cards
		do

		end

	set_tichu_button(is_on : BOOLEAN)
			-- enable or disable tichu button
		do

		ensure
			(is_on and is_tichu_button_enable) or ((not is_on) and is_tichu_button_enable = false)
		end

	set_grand_tichu_button(is_on : BOOLEAN)
		-- enable or disable grand tichu button
		do

		ensure
			(is_on and is_grand_tichu_button_enable) or ((not is_on) and is_grand_tichu_button_enable = false)
		end

	set_bomb_button(is_on : BOOLEAN)
			-- enable or disable bomb button
		do

		ensure
			(is_on and is_bomb_button_enable) or ((not is_on) and is_bomb_button_enable = false)
		end

	change_player_turn
			-- change players turn in turn_con
		do

		end

	change_points(team1:INTEGER team2:INTEGER)
			-- change team points in points_con
		do

		end

	update_player_cards(cards :LINKED_LIST [G3_CARD])
			-- change player cards when player drop cards
		do

		end

	update_tichu_table(cards :LINKED_LIST [G3_CARD])
			-- update tichu table with the cards that the last player droped
		do

		end

	try_drop_cards(cards :LINKED_LIST [G3_CARD])
			-- give call to logic for player dropped cards
		do

		end

	press_bomb
			-- calls when bomb button pressed
		require
			is_bomb_button_enable
		do

		end

	say_tichu
		require
			is_tichu_button_enable
		do

		end

	say_grand_tichu
		require
			is_grand_tichu_button_enable
		do

		end



feature {NONE}
	is_bomb_button_enable : BOOLEAN
		-- says if the bomb button is enable
	is_tichu_button_enable : BOOLEAN
		-- says if the tichu button is enable
	is_grand_tichu_button_enable : BOOLEAN
		-- says if the grand tichu button is enable
	game_con:EV_FIXED
		--main container for game
	cards_con:EV_FIXED
		--container used to show the cards
	points_con : EV_FIXED
		--container used to show the points of the teams
	turn_con :EV_FIXED
		--container used to show players turn
	bomb_but : EV_BUTTON
		--button to play bomb
	tichu_but : EV_BUTTON
		--button to call tichu
	grand_tichu_but: EV_BUTTON
		--button to call grand tichu
	play_but : EV_BUTTON
		--button calls when a player want to drop cards
	pass_but : EV_BUTTON
		--button calls when a player want to pass
	menu_bar: EV_MENU_BAR
		--menu bar
	menu_game: EV_MENU
		--menu item game
	menu_Help: EV_MENU
		--menu item help
	menu_item_Leave: EV_MENU_ITEM
		--menu item leave
	menu_item_new_game: EV_MENU_ITEM
		--menu item new game
	main_cont : EV_FIXED
		-- the main container to which the button will be added
	comps:G3_COMPS

end