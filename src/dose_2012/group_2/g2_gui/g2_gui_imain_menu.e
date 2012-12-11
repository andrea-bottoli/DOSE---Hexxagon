note
	description: "Summary description for {G2_GUI_IMAIN_MENU}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: "Date 13/11/2012"
	revision: "Revision  0.1"

deferred class
	G2_GUI_IMAIN_MENU

feature --basic operation

	set_logic (logic_1 : G2_LOGIC_LOGIC )
		--save Logic	
		deferred
		end

	set_board ( state : G2_LOGIC_STATE)
		--set board the game
		deferred
		end

	get_inform_disconnect
		-- disconnect the game
		deferred
		end

	get_inform_game
		-- return info the play card
		deferred
		end

	get_inform_new_game
		-- return info the connection host
		deferred
		end

	get_inform_join_game
		-- return info the connection join
		deferred
		end

	on_win
		--dialog Win
		deferred
		end

	on_lose
		--dialog Loser
		deferred
		end

	on_draw
		--dialog Draw	
		deferred
		end

end
