note
	description: "Summary description for {IG_DATAGRAM_READER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_DATAGRAM_READER

inherit
	POLL_COMMAND
		redefine
			active_medium
		end

create
	make_with_logic

feature

	make_with_logic (s: like active_medium; l: IG_LOGIC; p: IG_NETWORK_PLAYER)
	require
		l /= Void
		p /= Void
		s /= Void
	do
		make(s)
		logic := l
		player := p
	ensure
		active_medium /= Void
		logic /= Void
		player /= Void
	end

	active_medium: NETWORK_STREAM_SOCKET
	logic: IG_LOGIC
	player: IG_NETWORK_PLAYER

	execute (arg: ANY)
		local
			s: STRING
			l: LIST[STRING]
		do
			--io.put_string ("In DATAGRAM_READER:execute%N")

			active_medium.read_line
			s := active_medium.last_string
			io.put_string ("Received Line: " + s + ". Size: " + s.count.out + "%N")

			l := s.split (';')
			if l.first.is_equal ("request_starting_game_state") then
				request_starting_game_state(l.at (2))
			elseif l.first.is_equal ("send_starting_game_state") then
				l.start
				l.remove
				send_starting_game_state(l)
--			elseif l.first.is_equal ("request_move") then
--				request_move
			elseif l.first.is_equal ("send_all_names") then
				l.start
				l.remove
				send_all_names(l)
			elseif l.first.is_equal ("send_move") then
				l.start
				l.remove
				send_move(l)
			elseif l.first.is_equal ("send_tile") then
				l.start
				l.remove
				send_tile(l)
			elseif l.first.is_equal ("send_game_over") then
				l.start
				l.remove
				send_game_over(l)
			elseif l.first.is_equal ("send_abort") then
				abort
			else
				--This should never happen
				io.put_string ("ERROR: No command received with message! Aborting.%N")
				abort
			end

		end

feature {NONE}

	request_starting_game_state(a_name: STRING)
		do
			logic.send_starting_game_state(player, a_name)
		end

--	request_move
--		do
--			
--		end

	send_all_names (args: LIST[STRING])
		do
			logic.receive_all_names(args)

		end

	send_move (args: LIST[STRING])
		local
			l_hex1, l_hex2: IG_HEX
			l_tile: IG_TILE
			l_move: IG_MOVE
		do
			create l_hex1.make (args.at (4))
			create l_hex2.make (args.at (5))
			create l_tile.make_with_hexes (l_hex1, l_hex2)
			create l_move.make_with_tile (l_tile)

			l_move.set_position (args.at (1).to_integer, args.at (2).to_integer)
			l_move.set_rotation (args.at (3).to_integer)

			logic.process_move (l_move)
		end

	send_tile (args: LIST[STRING])
		local
			l_hex1, l_hex2: IG_HEX
			l_tile: IG_TILE
		do
			create l_hex1.make (args.at (1))
			create l_hex2.make (args.at (2))
			create l_tile.make_with_hexes (l_hex1, l_hex2)
			--player.add_tile (l_tile)
			logic.add_tile(logic.last_player, l_tile)
		end

	send_starting_game_state (args: LIST[STRING])
		local
			i: INTEGER
			num_players: INTEGER
			l_tiles_list: LINKED_LIST[IG_TILE]
			l_tile: IG_TILE
			l_hex1, l_hex2: IG_HEX
		do

			num_players := args.at (1).to_integer

			create l_tiles_list.make

			from
				i := 2
			until
				i > args.count
			loop
				create l_hex1.make (args.at (i))
				create l_hex2.make (args.at (i+1))
				create l_tile.make_with_hexes (l_hex1, l_hex2)
				l_tiles_list.extend (l_tile)
				i := i + 2
			end
			logic.receive_starting_game_state(num_players, l_tiles_list)
		end

	send_game_over (args: LIST[STRING])
		do
			logic.receive_game_over(args.at (1))
		end

	abort
		do
			logic.receive_abort (player)
		end


end
