note
	description: "THE WINDOW WHERE THE PLAYER WILL START A GAME WITH JOIN OR CREATE ONE"
	author: "LYDATAKIS GEORGIOU KATEROS"
	date: "$Date$"
	revision: "$0.1$"

class
	G3_START_GAME

feature{G3_FIRST_WINDOW}
	--initialize window
	 initialize_start_game(cont : EV_FIXED)
		--initialize start game window
	local
			internal_pixmap: EV_PIXMAP
			internal_pixmap1: EV_PIXMAP
			internal_pixmap2: EV_PIXMAP
	do
		wind:=cont
		create main_cont
		create internal_pixmap
		create internal_pixmap1
		create internal_pixmap2
		internal_pixmap.set_with_named_file ("dose_2012/images/group_03/font2.png")
		internal_pixmap1.set_with_named_file ("dose_2012/images/group_03/join1.png")
		internal_pixmap2.set_with_named_file ("dose_2012/images/group_03/create1.png")



		create create_game.default_create
		create_game.set_background_pixmap (internal_pixmap2)
		create_game.pointer_button_release_actions.extend (agent create_a_game(?,?,?,?,?,?,?,?))
		create_game.pointer_enter_actions.extend (agent enter_pixmap(create_game))
		create_game.pointer_leave_actions.extend (agent leave_pixmap(create_game))

		create join_game.default_create
		join_game.pointer_button_release_actions.extend (agent join_a_game(?,?,?,?,?,?,?,?))
		join_game.set_background_pixmap (internal_pixmap1)
		join_game.pointer_enter_actions.extend (agent enter_pixmap(join_game))
		join_game.pointer_leave_actions.extend (agent leave_pixmap(join_game))


		create port.make_with_text ("25876")
		create name.make_with_text ("My_name")

		main_cont.extend_with_position_and_size (join_game,150,380,100,97)
		main_cont.extend_with_position_and_size (create_game,750,380,100,97)
		main_cont.extend_with_position_and_size (port,160,60,200,25)
		main_cont.extend_with_position_and_size (name,170,105,200,25)
		cont.extend_with_position_and_size (main_cont, 0, 0, 1000, 600)
		main_cont.set_background_pixmap (internal_pixmap)
	end

	enter_pixmap (pix:EV_FIXED)
	local
			internal_pixmap: EV_PIXMAP
	do
		create internal_pixmap
		if pix = create_game then
			internal_pixmap.set_with_named_file ("dose_2012/images/group_03/create2.png")
			create_game.set_background_pixmap (internal_pixmap)
		else
			internal_pixmap.set_with_named_file ("dose_2012/images/group_03/join2.png")
			pix.set_background_pixmap (internal_pixmap)
		end

	end

	leave_pixmap (pix:EV_FIXED)
	local
			internal_pixmap: EV_PIXMAP
	do
		create internal_pixmap
		if pix = create_game then
			internal_pixmap.set_with_named_file ("dose_2012/images/group_03/create1.png")
			create_game.set_background_pixmap (internal_pixmap)
		else
			internal_pixmap.set_with_named_file ("dose_2012/images/group_03/join1.png")
			pix.set_background_pixmap (internal_pixmap)
		end

	end

feature{NONE}
	--actions
	create_a_game (a_a,a_b,a_c:INTEGER_32 b_a,b_b,b_c:REAL_64 c_a,c_b:INTEGER_32)
	local window:G3_GAME_WINDOW
		do
			if  port.text.is_empty or port.text.is_integer=false then
				port.set_text ("Put the server port here")
			elseif name.text.is_empty then
				name.set_text ("Put your name here")
			else

				create window
				create model.make
				create control.make_with_model (model)
				control. set_tichu_game_window(window)
				window.set_contoller(control)

				window.intialize_game_window (wind, port.text, name.text,true)
			end
		end

	join_a_game(a_a,a_b,a_c:INTEGER_32 b_a,b_b,b_c:REAL_64 c_a,c_b:INTEGER_32)

	local window:G3_GAME_WINDOW
		do
			if  port.text.is_empty or port.text.is_integer then
				port.set_text ("Put the server ip here")
			elseif name.text.is_empty then
				name.set_text ("Put your name here")
			else
				create window
				create model.make
				create control.make_with_model (model)
				control. set_tichu_game_window(window)
				window.set_contoller(control)
				window.intialize_game_window (wind, port.text, name.text,false)
			end
		end
	--	ensure		port_number>0


feature{NONE}
	control:G3_CONTROLLER

	model:G3_MODEL

	port_number:INTEGER
		--store the port of the server
	create_game :EV_FIXED
		--Button use to create a new game
	join_game : EV_FIXED
		--Button use to join a game
	port :EV_TEXT_FIELD
		--Text where the player write the port to join a game
	name :EV_TEXT_FIELD
		--Player name
	main_cont : EV_FIXED
		-- the main container to which the button will be added
	comps:G3_COMPS
		--The window
	wind:EV_FIXED
end
