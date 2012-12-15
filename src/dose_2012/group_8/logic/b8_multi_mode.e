note
	description: "The class that manages all the multi-players mode"
	author: "Stefano Di Palma"
	date: "08/12/2012"
	revision: "1.0"

class
	B8_MULTI_MODE

inherit
	B8_MODE

create
	make

feature {NONE} -- Initialization

	make(a_logic:B8_LOGIC; mode:INTEGER)
			-- Initialization for `Current'.
		local
			players:ARRAYED_LIST[B8_PLAYER]
			i,j:INTEGER
			colors:ARRAY[INTEGER]
		do
			is_game_over:=False
			logic:=a_logic
			if mode={B8_MODE}.four_player then
				num_players:=4
			else
				num_players:=2
			end
			create players_colors.make_filled (Void, 1, num_players)
			if mode={B8_MODE}.four_player then
				from i:=1
				until i>4
				loop
					create colors.make_filled (i-1,1, 1)
					players_colors[i]:=colors
					i:=i+1
				end
			else
				from i:=1
				until i>2
				loop
					create colors.make_filled (i-1,1, 2)
					from j:=1
					until j>2
					loop
						colors[j]:=(i-1)+2*(j-1)
						j:=j+1
					end
					players_colors[i]:=colors
					i:=i+1
				end
			end

			logic.get_board.set_height (20)
			logic.get_board.set_width(20)
			logic.get_board.generate_holes
			create players.make (num_players)

			from
				i := 0
			until
				i >= 4
			loop
				players.force (create {B8_PLAYER}.make(i))
				from
					j := 0
				until
					j >= 21
				loop
					players[i+1].add_tile (create {B8_GAME_TILE}.make (i,j))
					j := j + 1
				end
				i := i + 1
			end
			logic.set_players (players)
		end

feature {NONE} --Attributes

	num_players:INTEGER
			-- number of players

	players_colors:ARRAY[ARRAY[INTEGER]]


feature --Access
	get_num_players:INTEGER
	do
		Result:=num_players
	end

	the_player_has_this_color(id,color:INTEGER):BOOLEAN
			-- says if the player has the color
		do
			Result:=players_colors[id+1].has(color)
		end

	is_game_over:BOOLEAN

	next_turn
			-- sets the next turn
		local
			i:INTEGER
		do
			logic.set_turn ((logic.get_turn+1)\\num_players)
			logic.set_color ((logic.get_color+1)\\4)
			from i:=1
			until i>4 or logic.get_players[logic.get_color+1].can_make_a_move (logic)
			loop
				logic.set_turn ((logic.get_turn+1)\\num_players)
				logic.set_color ((logic.get_color+1)\\4)
				i:=i+1
			end
			if(i>4)then
				is_game_over:=True
				logic.abort_game
			end
		end

	get_score(a_turn:INTEGER):INTEGER
		do
			if (num_players=4) then
				Result:= logic.get_players[a_turn].get_score
			elseif (num_players=2) then
				Result:= logic.get_players[a_turn].get_score
				Result:=Result+ logic.get_players[a_turn+2].get_score
			end

		end


end
