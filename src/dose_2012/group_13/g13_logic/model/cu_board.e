note
	description: "This contains the game board and provides methods for accessing and manipulating it"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_BOARD

create
	make

feature {CU_GAME} -- Initialization
	make
		-- Initialize the gameboard with a matrix of CU_SQUARE elements
		require else
			board_void:board = void

		do
			--Initialize a 25x24 matrix
				create board.make (25, 24)
				make_corridors
				make_rooms

		ensure then
			board_initialized: board /= void
		end

	make_corridors
		--initialize corridors from a file
		require
		local
			l_file : PLAIN_TEXT_FILE
			l_x : INTEGER
			l_y : INTEGER
			l_n : STRING
			l_e : STRING
			l_s : STRING
			l_w : STRING
		do
			create l_file.make_open_read ("./dose_2012/group_13/g13_logic/files/corridors.txt")
			create l_n.make_empty
			create l_e.make_empty
			create l_s.make_empty
			create l_w.make_empty
			from

			until
				l_file.end_of_file
			loop
				l_file.read_integer
				l_x:=l_file.last_integer
				l_file.read_integer
				l_y:=l_file.last_integer
				l_file.read_word
				l_n.copy (l_file.last_string)
				l_file.read_word
				l_e.copy (l_file.last_string)
				l_file.read_word
				l_s.copy (l_file.last_string)
				l_file.read_word
				l_w.copy (l_file.last_string)
				board.put (create {CU_CORRIDOR}.make(l_n,l_e,l_s,l_w),l_x,l_y)
			end
			l_file.close
		ensure
		end

	make_rooms
		--initialize rooms from a file
		require
		local
			l_file: PLAIN_TEXT_FILE
			l_rooms: ARRAY[CU_ROOM]
			l_doors: ARRAY[CU_COORDINATE]
			l_room: CU_ROOM
			l_enum: CU_ENUM_ROOMS
			l_door_dim: INTEGER
			l_door_index: INTEGER
			l_room_index: INTEGER
			l_x: INTEGER
			l_y: INTEGER
		do
			--initialize 9 CU_ROOM objects from file "room_objects.txt"
			create l_file.make_open_read ("./dose_2012/group_13/g13_logic/files/room_objects.txt")
			create l_rooms.make(0,8)
			from
				l_room_index:=0
			until
				l_room_index>8
			loop
				l_file.read_integer
				l_door_dim:=l_file.last_integer
				l_doors.make (1, l_door_dim)
				l_file.read_integer
				l_x:=l_file.last_integer
				l_file.read_integer
				l_y:=l_file.last_integer
				from
					l_door_index:=1
				until
					l_x=100 and l_y=100
				loop
					l_doors.put (create{CU_COORDINATE}.make(l_x,l_y),l_door_index)
					l_file.read_integer
					l_x:=l_file.last_integer
					l_file.read_integer
					l_y:=l_file.last_integer
				end
				l_rooms.put (create {CU_ROOM}.make (l_room_index, l_doors.twin, void), l_room_index)
				l_room_index:=l_room_index+1
			end
			l_file.close
			--associate references in the board squares from file "rooms.txt"
			create l_file.make_open_read ("./dose_2012/group_13/g13_logic/files/rooms.txt")
			from
				l_room_index:=0
			until
				l_room_index>8
			loop
				l_file.read_integer
				l_x:=l_file.last_integer
				l_file.read_integer
				l_y:=l_file.last_integer
				from

				until
					l_x=100 and l_y=100
				loop
					board.put (l_rooms.item (l_room_index), l_x, l_y)
					l_x:=l_file.last_integer
					l_file.read_integer
					l_y:=l_file.last_integer
				end
				l_room_index:=l_room_index+1
			end
			--setting secret passages
			l_rooms.item (0).set_secret_passage (l_rooms.item (8))
			l_rooms.item (2).set_secret_passage (l_rooms.item (6))
			l_rooms.item (8).set_secret_passage (l_rooms.item (0))
			l_rooms.item (6).set_secret_passage (l_rooms.item (2))
			l_file.close
		ensure
		end


feature -- Access
	board: ARRAY2[CU_SQUARE]
			-- the gameboard, represented by a list of squares (rooms and corridors)
		attribute
		ensure
			board_not_void: board /= void
			board_not_empty: board.count>0
		end

	find_room(room_id: INTEGER): CU_COORDINATE
		--finds a room from it's id, the id is defined in the CU_ENUM_ROOMS
		require
			valid_id: room_id>=0 and room_id<=8
		local
			i: INTEGER
			j: INTEGER
			finish: BOOLEAN
		do
			from
				i:=1
			until
				i>25 or finish=TRUE
			loop
				from
					j:=1
				until
					j>24 or finish=TRUE
				loop
					if attached {CU_ROOM} board.item (i, j) as l_room then
						if	l_room.room_id=room_id then
							create result.make(i,j)
							finish:=TRUE
						end
					end
					j:=j+1
				end
				i:=i+1
			end
		ensure
			valid_result: result /= void
		end

	find_weapon(a_weapon: INTEGER): CU_ROOM
		require
			valid_weapon: a_weapon>=0 and a_weapon<=5
		local
			i: INTEGER
			j: INTEGER
			finish: BOOLEAN
		do
			finish:=false
			from
				i:=1
			until
				i>25 or finish=TRUE
			loop
				from
					j:=1
				until
					j>24 or finish=TRUE
				loop
					if attached {CU_ROOM} board.item (i, j) as l_room then
						if	l_room.weapons.has (a_weapon) then
							result:=l_room
							finish:=TRUE
						end
					end
					j:=j+1
				end
				i:=i+1
			end
		end

	find_square(a_coord: CU_COORDINATE): CU_SQUARE
		require
			valid_coord: a_coord /= void
			valid_x: a_coord.x > 0 and a_coord.x <= 25
			valid_y: a_coord.y > 0 and a_coord.y <= 24
		do
			result:= board.item (a_coord.x, a_coord.y)
		ensure
			good_result: result /= void
		end

feature {CU_GAME, EQA_TEST_SET}--Internal Elements change
	weapon_find_and_move(a_weapon: INTEGER; a_move_to: CU_COORDINATE)
		require
			valid_weapon: a_weapon>=0 and a_weapon<=5
			valid_room: a_move_to /= void
			valid_x: a_move_to.x > 0 and a_move_to.x <= 25
			valid_y: a_move_to.y > 0 and a_move_to.y <= 24
		local
			l_room_coord: CU_COORDINATE
			l_room_from: CU_ROOM
		do
			l_room_from:=find_weapon(a_weapon)
			if attached {CU_ROOM} find_square (a_move_to) as l_room then
				l_room_from.weapon_out (a_weapon)
				l_room.weapon_in (a_weapon)
			end
		end
end
