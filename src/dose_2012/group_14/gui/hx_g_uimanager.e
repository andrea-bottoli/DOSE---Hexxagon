note
	description: "Summary description for {HX_G_UIMANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

 class
	HX_G_UIMANAGER

inherit
	HX_G_IUIMANAGER

create
	make

feature
	logic				: HX_L_LOGIC
	window				: HX_G_MAIN_MENU_SCREEN
	numplayers			: INTEGER 	--just used in order to hide the level on NAME_LEVEL_SCREEN
	one_player			: BOOLEAN   -- single player
	multi_one_player	: BOOLEAN  	-- player on same pc
	multi_two_players	: BOOLEAN  	-- on NET
	difficulty_level 	: INTEGER	-- only for AI
	has_finished		: BOOLEAN
	has_stopped			: BOOLEAN
	game_window			: HX_G_GAME_SCREEN
	preferences_changed : BOOLEAN


feature

	make
	do
		has_finished := FALSE
		has_stopped  := FALSE
		preferences_changed := FALSE
		create logic.initialize (current)
	end

	initGraphics(a_main_ui_window: MAIN_WINDOW)
	do
		create window.make (a_main_ui_window)
		window.show
		-- we inform the Main-UI about the game window; otherwise, the game window might get garbage collected
		a_main_ui_window.add_reference_to_game (window)
	end

	get_num_players :INTEGER
	do
		Result:= current.numplayers
	end


	set_one_player
	do
		numplayers:=1
		one_player := True
	end

	set_multi_one_player
	do
		numplayers:=2
		multi_one_player := True
	end

	set_multi_two_players
	do
		numplayers:=2
		multi_two_players := True
	end


    set_difficulty_level(a_level: INTEGER)
    do
    	difficulty_level:= a_level
    end

	set_preferences(a_true: BOOLEAN)
	do
		preferences_changed:=a_true
	end

	create_game_window(main_ui: MAIN_WINDOW)
	do
		create game_window.make(main_ui,Current)
  		game_window.show
	end

	repaint()
	do
		print("GUI repaint %N")
		if game_window /= void then
				game_window.repaint
		end
		print("Repaint ended %N")
	end

	game_finished(l_message: HX_L_IGAME_END_MESSAGE)
	do
		has_finished := TRUE
		game_window.show_winner_screen
	end

	game_stopped(code: INTEGER; reason: STRING)
	local
		error_screen : HX_G_ERROR_SCREEN
		main_ui : MAIN_WINDOW
	do
		has_stopped := TRUE

		create error_screen.make (main_ui, reason)
		error_screen.show
		error_screen.destroy
	end

	request_move()
	do  --decided not to implement
		--TODO: remember to erase it from LOGIC part
	end

end

