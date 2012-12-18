note
	description: "Summary description for {G20_MAIN_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_GAME_ENVIRONMENT

inherit
	EV_FIXED

	G20_GUI_IMAGES
		export
			{NONE} all
		undefine
			default_create, copy,is_equal
		end


feature {ANY}

	skin(g_core:G20_CORE)
		do

			set_minimum_size(700,700)
			extend(img_board_back)
			core:=g_core



			create score_board
			create game_board.make(agent populate,agent make_move)
			create satchel_board



			boa:=core.get_board
			sco:=core.get_score
			sat:=core.get_satchel(1)

			populate
			img_board_back.pointer_motion_actions.extend (agent game_board.get_tile)
			img_board_back.pointer_button_press_actions.extend (agent game_board.pick_tile)




		end

	populate
	local
		i,j,q,z:INTEGER
	do
		satchel_board.set_satchel (game_board.on_satchel, game_board.on_air)
		game_board.set_selected_tile(core.get_satchel(1))
		game_board.populate(core.get_board)
		score_board.populate(core.get_score)
		satchel_board.populate(core.get_satchel(1))

		img_board_back.draw_pixmap (0, 0, img_board_pane)
		img_board_back.draw_pixmap (0, img_board_pane.height, img_score_pane)
		img_board_back.draw_pixmap (img_score_pane.width, img_board_pane.height, img_satchel_pane)
		img_board_back.flush
	end





	get_state : TUPLE[TUPLE[G20_SATCHEL,G20_SATCHEL,G20_SATCHEL,G20_SATCHEL],G20_MAINBOARD,G20_SCOREBOARD]
		local
			tiles:TUPLE[G20_SATCHEL,G20_SATCHEL,G20_SATCHEL,G20_SATCHEL]
		do
			create Result
			create tiles
			tiles[1]:=core.get_satchel(1)
			tiles[2]:=core.get_satchel(2)
			tiles[3]:=core.get_satchel(3)
			tiles[4]:=core.get_satchel(4)
			tiles[5]:=core.get_satchel(5)
			tiles[6]:=core.get_satchel(6)
			Result[1]:=tiles
			Result[2]:=core.get_board
			Result[3]:=core.get_score
		end


	make_move(x1:INTEGER;y1:INTEGER;x2:INTEGER;y2:INTEGER;tile:G20_TILE)
	local
		movement:G20_MOVEMENT
		res:BOOLEAN
	do
		create movement.makebytileandcoords (tile, x1, x2, y1, y2)
--		res:=core.move(movement)
		if res then
			populate
		end
		io.put_string ("Player made move:" +x1.out+"," + y1.out + " " +x2.out+","+y2.out+"  color_1: "+tile.getcolor1.getcolor.out+"  color_2: "+tile.getcolor2.getcolor.out+" %N")
		game_board.set_move_result(res)


	end


	main_ui: MAIN_WINDOW
	main_container: EV_FIXED

	game_board:G20_GUI_BOARD
	score_board:G20_GUI_SCORE
	satchel_board:G20_GUI_SATCHEL
	sat:G20_SATCHEL
	boa:G20_MAINBOARD
	sco:G20_SCOREBOARD
	core:G20_CORE

end
