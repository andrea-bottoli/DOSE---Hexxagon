note
	description: "Summary description for {G10_CARCASSONNE_LAUNCHER}."
	author: "Angel Kyriako"
	date: "11.11.2012"
	revision: "1.0"

class
	G10_CARCASSONNE_LAUNCHER

inherit
	LAUNCHER
	G10_LOBBY_CONSTANTS

feature -- Implementation

	launch (main_ui: MAIN_WINDOW)
			-- launch the application
		local
			player	 : G10_LOBBY_USER
			lobby_server : G10_LOBBY_SERVER

			temp : INTEGER
		do
			print ( "H klhsh sas prow8eitai...%NType 1 to play the game:  %NType 2 to create a new root server:%N")
			io.read_integer
			temp := io.last_integer
			if temp = 1 then
				create player.make (main_ui, lobby_id, lobby_ip,"", lobby_port)
			elseif temp = 2 then
				create lobby_server.make(lobby_id, lobby_ip,"", lobby_port)
			end

		end


end
