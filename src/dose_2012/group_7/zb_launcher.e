note
	description: "Launcher for the ZOMBIES!!! main window."
	author: "Group7"
	date: "11.11.2011"
	revision: "1.0"

class
	ZB_LAUNCHER

inherit
	LAUNCHER

feature	-- Implementation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			--l_client: ZB_NET_CLIENT
			--l_server: ZB_NET_SERVER
			window: ZB_LOBBY_WINDOW
			window2: ZB_GAME_WINDOW
		do
			io.put_string("starting ZOMBIES!!!...")
			io.put_new_line

			--create l_client.make(Void)
			--create l_server.make(Void)

			create window.make (main_ui_window)
			create window2.make (window)
			window.show

			window2.show

				-- we inform the Main-UI about the game window; otherwise, the game window might get garbage collected
			main_ui_window.add_reference_to_game (window)
		end

end
