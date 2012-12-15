class
	G19_RESULT_COUNTER

create
	make

feature{NONE}
	current_map: G19_READONLY_MAP
	current_player_info: G19_PLAYER_INFO
	current_cards: ARRAY[CHARACTER]
	score: INTEGER
feature

	make(map: G19_READONLY_MAP; player_info: G19_PLAYER_INFO)
		local
			i: INTEGER
		do
			current_map := map
			current_player_info := player_info
			create current_cards.make(0, 2)
			current_cards.put('c', 0)
			current_cards.put('h', 1)
			current_cards.put('j', 2)
			score := 0
			from
				i := 0
			until
				i > 2
			loop
				inspect current_cards.at(i)
				when 'a' then
					score := score + count_fishermen_or_miners(1)
				when 'b' then
	  				score := score
	  			when 'c' then
	  				score := score + count_discoverers
	  			when 'd' then
	  				score := score
	  			when 'e' then
	  				score := score
	  			when 'f' then
					score := score + count_fishermen_or_miners(2)
	  			when 'g' then
					score := score
	  			when 'h' then
					score := score + count_knights
	  			when 'i' then
					score := score
	  			when 'j' then
					score := score + count_farmers
				end
				i := i + 1
			end
		end

	get_score(): INTEGER
		do
			result := score
		end

feature {NONE}

	count_fishermen_or_miners(builder_type: INTEGER): INTEGER
			-- 1 - fishermen
			-- 2 - miners
		local
			x_counter, y_counter: INTEGER
			player_info: G19_PLAYER_INFO
			current_type: INTEGER
			build_type: INTEGER
		do
			result := 0

			if builder_type = 1 then
				build_type := ('g').code()
			else
				build_type := ('h').code()
			end

			from
				y_counter := 1
			until
				y_counter > 20
			loop
				from
					x_counter := 1
				until
					x_counter > 20
				loop
					player_info := current_map.get_cell_at(x_counter, y_counter).owner

					if player_info = current_player_info  then
						current_type := current_map.get_cell_at(x_counter, y_counter-1 ).type
						if y_counter > 0  and
							current_type = build_type	then
								result := result + 1
						end
						current_type := current_map.get_cell_at(x_counter+1, y_counter ).type
						if  x_counter <= 20 and
							current_type = build_type	then
								result := result + 1
						end
						current_type := current_map.get_cell_at(x_counter, y_counter+1 ).type
						if y_counter <= 20  and
							current_type = build_type	then
								result := result + 1
						end
						current_type := current_map.get_cell_at(x_counter-1, y_counter ).type
						if y_counter > 0 and
							current_type = build_type	then
								result := result + 1
						end

						if y_counter \\ 2 = 0	then --parity
							current_type := current_map.get_cell_at(x_counter+1, y_counter-1 ).type
							if y_counter > 0  and x_counter <= 20 and
								current_type = build_type	then
									result := result + 1
							end

							current_type := current_map.get_cell_at(x_counter+1, y_counter+1 ).type
							if y_counter <= 20  and x_counter <= 20 and
								current_type = build_type	then
									result := result + 1
							end

						else
							current_type := current_map.get_cell_at(x_counter-1, y_counter-1 ).type
							if y_counter > 0  and x_counter <= 20 and
								current_type = build_type	then
									result := result + 1
							end

							current_type := current_map.get_cell_at(x_counter-1, y_counter+1 ).type
							if y_counter <= 20  and x_counter <= 20 and
								current_type = build_type	then
									result := result + 1
							end
						end
					end
						x_counter := x_counter + 1
				end

				y_counter := y_counter + 1
			end
		end

	count_discoverers(): INTEGER
		local
			x_counter, y_counter: INTEGER
			player_info: G19_PLAYER_INFO
		do
			result := 0

			from
				y_counter := 1
			until
				y_counter > 20
			loop
				from
					x_counter := 1
				until
					x_counter > 20
				loop
					player_info := current_map.get_cell_at(x_counter, y_counter).owner
					if player_info = current_player_info then
						result := result + 1
						x_counter := 30 --break
					end
					x_counter := x_counter + 1
				end

				y_counter := y_counter + 1
			end
		end


	count_knights(): INTEGER
		local
			x_counter, y_counter, maximum, count: INTEGER
			player_info: G19_PLAYER_INFO
		do
			maximum := 0
			from
				y_counter := 1
			until
				y_counter > 20
			loop
				count := 0
				from
					x_counter := 1
				until
					x_counter > 20
				loop
					player_info := current_map.get_cell_at(x_counter, y_counter).owner
					if player_info = current_player_info then
						count := count + 1
					end
					x_counter := x_counter + 1
				end
				if maximum < count then
					maximum := count
				end
				y_counter := y_counter + 1
			end

			result := maximum * 2
		end


	get_cells_count(min_x, min_y, max_x, max_y: INTEGER): INTEGER
		local
			x_counter, y_counter: INTEGER
			player_info: G19_PLAYER_INFO
		do
			result := 0

			from
				y_counter := min_y
			until
				y_counter > max_y
			loop
				from
					x_counter := min_x
				until
					x_counter > max_x
				loop
					player_info := current_map.get_cell_at(x_counter, y_counter).owner
					if player_info = current_player_info then
						result := result + 1
					end

					x_counter := x_counter + 1
				end

				y_counter := y_counter + 1
			end
		end


	count_farmers(): INTEGER
		local
			min, cur: INTEGER
		do
			min := 500 -- maxixmum

			cur := get_cells_count(1, 1, 10, 10) -- left top quater
			if cur < min and cur /= 0 then
				min := cur
			end

			cur := get_cells_count(11, 1, 20, 10) -- right top quater
			if cur < min and cur /= 0 then
				min := cur
			end

			cur := get_cells_count(1, 11, 10, 20) -- left low quater
			if cur < min and cur /= 0 then
				min := cur
			end

			cur := get_cells_count(11, 11, 20, 20) -- right low quater
			if cur < min and cur /= 0 then
				min := cur
			end

			result := min * 3
		end
end
