note
	description: "Summary description for {G10_CARCASSONNE_LAUNCHER}."
	author: "Angel Kyriako"
	date: "11.11.2012"
	revision: "1.0"

class
	G10_CARCASSONNE_LAUNCHER

inherit
	LAUNCHER

feature -- Implementation

	launch (main_ui: MAIN_WINDOW)
			-- launch the application
		local
			host 		 : G10_HOST
			player 		 : G10_JOINED_PLAYER
			root 		 : G10_LOBBY_SERVER

			temp : INTEGER
		do
			print ( "H klhsh sas prow8eitai...%NType 1 to play the game:  %NType 2 to create a new root server:%N")
			io.read_integer
			temp := io.last_integer
			if temp = 1 then
				create player.make (main_ui)
			elseif temp = 2 then
				create root.make ("6666", "192.168.1.1", "root server")
				--create root.make ("6666", "192.168.1.65", "root server")
			end

		end


end
