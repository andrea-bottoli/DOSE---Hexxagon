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

feature

	make
	do
		has_finished := FALSE
		has_stopped  := FALSE
		create logic.initialize (current)
	end

	initGraphics(a_main_ui_window: MAIN_WINDOW)
	do
		-- gives the main_ui as argument so we can restore when hexxagon closes
		create window.make (a_main_ui_window)
		window.show
		-- we inform the Main-UI about the game window; otherwise, the game window might get garbage collected
		a_main_ui_window.add_reference_to_game (window)
	end

	get_num_players :INTEGER
	do
		print("UIMANAGER: getnumplayers=")
		print(current.numplayers)
		Result:= current.numplayers
	end


	set_one_player
	do
		numplayers:=1
		print("UI: set1player=")
		print(numplayers)
		one_player := True
	end

	set_multi_one_player
	do
		numplayers:=2
		print("UI: set2player2=")
		print(numplayers)

		multi_one_player := True
	end

	set_multi_two_players
	do
		numplayers:=2
		print("UI: set2player2=")
		print(numplayers)

		multi_two_players := True
	end


    set_difficulty_level(a_level: INTEGER)
    do
    	difficulty_level:= a_level
    end


	repaint
	do
		if window /= void then
	--			window.repaint
		end
	end

	game_finished(l_message: HX_L_IGAME_END_MESSAGE)
	local
--		logic : HX_L_LOGIC
		message : STRING
	do
		has_finished := TRUE
--		logic.finnish (l_message) --Is it correct?

		message := "winner_id = "
		message.append_integer (l_message.winner_id)
		message.append ("%N player1_pieces = ")
		message.append_integer (l_message.player1_pieces)
		message.append ("%N player2_pieces = ")
		message.append_integer (l_message.player2_pieces)
	end

	game_stopped(code: INTEGER; reason: STRING)
	local
		error_screen : HX_G_ERROR_SCREEN
		main_ui : MAIN_WINDOW
	do
		--Code is the unique error identifier.
		--Reason is the explanation that should be displayed to the user.
		--TODO

		has_stopped := TRUE

		create error_screen.make (main_ui, reason)
		error_screen.show
		error_screen.destroy
	end

	request_move()
		--it's just to tell the UI, that the user can now make a move, and AI or NET has finished its move.
 		--So after a move of the AI, logic calls request_move. And then, the user should make a move...
	local
--		board : HX_L_BOARD
	do
--		board.change_active_player()
--		repaint() --?
	end

end
