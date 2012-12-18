note
	description: "KINGDOM BUILDER launcher class."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	KINGDOM_BUILDER_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		do
			main_menu.show
		end

	play_click(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		do
			play_menu.show
		end

	quit_click(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		do
			(create {EV_ENVIRONMENT}).application.destroy
		end

	back_click(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		do
			play_menu.hide
		end

	new_game_click(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		local
			gb: G19_GAME_BUILDER_IMPL
			player: G19_CONSOLE_PLAYER
			bot: G19_BOT_PLAYER
			i, j: INTEGER
		do
			create gb.make()

			print("[WARNING]: This console interface has developed by Odessa1 team as debug tools.%N")
			print("[WARNING]: It should be replaced by GUI. %N")
			print("[WARNING]: If you see it, it means that Debrecen2 haven't done their tasks.%N")

			from
				i := 1
			until
				i > 4
			loop
				print("Choose player type (1 - bot, 2 - human): ")
				io.read_integer
				if io.last_integer = 2 then
					create player.make()
					j := gb.add_player(player)
				else
					create bot.make()
					j := gb.add_player(bot)
				end

				i := i + 1
			end

			gb.build().start();
		end

	main_menu: G19_MENU_IMPL
		local
			lv_main_menu: G19_MENU_IMPL
		once
			create lv_main_menu.make_and_launch
			lv_main_menu.add_menu_point ("Play", agent play_click(?, ?, ?, ?, ?, ?, ?, ?))
			lv_main_menu.add_menu_point ("Quit", agent quit_click(?, ?, ?, ?, ?, ?, ?, ?))
			Result := lv_main_menu
		end

	play_menu: G19_MENU_IMPL
		local
			lv_play_menu: G19_MENU_IMPL
		once
			create lv_play_menu.make_and_launch
			lv_play_menu.add_menu_point ("New game", agent new_game_click(?, ?, ?, ?, ?, ?, ?, ?))
			lv_play_menu.add_menu_point ("Back", agent back_click(?, ?, ?, ?, ?, ?, ?, ?))
			Result := lv_play_menu
		end

end
