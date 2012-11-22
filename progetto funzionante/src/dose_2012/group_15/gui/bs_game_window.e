note
	description: "Summary description for {BS_GAME_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_GAME_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

create
	make
--	make_and_close_previous

feature {NONE} -- Initialization

	make(a_lobby : BS_LOBBY_WINDOW; game_connection: BS_NET_GAME_CONNECTION)
		do
			lobby := a_lobby
			make_with_title("Blokus")
		end

--	make_and_close_previous(a_previous: BS_LOBBY_WINDOW; a_main_ui: MAIN_WINDOW)
--		do
--			make_with_title("Blokus")
--			main_ui := a_main_ui
--		end

	initialize
		do
			Precursor{EV_TITLED_WINDOW}

			set_size(800, 600)

			close_request_actions.extend (agent ask_for_quitting)
		end

feature -- Interface for LOGIC component

	redraw_board(board_state : ARRAY2[INTEGER])
		require
			board_height: board_state.height = 20
			board_width: board_state.width = 20
		do

		ensure
		end

	add_log_entry(log_string : STRING)
		require
			string_not_empty: not log_string.is_empty
		do

		ensure
		end

feature {NONE} -- Implementation

	ask_for_quitting
		local
			l_dlg_confirm: EV_CONFIRMATION_DIALOG
		do
			create l_dlg_confirm.make_with_text ("Are you sure you want to abort the game and return to the game lobby?")
			l_dlg_confirm.show_modal_to_window (Current)

			if l_dlg_confirm.selected_button.is_equal((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				quit_to_lobby
			end
		end

	quit_to_lobby
		do
			-- show lobby again, which had been hidden
			lobby.show
			destroy
			lobby.set_up_game
		end

	lobby : BS_LOBBY_WINDOW

end
