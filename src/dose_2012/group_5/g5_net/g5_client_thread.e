note
	description: "[
					The thread G5_CLIENT_THREAD represents the thread, which will
					be launched by the host to join the game that it has already
					created on its machine.
					]"
	author: "Luca Falsina"
	date: "06.12.2012"
	revision: "0.1"

class
	G5_CLIENT_THREAD
inherit
	THREAD
		rename
			make as thread_make
		end

create
	make

feature {NONE} -- Initialization

	make (  a_mutex: MUTEX; an_associated_g5_launcher: G5_LAUNCHER ; a_server_IP_address,
			a_player_name: STRING; a_server_port_number: INTEGER)
			-- This creation feature associates every incoming parameter to the omonymous one.
		require
			a_mutex_not_void: a_mutex /= Void
			an_associated_g5_launcher_not_void: an_associated_g5_launcher /= Void
			valid_server_port: a_server_port_number > 1024 and a_server_port_number < 5000
			valid_name: a_player_name /= void and
						not(a_player_name.is_empty) and
						not(a_player_name.is_equal ("SERVER"))
		do
			thread_make
			mutex := a_mutex
			associated_g5_launcher := an_associated_g5_launcher
			server_IP_address := a_server_IP_address
			player_name := a_player_name
			server_port_number := a_server_port_number
		ensure
			valid_creation_feature:
				mutex = a_mutex and
				associated_g5_launcher = an_associated_g5_launcher and
				server_IP_address = a_server_IP_address and
				player_name = a_player_name and
				server_port_number = a_server_port_number and
				is_launchable = true
		end


feature {NONE} -- Implementation

	mutex: MUTEX

	associated_g5_launcher: G5_LAUNCHER

	server_IP_address: STRING

	player_name: STRING

	server_port_number: INTEGER

    execute
			-- This feature will make the new host thread works as a client of this match.
		do
--			sleep (600000000)
			associated_g5_launcher.submitting_as_a_client(server_IP_address, player_name, server_port_number)
		ensure then
			-- The client is associated to the game if the name was not empty
			-- and is different from "SERVER".
		end
end
