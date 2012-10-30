note
	description: "Abstract class for the launcher that is used to start games from the game selector."
	author: "Christian Estler"
	date: "01.10.2011"
	revision: "1.0"

deferred class
	LAUNCHER


feature

	launch (main_ui_window: EV_TITLED_WINDOW)
			-- launch a game
		deferred
			-- an implementation can do the task
			-- required before launching the game window (if neeed)
		end

end
