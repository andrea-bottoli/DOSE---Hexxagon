note
	description: "Summary description for {BS_LOBBY_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_LOBBY_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

create
	make

feature {NONE} -- Initialization

	make(a_main_ui : MAIN_WINDOW; game_connection: BS_NET_GAME_CONNECTION)
		do
			main_ui := a_main_ui

			make_with_title("Blokus Game Lobby")
		end

	initialize
		do
			Precursor {EV_TITLED_WINDOW}

			set_size(640, 480)

			close_request_actions.extend (agent request_close_window)

		end

feature {BS_LAUNCHER, BS_GAME_WINDOW} -- Interface for Launcher

	set_up_game
		local
			l_dlg_welcome : BS_WELCOME_WINDOW
			l_dlg_new_game : BS_NEW_GAME_WINDOW
			l_dlg_join_game : BS_JOIN_GAME_WINDOW
			l_action : STRING
			l_user_proceeding : BOOLEAN
		do

			from
				l_user_proceeding := False
			until
				l_user_proceeding = True
			loop
				create l_dlg_welcome.make
				l_dlg_welcome.show_modal_to_window(Current)

				l_action := l_dlg_welcome.get_user_action

				if l_action.is_equal ("NEW_GAME") then
					create l_dlg_new_game.make
					l_dlg_new_game.show_modal_to_window (Current)
					if l_dlg_new_game.has_user_cancelled = False then

						l_user_proceeding := True
					end
					-- Else return to welcome dialog

				elseif l_action.is_equal ("JOIN_GAME") then
					create l_dlg_join_game.make
					l_dlg_join_game.show_modal_to_window (Current)
					if l_dlg_join_game.has_user_cancelled = False then
						-- TODO
						l_user_proceeding := True
					end

					-- Else return to welcome dialog
				else -- User clicked on Quit or [X], so go back to DOSE main menu
					close_window
					l_user_proceeding := True
				end
			end
		end

feature -- Interface for LOGIC component

	update_players_list(players : ARRAY[BS_PLAYER])
		require
			players_size_small_enough: players.count <= 4
		do
		end

feature {NONE} -- Implementation

	set_up_new_game
		do

		end

	join_game
		do

		end

	open_game_window
		do
			-- TODO: changes; maybe use other constructor
			create game_window.make(Current, void)
			-- Hide lobby while playing. Since Blokus will return to the lobby
			-- before quitting, we do not destroy the lobby window.
			hide
			game_window.show

		end

	request_close_window
			-- The user wants to close the window
		local
			l_dlg_confirm: EV_CONFIRMATION_DIALOG
		do
			create l_dlg_confirm.make_with_text ("Are you sure you want to close Blokus?")
			l_dlg_confirm.show_modal_to_window (Current)

			if l_dlg_confirm.selected_button.is_equal((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				close_window
			end
		end

	close_window
		do
			-- Restore the main UI which is currently minimized
			if attached main_ui then
				-- TODO: STRANGE: the main window is not minimized on starting Blokus,
				--                however when we want to return from Blokus...
				main_ui.restore
				main_ui.remove_reference_to_game (Current)
			end
				-- Destroy the window
			destroy
		end

	main_ui : MAIN_WINDOW
	game_window : BS_GAME_WINDOW

end
