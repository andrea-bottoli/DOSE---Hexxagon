note
	description: "Summary description for {TILE_PULL}."
	author: "..., Eleutherios S BenisisAngel Kyriako"
	date: "15/12/2012"
	revision: "3.0"

class
	G10_LOGIC_DRAWING_PILE

create
	make_tile_pull

feature
	Pull:ARRAYED_LIST[G10_LOGIC_TILE]
	tile_count : INTEGER

feature {G10_LOGIC_GAME_MAIN} -- constructor

	make_tile_pull  -- Please do not modify this we need it, Crete 3
	local
		i : INTEGER
		next_tile : G10_LOGIC_TILE
	do
		create pull.make (72)
		 tile_count := 72

		from i := 1
		until i > tile_count
		loop	 -- the following ids are exactly are exactly the ids of the images in the images folder
	 		if(i <= 5)then -- +5
				create next_tile.make_with_id("1")
	 		elseif (i <= 8) then -- +3
				create next_tile.make_with_id("2")
	 		elseif (i <= 11) then -- +3
				create next_tile.make_with_id("3")
	 		elseif (i <= 15) then -- +4
				create next_tile.make_with_id("4")
	 		elseif (i <= 17) then -- +2
				create next_tile.make_with_id("5")
	 		elseif (i <= 18) then -- +1
				create next_tile.make_with_id("6")
	 		elseif (i <= 27) then -- +9
				create next_tile.make_with_id("7")
	 		elseif (i <= 35) then -- +8
				create next_tile.make_with_id("8")
	 		elseif (i <= 39) then -- +4
				create next_tile.make_with_id("9")
	 		elseif (i <= 40) then -- +1
				create next_tile.make_with_id("10")
	 		elseif (i <= 44) then -- +4
				create next_tile.make_with_id("11")
	 		elseif (i <= 47) then -- +3
				create next_tile.make_with_id("12")
	 		elseif (i <= 49) then -- +2
				create next_tile.make_with_id("13")
	 		elseif (i <= 54) then -- +5
				create next_tile.make_with_id("14")
	 		elseif (i <= 58) then -- +4
				create next_tile.make_with_id("15")
	 		elseif (i <= 61) then -- +3
				create next_tile.make_with_id("16")
	 		elseif (i <= 64) then -- +3
				create next_tile.make_with_id("17")
	 		elseif (i <= 67) then -- +3
				create next_tile.make_with_id("18")
	 		elseif (i <= 72) then -- +5
				create next_tile.make_with_id("19")
			else
				print("%NProblem in make_tile_pull%N%N")
	 		end

			pull.put_front (next_tile)
	 		i := i+1
	 	end

		Shuffle_drawed_pile

	ensure
		init_successful: pull.count = pull.capacity and pull.count = tile_count
	end

feature{G10_LOGIC_GAME_MAIN} -- mutators

	generate_next_tile: G10_LOGIC_TILE
	require
		tile_count_valid: tile_count > 0
	do
		Result := pull.at (tile_count)
		tile_count := tile_count - 1
	ensure
		drawed_successfully: tile_count = old tile_count - 1
	end

feature {NONE} -- private attribute and methods for shuffling

	random_sequence : RANDOM

	generate_random: INTEGER
	  do
	    random_sequence.forth
	    Result := random_sequence.item
	  end

	Shuffle_drawed_pile
	local
      	l_time: TIME
      	l_seed: INTEGER
      	i, go_to_index, swap_with_index:INTEGER
    do
      	create l_time.make_now
      	l_seed := l_time.hour
      	l_seed := l_seed * 60 + l_time.minute
      	l_seed := l_seed * 60 + l_time.second
      	l_seed := l_seed * 1000 + l_time.milli_second
      	create random_sequence.set_seed (l_seed)

		from i:=1
		until i > 2*tile_count
		loop

			go_to_index := (generate_random \\ (tile_count-1)) +1
			swap_with_index := (generate_random \\ (tile_count-1)) + 1

			if Pull.valid_index (go_to_index) and Pull.valid_index (swap_with_index) then
				Pull.go_i_th (go_to_index)
				Pull.swap (swap_with_index)
			end

			Pull.start
			i :=i+1
		end

		-- shuffle the first tile in the pull
		Pull.go_i_th (1)
		Pull.swap (swap_with_index)

	ensure
		shuffle_successful: pull.count = old pull.count
	end

feature{G10_LOGIC_GAME_MAIN} -- observer

	is_empty: BOOLEAN
	require
		tike_count_valid: tile_count >= 0
	do
		if (tile_count /= 0) then
			Result := false
		else
			Result := true
		end

	end

feature{G10_LOGIC_GAME_MAIN} --accessor

	get_drawed_tile_count: INTEGER -- returns the tile count of the draw pile
	do
		Result := tile_count
	end

end
