note
	description: "Summary description for {BS_GAME_CONNECTION_LISTENER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_GAME_CONNECTION_LISTENER

inherit
	THREAD
	rename make as thread_make
	end

create
	make

feature -- Execute

	make(pmt_game_connection: BS_NET_GAME_CONNECTION; pmt_command_received_agent: PROCEDURE [ANY, TUPLE [BS_NET_COMMAND]])
	do
		thread_make()
		create command_list
		game_connection := pmt_game_connection
		command_received_agent := pmt_command_received_agent
	end

	execute()
	local
		received_command: BS_NET_COMMAND
		sweet_fail: BOOLEAN
	do
		if not sweet_fail then
			from
				create received_command.make (command_list.command_startgame) -- Fake command
			until
				received_command.command ~ command_list.command_closing
			loop
				received_command := game_connection.read_command()
				command_received_agent.call ([received_command])
			end
		end
		io.put_string ("BS_GAME_CONNECTION_LISTENER thread cleanly terminated.%N")
	rescue
		if not game_connection.is_connected() then
			-- Then it probably failed because the connection has been closed.
			sweet_fail := true
			retry
		end
	end

	set_command_received_agent(pmt_command_received_agent: PROCEDURE [ANY, TUPLE [BS_NET_COMMAND]])
	do
		command_received_agent := pmt_command_received_agent
	end


feature {NONE} -- Locals

	command_list: BS_NET_COMMAND_LIST

	game_connection: BS_NET_GAME_CONNECTION

	command_received_agent: PROCEDURE [ANY, TUPLE [BS_NET_COMMAND]]

end
