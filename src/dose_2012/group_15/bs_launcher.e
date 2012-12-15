note
	description: "Summary description for {BS_LAUNCHER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_LAUNCHER

inherit
	LAUNCHER
inherit {NONE}
	MEMORY
	export {NONE} all
	end

feature -- Implementation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			lobby: BS_LOBBY_WINDOW
			test: BS_NET_TEST_CLASS -- This will be removed later, but during development please leave this.
		do
			collection_off()
			if false then
				create test
				test.main_method()
			else
				create lobby.make (main_ui_window)
				main_ui_window.add_reference_to_game (lobby)
					-- show dialog
				lobby.show
				lobby.set_up_game
			end
		end




feature {NONE}

	constants: BS_CONSTANTS

		-- Dummy Variables (to be deleted)

		-- gui

	dummy_game_window: BS_GAME_WINDOW

	dummy_join_game_window: BS_JOIN_GAME_WINDOW

	dummy_lobby_window: BS_LOBBY_WINDOW

	dummy_new_game_window: BS_NEW_GAME_WINDOW

	dummy_welcome_window: BS_WELCOME_WINDOW

		-- logic

	dummy_board: BS_BOARD

	dummy_game: BS_GAME

	dummy_move: BS_MOVE

	dummy_player: BS_PLAYER

	dummy_position: BS_POSITION

	dummy_tile: BS_TILE

	dummy_tile_set: BS_TILE_SET

		-- net oredered alphabetically

	dummy_net_machine: BS_NET_MACHINE
			--dummy_net_manager : BS_NET_MANAGER

	dummy_net_remote_machine: BS_NET_REMOTE_MACHINE

	dummy_net_server: BS_NET_SERVER

end
