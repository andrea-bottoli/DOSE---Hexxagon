note
	description: "Summary description for {G20_MAIN_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_MAIN_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end


	G20_GUI_IMAGES
		export
			{NONE} all
		undefine
			default_create, copy
		end

create

	make

feature {ANY}



	make(the_main_ui:MAIN_WINDOW;g_core:G20_CORE)
		do
			main_ui:=the_main_ui
			make_with_title("Super Ingenious")
			core:=g_core
		end

	initialize
		do
			Precursor {EV_TITLED_WINDOW}

			set_size(700,700)

			create main_container

			main_container.set_minimum_size(700,700)

			close_request_actions.extend (agent request_close_window)

			put(main_container)

			create main_menu
			io.put_string (file_system.pathname_to_string (img_path)+"%N")
			main_menu.set_actions(agent new_game)
			main_menu.skin

			create game_env

			main_container.extend (main_menu)

			show
		end



	request_close_window
			-- The user wants to close the window
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text ("Are you sure?")
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
					main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end

	new_game()
	do
		main_container.prune (main_menu)
		game_env.skin(core)
		main_container.extend (game_env)
	end

--instances

	main_ui: MAIN_WINDOW

	main_container: EV_FIXED

	main_menu:G20_MENU

	game_env:G20_GAME_ENVIRONMENT

	core:G20_CORE

end
