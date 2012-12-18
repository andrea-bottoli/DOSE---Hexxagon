note
	description: "Initializer of the board of the game"
	author: "Milano4"
	date: "10/12/12"
	revision: "1.0"

class
	GR11_BOARD_INITIALIZER

inherit

	GR11_CONSTANTS
			export
				{NONE} all
			--undefine
				--default_create, copy
			end

create
	make

feature{NONE} --initialization
	make(num_of_player:INTEGER)
	require
		number_of_player_3_or_4 : num_of_player = 3 or else num_of_player = 4
	do
		number_of_player := num_of_player
		create list_of_initial_area.make(num_of_player)
		initial_area_initialized := 0
		initialize_board_from_file
	end

feature --Access

	number_of_player : INTEGER
	--says how much players play the game

	board : HASH_TABLE[GR11_HEXAGON, GR11_COORDINATES]
	--board of the game

	list_of_initial_area : ARRAYED_LIST[ARRAYED_LIST[GR11_COORDINATES]]
	--list of initial areas of players

	number_of_levels : INTEGER
	--number of levels of the board

feature{NONE} --implementation

  	number_of_neighbours:INTEGER
    --number of_neighbours in the hex map
    once
    	Result := 6
    end

    initial_area_initialized : INTEGER

	number_of_hexagon:INTEGER
    --number of hexagon in the board
    local
    	index : INTEGER
    	l_result : INTEGER
    do
    	l_result := 1

    	from
    		index := 1
    	until
    		index <= number_of_levels
    	loop
    		l_result := l_result + index*number_of_neighbours
    	end

    	Result := l_result

    end


	initialize_board_from_file
	local
		l_file: PLAIN_TEXT_FILE
		l_content: STRING
		l_tokens : LIST[STRING]
	do

			print(file_system.pathname_to_string (board_path))
			create l_file.make_open_read (file_system.pathname_to_string (board_path))

			l_file.read_line
			l_content := l_file.last_string.twin

			from
				l_tokens := l_content.split(' ')
			until
				l_tokens[1].split('=')[1] = "player" and then l_tokens[1].split('=')[2].to_integer = number_of_player
			loop
				l_file.read_line
				l_content := l_file.last_string.twin
				l_tokens := l_content.split(' ')
			end

			l_file.read_line
			l_content := l_file.last_string.twin

			from
				l_tokens := l_content.split('=')
			until
				l_file.end_of_file or else l_tokens[1] = "player"
			loop

				if
					l_tokens[1] = "size"
				then
					number_of_levels := l_tokens[2].to_integer
					create board.make(number_of_hexagon)
				else
					if
						l_tokens[1] = "asteroids"
					then
						initialize_asteroids(l_content)
					else
						if
							l_tokens[1] = "probes"
						then
							initialize_probes(l_content)
						else
							initialize_player(l_content)
						end
					end
				end

				l_file.read_line
				l_content := l_file.last_string.twin

			end

		l_file.close
	end

	initialize_board
	--fill board with coordinates and hexagon
	local
		coordinates : GR11_COORDINATES
		l_ring_index : INTEGER
		l_level_index : INTEGER
	do
		create coordinates.make(0,0)
		board.put(create {GR11_HEXAGON}.make, coordinates)

		from
			l_level_index := 1
		until
			l_level_index <= number_of_levels
		loop

			from
		    	l_ring_index := 0
			until
				l_ring_index < number_of_levels * number_of_neighbours
				--the ring have a number of elements equal to levels*(neighbours in an hexagon)
			loop
				create coordinates.make(l_level_index,l_ring_index)
				board.put(create {GR11_HEXAGON}.make, coordinates)
				l_ring_index := l_ring_index + 1
			end

			l_level_index := l_level_index + 1
		end
	end

	initialize_asteroids(content:STRING)
	require
		content_begins_correctly: content.split('=')[1] = "asteroids"
	local
		l_tokens : LIST[STRING]
		l_coordinates : GR11_COORDINATES

	do
		l_tokens := content.split('=')[2].split(';')

		from
			l_tokens.start
		until
			l_tokens.exhausted
		loop
			create l_coordinates.make(l_tokens.item.split(',')[1].to_integer, l_tokens.item.split(',')[2].to_integer)
			board.item (l_coordinates).add_asteroid(create {GR11_ASTEROID})
		end

	end

	initialize_probes(content:STRING)
	require
		content_begins_correctly: content.split('=')[1] = "probes"
	do

	end

	initialize_player(content:STRING)
	require
		content_begins_correctly: content.split('=')[1] = "pl"
	local
		l_coordinates : GR11_COORDINATES
		l_hexagon_move : GR11_HEXAGON_MOVE
		l_direction : GR11_DIRECTION
		l_tokens : LIST[STRING]
		l_list : ARRAYED_LIST[GR11_COORDINATES]
		l_index :INTEGER
	do
		create l_direction.make(content.split('=')[2].split(':')[1].to_integer)
		l_tokens := content.split('=')[2].split(':')[2].split(';')
		initial_area_initialized := initial_area_initialized + 1
		create l_list.make(20)
		create l_hexagon_move

		from
			l_tokens.start
		until
			l_tokens.exhausted
		loop
			create l_coordinates.make(l_tokens.item.split('-')[1].split(',')[1].to_integer, l_tokens.item.split('-')[1].split(',')[2].to_integer)
			l_list.put_front(l_coordinates)
			from
				l_index := 1
			until
				l_index >= l_tokens.item.split('-')[2].to_integer
			loop
				l_coordinates := l_hexagon_move.move_to(l_direction, l_coordinates)
				l_list.put_front(l_coordinates)
				l_index := l_index + 1
			end

		end

		list_of_initial_area[initial_area_initialized] := l_list

	end

end
