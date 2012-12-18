note
	description: "Summary description for {CP_BOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CP_BOARD

inherit
	CP_IFBOARD


create
	make

	-- TODO: Handle the players, decide which one is active...

feature {NONE} -- Initialization

	make(firstplayername, secondplayername: STRING)
		-- Make a board 22 x 22 as empty hive
		local
			l_template: ARRAY2 [CP_IFPLACE]
		do
			height := 22
			width := 22

			create firstplayer.make(Current, 1, firstplayername)
			create secondplayer.make(Current, 2, secondplayername)

			board_active_player := firstplayer

			-- TODO: Remove following code when first template is ready to be used
			create l_template.make_filled(create {CP_PLACE}.make(TRUE, TRUE, void) ,22, 22)
			l_template[1,1].set_is_empty(FALSE)
			l_template[1,1].set_player (firstplayer)

			l_template[a_width, a_height].set_is_empty (FALSE)
			l_template[a_width, a_height].set_player (secondplayer)


			board_array := l_template

		end


feature -- Access

	place(x: INTEGER; y: INTEGER): CP_IFPLACE
		-- Place at position (x, y).
		do
			Result := board_array[x, y]
		end

	active_player: CP_IFPLAYER
		-- Currently active player.
		do
			Result := board_active_player
		end

	valid_moves: LIST[CP_IFMOVE]
		local
			l_list: LINKED_LIST[CP_IFMOVE]
			x, y: INTEGER
		do
			create l_list.make

			from x:=1
			until x>width
			loop
			  	from y:=1
			  	until y>height
			  	loop
			  		if place(x,y).exists AND NOT place(x,y).is_empty AND place(x,y).player.is_equal(active_player)
			  		then
						l_list.append (possible_moves(x, y))
			  		end
			  		y := y + 1
			  	end
			  	x  := x + 1
			end

			Result := l_list

		end


FEATURE {NONE} -- Internal details

	board_array: ARRAY2 [CP_IFPLACE]
	board_active_player: CP_IFPLAYER

end
