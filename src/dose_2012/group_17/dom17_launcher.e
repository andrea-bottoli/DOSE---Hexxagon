note
	description: "A simple dummy launcher that outputs a message that no game exists yet."
	author: "Group17"
	date: "31.10.2012"
	revision: "1.1"

class
	DOM17_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			main_window: DO_MAIN_WINDOW
--			game : DO_GAME
		do
--			create game.play_game (3)
--			print(game.notifygamestate ("init"))
--			io.new_line
--			print(game.notifygamestate ("change_player"))
--			io.new_line
--			print(game.notifygamestate ("change_player"))
--			io.new_line
--			print(game.notifygamestate ("change_player"))
--			io.new_line
--			print(game.notifygamestate ("change_player"))
--			io.new_line
--			print(game.notifygamestate ("change_player"))
--			io.new_line
--			print(game.notifygamestate ("change_player"))
--					io.new_line
--			print(game.notifygamestate ("change_player"))
--					io.new_line
--			print(game.notifygamestate ("change_player"))
--					io.new_line

				--Creates the Dominon Main window
			create main_window.make(main_ui_window)
			main_window.show

--				-- we inform the Main App about the game window;
			main_ui_window.add_reference_to_game (main_window)
		end

end
