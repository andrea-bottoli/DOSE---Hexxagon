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
	winner_window: HX_G_WINNER_SCREEN

	main_container: EV_VERTICAL_BOX
	l_world: EV_MODEL_WORLD
	area: EV_DRAWING_AREA
	l_pixmap_empty: EV_PIXMAP
	l_pixmap_first_player: EV_PIXMAP
	l_pixmap_second_player: EV_PIXMAP
	l_pixmap_move_copy: EV_PIXMAP
	l_pixmap_move_jump: EV_PIXMAP

	go_back_tile: HX_G_HEX
	help_tile	: HX_G_HEX
	player1_tile: HX_G_HEX
	player2_tile: HX_G_HEX

	help_pic	:EV_PIXMAP
	go_back_pic: EV_PIXMAP

	player1_pic: EV_PIXMAP
	player1_bg: EV_MODEL_PICTURE

	player2_pic: EV_PIXMAP
	player2_bg: EV_MODEL_PICTURE


	player1_label_score: EV_LABEL
	player2_label_score: EV_LABEL

	internal_pixmap: EV_PIXMAP

	---		
	tiles: ARRAY2[HX_G_HEX]
	l_tile: HX_G_HEX
	wrap_board: ARRAY2[HX_L_IPLACE]

	l_board: HX_L_IBOARD

	list_highlight_pieces: LINKED_LIST[HX_L_IMOVE]

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

			create list_highlight_pieces.make()

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
			create go_back_pic
			create help_pic
			create l_pixmap_empty
			create l_pixmap_first_player
			create l_pixmap_second_player
			create l_bg
			create area
			create l_pixmap_move_copy
			create l_pixmap_move_jump
			create internal_pixmap

			l_pixmap_empty.set_with_named_file ("dose_2012/images/group14/cell.png")

			--IF PREFERENCES NOT CHANGED THEN BY DEFAULT:
			--if (ui_manager.preferences_changed = false) then
			--	l_pixmap_first_player.set_with_named_file ("dose_2012/images/group14/cell1.png")
			--	l_pixmap_second_player.set_with_named_file ("dose_2012/images/group14/cell6.png")
			--	l_bg.set_with_named_file ("dose_2012/images/group14/background151.png")
			--else --IF PREFERENCES CHANGED THEN:
				l_pixmap_first_player.set_with_named_file(game.preferences.player1_piece_image_path)
				l_pixmap_second_player.set_with_named_file(game.preferences.player2_piece_image_path)
				l_bg.set_with_named_file(game.preferences.board_image_path)
			--end

			l_pixmap_move_copy.set_with_named_file ("dose_2012/images/group14/cell_copy.png")
			l_pixmap_move_jump.set_with_named_file ("dose_2012/images/group14/cell_jump.png")


			-- Add background to the world. The last extended model is the one on the front!
			-- Therefore add the background first, and the other things later
		 	create l_bg_pic.make_with_pixmap(l_bg)
	 		l_world.extend (l_bg_pic)

			--Go Back button
			go_back_pic.set_with_named_file ("dose_2012/images/group14/back_tiled.png")
		 	create go_back_tile.make_with_hex (go_back_pic, agent go_back_action)
			go_back_pic.pointer_enter_actions.extend(agent pointer_enter_area_back)
			go_back_pic.pointer_leave_actions.extend(agent pointer_leave_area_back)
			go_back_tile.set_point_position (20,15)
		 	l_world.extend(go_back_tile)

		 	--Help Screen
		 	help_pic.set_with_named_file ("dose_2012/images/group14/help_transp.png")
		 	create help_tile.make_with_hex (help_pic, agent help_action)
			help_pic.pointer_enter_actions.extend(agent pointer_enter_area_back)
			help_pic.pointer_leave_actions.extend(agent pointer_leave_area_back)
			help_tile.set_point_position (500,15)
		 	l_world.extend(help_tile)


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

			create player1_pic
			player1_pic.set_with_named_file ("dose_2012/images/group14/player1_hover.png")
		 	create player1_bg.make_with_pixmap (player1_pic)
		 	player1_bg.set_point_position (100,500)
		 	l_world.extend(player1_bg)

			create player2_pic
			player2_pic.set_with_named_file ("dose_2012/images/group14/player2_.png")
		 	create player2_bg.make_with_pixmap (player2_pic)
		 	player2_bg.set_point_position (400,500)
		 	l_world.extend (player2_bg)

			main_container.extend (area)

			-- (Optional) Refresh the drawing area
			l_projector.project

			extend (main_container)

			-- Set the initial size of the window
			set_size (600, 600)

			ensure
				main_container_created: main_container /= Void
		end



feature -- Access

			select_hex(x, y: INTEGER)
				--when hex with coordinates x,y is selected -> draw the neighbors
			local
				l_to_x, l_to_y : INTEGER
			do
				if ( list_highlight_pieces.is_empty = false) then
					unselect_highlight_list()
				end
				-- check if this piece can be selected
				if l_board.is_piece_selectable (x, y) then

					-- first grade neighbors
					across l_board.possible_duplications ( x, y) as move	--loop all possible moves and draw them
					loop
						list_highlight_pieces.extend(move.item)	--add neighbor to list

						l_to_x := move.item.destination.x
						l_to_y := move.item.destination.y


						tiles.item(l_to_x, l_to_y).click_hex(l_pixmap_move_copy, agent click_hex_action(x, y, l_to_x, l_to_y))

					end	--loop ends	

					-- second grade neighbors
					across l_board.possible_jumps (x, y) as jump
					loop
						list_highlight_pieces.extend (jump.item)	-- add neighbor to list

						l_to_x := jump.item.destination.x
						l_to_y := jump.item.destination.y


						tiles.item(l_to_x, l_to_y).click_hex(l_pixmap_move_jump, agent click_hex_action(x, y, l_to_x, l_to_y))
					end

				end--if ends
			end

			click_hex_action(from_x, from_y , to_x, to_y: INTEGER)
				--called when a highlighted piece is selected to make a move/jump
			local
				selection: HX_L_LOCATION
			do
				create selection.make( to_x , to_y)

				if selection /= Void then
					l_board.move_piece_and_continue (from_x, from_y, to_x, to_y)
					list_highlight_pieces.wipe_out
				end
			end

			unselect_highlight_list
				--called when multiple pieces are selected -> undraw neighbors of x,y
			local
					l_to_x, l_to_y : INTEGER
			do

					across list_highlight_pieces as piece	--loop all possible moves and draw them
					loop
						l_to_x := piece.item.destination.x
						l_to_y := piece.item.destination.y

				 		tiles.item(l_to_x, l_to_y).set_empty_pic(l_pixmap_empty)
					end	--loop ends	
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
			do
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

				 		-- set the hexxagon with its new pixmap
				 		tiles[l_x,l_y].change_pixmap(l_pixmap, agent select_hex(l_x, l_y))
					end
					l_y := l_y + 1
					end
				l_x := l_x + 1
				end

				if( ui_manager.logic.is_running = true) then --to prevent Logic runtime error!
					--highlight the turn of each player
					if (game.board.active_player.id =1) 	then
						player1_pic.set_with_named_file ("dose_2012/images/group14/player1_hover.png")
						player2_pic.set_with_named_file ("dose_2012/images/group14/player2_.png")
					elseif (game.board.active_player.id =2) then
						player2_pic.set_with_named_file ("dose_2012/images/group14/player2_hover.png")
						player1_pic.set_with_named_file ("dose_2012/images/group14/player1_.png")
					end
				end

			end

            clear()
            do
			end

			show_winner_screen
			do
				print("GAME ENDED") io.new_line
				create winner_window.constructor_winner_window(main_ui, ui_manager)
				winner_window.show
			end



feature -- Implementation pointer events

			pointer_enter_area_back
			-- the pointer is entering the area used as a button
			do
				go_back_pic.set_with_named_file ("dose_2012/images/group14/back.png")
			end

			pointer_leave_area_back
			-- the pointer is leaving the area used as a button
			do
				go_back_pic.set_with_named_file ("dose_2012/images/group14/back_hover.png")
			end


feature -- click actions

			go_back_action
			-- Called by `select_actions' of `go_back_btn'.
			local
				window:  HX_G_MAIN_MENU_SCREEN
			do
				--TODO: call logic to stop game
				create window.make(main_ui)
				window.show
				destroy
			end

			help_action
				-- Called by `select_actions' of `help_pic'.
			local
				help_screen: HX_G_HELP_SCREEN
			do
				create help_screen.make (main_ui,500,550)
				help_screen.show

			end


feature --photos

			pix_go_back_button: EV_PIXMAP
					-- returns the go_back_button for the active game
			once
					create Result
					Result.set_with_named_file ("dose_2012/images/group14/back.png")--go_back_button_2))
			end

			pix_go_back_hover: EV_PIXMAP
			-- returns the go_back_button for the active game
			once
					create Result
					Result.set_with_named_file ("dose_2012/images/group14/back_hover.png")--go_back_button_2))
			end

end
