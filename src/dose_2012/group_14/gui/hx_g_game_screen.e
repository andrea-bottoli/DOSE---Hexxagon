note
	description: "Summary description for {HX_G_GAME_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_GAME_SCREEN

inherit
	HX_G_BOARDS

create
	make

feature --attributes
	main_ui : MAIN_WINDOW
	game: HX_L_LOGIC
	ui_manager: HX_G_UIMANAGER

	main_container: EV_VERTICAL_BOX
	l_world: EV_MODEL_WORLD
	area: EV_DRAWING_AREA
	l_pixmap_empty: EV_PIXMAP
	l_pixmap_first_player: EV_PIXMAP
	l_pixmap_second_player: EV_PIXMAP
	l_pixmap_move_copy: EV_PIXMAP
	l_pixmap_move_jump: EV_PIXMAP

	tiles: ARRAY2[HX_G_HEX]
	l_tile: HX_G_HEX
	wrap_board: ARRAY2[HX_L_IPLACE]

	l_board: HX_L_IBOARD


feature --Init

		make(a_main_ui : MAIN_WINDOW ; a_ui_manager: HX_G_UIMANAGER)
		require
			main_container_not_yet_created: main_container = Void
        local
			screen: EV_SCREEN
			l_projector: EV_MODEL_DRAWING_AREA_PROJECTOR

			l_pixmap: EV_PIXMAP
			l_bg: EV_PIXMAP

			l_bg_pic: EV_MODEL_PICTURE
			l_x, l_y: INTEGER
			l_place: HX_L_IPLACE
		do
			ui_manager := a_ui_manager
			game := ui_manager.logic
			l_board := game.board

			-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui
			-- Create the window.
			make_with_title ("Hexxagon Game")

			-- the window should be centered in the screen
			screen := create {EV_SCREEN}
			set_x_position ((screen.width  // 2) - (600 // 2))
			set_y_position ((screen.height // 2) - (600 // 2))

			-- disable user resizing for the window
			disable_user_resize

			create main_container
			create l_world
			create l_pixmap_empty
			create l_pixmap_first_player
			create l_pixmap_second_player
			create l_bg
			create l_world
			create area
			create l_pixmap_move_copy
			create l_pixmap_move_jump

			l_pixmap_empty.set_with_named_file ("dose_2012/images/group14/cell.png")
			l_pixmap_first_player.set_with_named_file ("dose_2012/images/group14/cell1.png")
			l_pixmap_second_player.set_with_named_file ("dose_2012/images/group14/cell6.png")
			l_pixmap_move_copy.set_with_named_file ("dose_2012/images/group14/cell_copy.png")
			l_pixmap_move_jump.set_with_named_file ("dose_2012/images/group14/cell_jump.png")


			-- Add background to the world. The last extended model is the one on the front!
			-- Therefore add the background first, and the other things later
			l_bg.set_with_named_file ("dose_2012/images/group14/background151.png")
		 	create l_bg_pic.make_with_pixmap (l_bg)
	 		l_world.extend (l_bg_pic)


	--		wrap_board := wrap_to_GUI(l_board)
	--	 	io.new_line print("wrap_board: ")print(wrap_board) io.new_line
			create tiles.make_filled (Void, l_board.height, l_board.width)

			from l_x := 1 until	l_x > l_board.height loop
				from l_y := 1 until l_y > l_board.width	loop

						l_place := l_board.place (l_x, l_y)

						if l_place.exists then	-- if place exists
							if l_place.is_empty then
								l_pixmap := l_pixmap_empty
							else if l_place.player_id = 1 then
								l_pixmap := l_pixmap_first_player
							else
								l_pixmap := l_pixmap_second_player
							end
					 	end
					 		-- create the hexxagon with its pixmap
					 		create l_tile.make_with_hex (l_pixmap, agent select_hex(l_x, l_y))
							l_world.extend (l_tile)
							if l_y.integer_remainder (2) = 1 then
								l_tile.set_point_position (49 * l_y, 49 * l_x)
								l_tile.disable_moving
							else
								l_tile.set_point_position (49 * l_y, 25 + 49 * l_x)
								l_tile.disable_moving
							end
							tiles.put (l_tile, l_x, l_y)
					 	end
						l_y := l_y + 1
				end
				l_x := l_x + 1
			end

			-- Create the drawing area and assign a model projector to it
			create l_projector.make (l_world, area)

			main_container.extend (area)

			-- (Optional) Refresh the drawing area
			l_projector.project

			extend (main_container)

			-- Set the initial size of the window
			set_size (600, 600)

			ensure
				main_container_created: main_container /= Void
		end



feature -- convert arrays of Logic and GUI

	--takes logic board and translates its coordinates into gui board's coordinates
	wrap_to_GUI(a_l_board : HX_L_IBOARD): ARRAY2[HX_L_IPLACE]
	local
		l_x, l_y, i,tmp_x	: INTEGER
		l_place		: HX_L_IPLACE
		board		: HX_L_IBOARD
		g_board		: ARRAY2[HX_L_IPLACE]
	do
		board := a_l_board
		create g_board.make_filled (Void, 17, 9)

		from l_x := 1 until l_x > board.height loop
			from l_y := 1 until l_y > board.width loop

				tmp_x := l_x
				if tmp_x.integer_remainder (2) = 0 then			--if odd line
					i := (l_x*2)
					l_place := board.place(l_x, l_y)
					g_board.put (l_place, i, l_y)
				else if tmp_x.integer_remainder (2) /= 0 then 	--if even line
						i := (l_x*2)-1
						l_place := board.place(l_x, l_y)
						g_board.put (l_place, i, l_y)
					end
				end
				l_y := l_y + 1
			end
			l_x := l_x + 1
		end
		io.new_line print("WRAPPER: g_board: ")print(g_board) io.new_line
		Result := g_board
	end



feature -- Access

			select_hex(x, y: INTEGER)
				--when hex with coordinates x,y is selected -> draw the neighbors
			local
				l_to_x, l_to_y: INTEGER
			do
				-- check if this piece can be selected
				if l_board.is_piece_selectable (x, y) then
					print("PIECE SELECTABLE VOID") print(x) print("")print(y)io.new_line

					across l_board.possible_moves ( x, y) as move	--loop all possible moves and draw them
					loop
						l_to_x := move.item.destination.x
						l_to_y := move.item.destination.y
						-- TODO: diff pic for distant hexxes
						tiles.item(l_to_x, l_to_y).click_hex (l_pixmap_move_copy, agent click_hex_action(x, y, l_to_x, l_to_y))
					end
				end
			end

			click_hex_action(from_x, from_y , to_x, to_y: INTEGER)
			local
				selection: HX_L_LOCATION
			do
				print("CLICKED!") print(to_x) print(" ") print(to_y) io.new_line
				create selection.make( to_x , to_y)

				if selection /= Void then
					print("SELECTION NOT VOID") io.new_line
						l_board.move_piece_and_continue (from_x, from_y, to_x, to_y)
						repaint
				end


			end

            getPlayer1() : INTEGER
            do
			end

            getPlayer2() : INTEGER
            do
			end

            getCurrentScorePlayer1(a_players_id : INTEGER) : INTEGER
            do
			end

            getCurrentScorePlayer2(a_players_id : INTEGER) : INTEGER
            do
			end

            repaint()
           	local
				l_place: HX_L_IPLACE
				l_x, l_y: INTEGER
				l_pixmap: EV_PIXMAP
				winner_window: HX_G_WINNER_SCREEN
				msg: HX_L_IGAME_END_MESSAGE
			do
				print("REPAINT") io.new_line
				from l_x := 1 until	l_x > l_board.height loop
					from l_y := 1 until l_y > l_board.width	loop

						l_place := l_board.place (l_x, l_y)

						if l_place.exists then	-- if place exists
							if l_place.is_empty then
								l_pixmap := l_pixmap_empty
							else if l_place.player_id = 1 then
								l_pixmap := l_pixmap_first_player
							else
								l_pixmap := l_pixmap_second_player
							end
					 	end

					 		-- create the hexxagon with its pixmap
							create l_tile.make_with_hex (l_pixmap, agent select_hex(l_x, l_y))
							l_world.extend (l_tile)
							if l_y.integer_remainder (2) = 1 then
								l_tile.set_point_position (49 * l_y, 49 * l_x)
								l_tile.disable_moving
							else
								l_tile.set_point_position (49 * l_y, 25 + 49 * l_x)
								l_tile.disable_moving
							end
						 	tiles.put (l_tile, l_x, l_y)
						end
					l_y := l_y + 1
					end
				l_x := l_x + 1
				end

				-- check if game is ended! -> show winner screen
				if ( l_board.is_end) then
			--		create msg
			--		ui_manager.game_finished (l_message: [detachable] HX_L_IGAME_END_MESSAGE)
					print("GAME ENDED") io.new_line
					create winner_window.constructor_winner_window(main_ui, ui_manager)
					winner_window.show
					destroy
				end
			end

            clear()
            do
			end
end
