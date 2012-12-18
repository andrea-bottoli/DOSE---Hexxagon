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
			ipconf_script_call
			print ( "Type 1 to play the game:  %NType 2 to create a new root server:%N")
			io.read_integer
			temp := io.last_integer
			if temp = 1 then
				create player.make (main_ui, lobby_id, lobby_ip,"", lobby_port)
			elseif temp = 2 then
				create lobby_server.make(lobby_id, lobby_ip,"", lobby_port)
			end

		end


ipconf_script_call
--	local
--		my_proc : PROCESS
--		proc_run : PROCESS_FACTORY
	once
--		create proc_run
--		my_proc := proc_run.process_launcher (file_system.pathname_to_string(ipconfig_script_path),
--		void,"")
--		my_proc.launch
--		print("log created in path: "+file_system.pathname_to_string(group_10_path)+"%N")
	end


end
