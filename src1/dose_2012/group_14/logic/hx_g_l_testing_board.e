note
	description: "Summary description for {HX_G_L_TESTING_BOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_L_TESTING_BOARD

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

create
	create_with_game

feature {NONE} -- Initialization

	game: HX_L_LOGIC

	create_with_game(a_game: HX_L_LOGIC)
		do
			game := a_game
			default_create
		end

	initialize
			-- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}

			build_main_container
			extend (main_container)

				-- Execute `request_close_window' when the user clicks
				-- on the cross in the title bar.
			--close_request_actions.extend (agent request_close_window)

				-- Set the title of the window
			--set_title (Window_title)

				-- Set the initial size of the window
			set_size (Window_width, Window_height)
		end

--	is_in_default_state: BOOLEAN
--			-- Is the window in its default state
--			-- (as stated in `initialize')
--		do
--			Result := (width = Window_width) and then
--				(height = Window_height) and then
--				(title.is_equal (Window_title))
--		end


feature {NONE} -- Implementation, Close event

--	request_close_window
--			-- The user wants to close the window
--		local
--			question_dialog: EV_CONFIRMATION_DIALOG
--		do
--			create question_dialog.make_with_text (Label_confirm_close_window)
--			question_dialog.show_modal_to_window (Current)

--			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
--					-- Destroy the window
--				destroy;

--					-- End the application
--					--| TODO: Remove this line if you don't want the application
--					--|       to end when the first window is closed..
--				(create {EV_ENVIRONMENT}).application.destroy
--			end
--		end

feature {NONE} -- Implementation

	main_container: EV_VERTICAL_BOX
			-- Main container (contains all widgets displayed in this window)
	board: HX_L_IBOARD

	tiles: ARRAY2[HX_G_L_TILE_VIEW]
	l_pixmap_empty: EV_PIXMAP
	l_pixmap_not_exists: EV_PIXMAP
	l_pixmap_first_player: EV_PIXMAP
	l_pixmap_second_player: EV_PIXMAP
	l_pixmap_move1: EV_PIXMAP
	l_pixmap_move2: EV_PIXMAP

	build_main_container
			-- Create and populate `main_container'.
		require
			main_container_not_yet_created: main_container = Void
		local
			l_projector: EV_MODEL_DRAWING_AREA_PROJECTOR
			l_world: EV_MODEL_WORLD
			l_pixmap: EV_PIXMAP
			l_bg: EV_PIXMAP
			l_tile: HX_G_L_TILE_VIEW
			l_bg_pic: EV_MODEL_PICTURE
			l_x, l_y: INTEGER
			l_place: HX_L_IPLACE
		do
			create main_container

				-- Create an orange hex
			create l_pixmap_empty
			l_pixmap_empty.set_with_named_file ("dose_2012/images/group14/testing/hex_empty.png")
			create l_pixmap_not_exists
			l_pixmap_not_exists.set_with_named_file ("dose_2012/images/group14/testing/hex_not_exists.png")
			create l_pixmap_first_player
			l_pixmap_first_player.set_with_named_file ("dose_2012/images/group14/testing/hex_first_player.png")
			create l_pixmap_second_player
			l_pixmap_second_player.set_with_named_file ("dose_2012/images/group14/testing/hex_second_player.png")
			create l_pixmap_move1
			l_pixmap_move1.set_with_named_file ("dose_2012/images/group14/testing/hex_move1.png")
			create l_pixmap_move2
			l_pixmap_move2.set_with_named_file ("dose_2012/images/group14/testing/hex_move2.png")

				-- Create the background pixmap
			create l_bg
			l_bg.set_with_named_file ("dose_2012/images/group14/testing/gameview_background.png")
			create l_bg_pic.make_with_pixmap (l_bg)

				-- Add background to the world. The last extended model is the one on the front!
				-- Therefore add the background first, and the other things later
			create l_world
			l_world.extend (l_bg_pic)

			board := game.board
			create tiles.make_filled (Void, board.height, board.width)
				-- Add a couple of tiles to the world

			from
				l_x := 1
			until
				l_x > board.height
			loop
				from
					l_y := 1
				until
					l_y > board.width
				loop
					l_place := board.place(l_x, l_y)
					if l_place.exists then
						if l_place.is_empty then
							l_pixmap := l_pixmap_empty
						else
							if l_place.player_id = 1 then
								l_pixmap := l_pixmap_first_player
							else
								l_pixmap := l_pixmap_second_player
							end
						end
					else
						l_pixmap := l_pixmap_not_exists
					end

					create l_tile.make_with_hex (l_pixmap, agent select_place(l_x, l_y))
					l_world.extend (l_tile)
					if l_y \\ 2 = 1 then
						--l_tile.set_point_position (10 + 27 * l_y, 10 + 27 * l_x)
						l_tile.set_point_position (27 * l_y, 27 * l_x)
					else
						--l_tile.set_point_position (10 + 27 * l_y, 20 + 27 * l_x)
						l_tile.set_point_position (27 * l_y, 10 + 27 * l_x)
					end
					tiles.put (l_tile, l_x, l_y)
					l_y := l_y + 1
				end
				l_x := l_x + 1
			end

				-- Create the drawing area and assign a model projector to it
			create area
			create l_projector.make (l_world, area)
			main_container.extend (area)
				-- (Optional) Refresh the drawing area
			l_projector.project
		ensure
			main_container_created: main_container /= Void
		end

feature --Access

	repaint
		local
			l_place: HX_L_IPLACE
			l_x, l_y: INTEGER
			l_pixmap: EV_PIXMAP
		do
			from
				l_x := 1
			until
				l_x > board.height
			loop
				from
					l_y := 1
				until
					l_y > board.width
				loop
					l_place := board.place(l_x, l_y)
					if l_place.exists then
						if l_place.is_empty then
							l_pixmap := l_pixmap_empty
						else
							if l_place.player_id = 1 then
								l_pixmap := l_pixmap_first_player
							else
								l_pixmap := l_pixmap_second_player
							end
						end
					else
						l_pixmap := l_pixmap_not_exists
					end
					tiles.item (l_x, l_y).change_pixmap (l_pixmap)
					l_y := l_y + 1
				end
				l_x := l_x + 1
			end
		end

	selection: HX_L_LOCATION

	select_place(l_x, l_y: INTEGER)
		local
			l_to_x, l_to_y: INTEGER
		do
			if board.is_piece_selectable (l_x, l_y) then
				create selection.make(l_x, l_y)
				across board.possible_moves (l_x, l_y) as move
				loop
					l_to_x := move.item.destination.x
					l_to_y := move.item.destination.y
					tiles.item (l_to_x, l_to_y).change_pixmap (l_pixmap_move1)
				end

			elseif selection /= Void then
				if board.is_piece_movable (selection.x, selection.y, l_x, l_y) then
					board.move_piece_and_continue (selection.x, selection.y, l_x, l_y)
					repaint
				end
				selection := Void
			end
		end

	area: EV_DRAWING_AREA

feature {NONE} -- Implementation / Constants

	Window_title: STRING = "projectors"
			-- Title of the window.

	--Window_width: INTEGER = 500
	window_width: INTEGER
			-- Initial width for this window.
		once
			Result := board.width * 27 + 60
		end

	--Window_height: INTEGER = 570
	window_height: INTEGER
			-- Initial height for this window.
		once
			Result := board.height * 27 + 60
		end

end
