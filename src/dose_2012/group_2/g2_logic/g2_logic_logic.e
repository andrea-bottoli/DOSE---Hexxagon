note
	description: "Summary description for {LOGIC}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G2_LOGIC_LOGIC

inherit

	G2_LOGIC_ILOGIC

	ARGUMENTS

	EXCEPTIONS

create
	make

feature

	make
		do
			create g2_state.make
			create g2_deck.make (1, 110)
		end

feature {ANY} --Attributes

	g2_open: BOOLEAN

	g2_same: BOOLEAN

	g2_same_wall: BOOLEAN

	g2_sudden_death: BOOLEAN

	g2_plus: BOOLEAN

	g2_combo: BOOLEAN

	g2_elemental: BOOLEAN

	g2_state: G2_LOGIC_STATE

	g2_gui: G2_GUI_MAIN_MENU

	g2_net: G2_NET_NET

	g2_deck: ARRAY [G2_LOGIC_CARD]

	g2_quit: BOOLEAN

feature {ANY} --setters

	set_gui (a_gui: G2_GUI_MAIN_MENU)
		require else
			non_void: a_gui /= void
		do
			g2_gui := a_gui
		ensure then
			g2_gui: g2_gui = a_gui
		end

	set_net (a_net: G2_NET_NET) -- may be null
		do
			g2_net := a_net
		ensure then
			g2_net: g2_net = a_net
		end

	set_state (e_state: G2_LOGIC_STATE)
		require else
			non_void: e_state /= void
		do
			g2_state := e_state
			if matrix_is_full then
				end_of_game
			end
		ensure then
			g2_state: g2_state = e_state
		end

	set_Rules (a_rules: ARRAY [BOOLEAN])
		require else
			non_void: a_rules /= void
		do
			g2_open := a_rules.at (1)
			g2_plus := a_rules.at (2)
			g2_same := a_rules.at (3)
			g2_same_wall := a_rules.at (4)
			g2_sudden_death := a_rules.at (5)
			g2_combo := a_rules.at (6)
			if g2_open = True or g2_plus = True or g2_plus = True or g2_same = True or g2_plus = True then
				g2_combo := True
			end
			g2_elemental := a_rules.at (7)
		ensure then
			g2_rules: g2_open = a_rules.at (1) and g2_same = a_rules.at (3) and g2_same_wall = a_rules.at (4) and g2_sudden_death = a_rules.at (5) and g2_plus = a_rules.at (2) and g2_elemental = a_rules.at (7)
		end

	set_quit (a_quit: BOOLEAN)
		do
			g2_quit := a_quit
		end

feature {ANY} --Initialization

	create_new_game (master: BOOLEAN)
		local
			arr_rules: ARRAY [BOOLEAN]
		do
			if (master = true) then
					--create connection host
				Current.set_rules (g2_gui.rules)
				create g2_net.make ("localhost", g2_gui.port, master)
				g2_net.set_logic (Current)
				g2_net.create_connection
				g2_net.send_rules (g2_gui.rules)
				init_game
				g2_gui.set_board (g2_state)
				g2_net.send_state (g2_state)
			else
					--create connection join
				create g2_net.make (g2_gui.ip, g2_gui.port, master)
				g2_net.set_logic (Current)
				g2_net.join_connection
				create arr_rules.make_from_array (g2_net.receive_rules)
				set_rules (arr_rules)
				g2_gui.set_rules (arr_rules)
				set_state (g2_net.receive_state)
				g2_gui.set_board (g2_state)
			end
		--	g2_gui.block_board
		end

	game_over : BOOLEAN
	do
		Result := matrix_is_full or g2_quit
	end

	run_game
	local
		new_state: G2_LOGIC_STATE
	do
		if game_over then
			if g2_quit then
				g2_gui.on_win
			else
				end_of_game
			end
		else
			if (g2_state.g2_player = g2_net.master) then
				g2_gui.resfresh_board
				g2_gui.unblock_board
			else
				new_state := g2_net.receive_state
				if g2_quit then
					g2_gui.on_win
				else
					set_state (new_state)
					g2_gui.set_board (g2_state)
					g2_gui.resfresh_board
					if matrix_is_full then
						end_of_game
					else
					g2_gui.set_board (g2_state)
					g2_gui.unblock_board
					end
				end
			end
		end
	rescue
		g2_gui.destroy
		g2_net.close_connection
	end


	init_deck ()
			--initialize the deck with the saved cards
		do
			level_1_cards
			level_2_cards
			level_3_cards
			level_4_cards
			level_5_cards
			level_6_cards
			level_7_cards
			level_8_cards
			level_9_cards
			level_A_cards
		end

	init_game ()
			--calls all the procedures needed to initialize game

		do
			if
				g2_elemental=true
			then
				operate_random_element()
			end
			init_deck ()
			distribute_card (g2_deck)
			define_first_player ()
		end

	distribute_card (e_deck: ARRAY [G2_LOGIC_CARD])
			--distributes the deck cards randomly to the players
		require
			deck_is_non_void: e_deck /= void
		local
			random_sequence: RANDOM
			l_time: TIME
			random_number: INTEGER
			i: INTEGER
			card1: G2_LOGIC_CARD
			card2: G2_LOGIC_CARD
		do
			create random_sequence.make
			create l_time.make_now
			from
				i := 1
			until
				i = 6
			loop
				random_sequence.set_seed (60 + l_time.second)

				random_sequence.forth
				random_number := random_sequence.item \\ 111
				card1 := g2_deck.at (random_number)
				card1.set_color (True)
				g2_state.g2_player1.put (card1, i)

				random_sequence.forth
				random_number := random_sequence.item \\ 111
				card2 := g2_deck.at (random_number)
				card2.set_color (False)
				g2_state.g2_player2.put (card2, i)

				i := i + 1
			end
		ensure
			player1_cards_non_void: g2_state.g2_player1 /= void
			player2_cards_non_void: g2_state.g2_player2 /= void
		end

	define_first_player ()
			--randomly choose the player to start
		local
			random_sequence: RANDOM
			random_number: INTEGER
			l_time: TIME
		do
			create random_sequence.make
			create l_time.make_now
			random_sequence.set_seed (60 + l_time.second)
			random_sequence.forth
			random_number := random_sequence.item \\ 2
			if random_number = 1 then
				g2_state.set_player (True)
			else
				g2_state.set_player (False)
			end
		end

feature {ANY} --Game procedures

		find_chosen_card (a_card: G2_LOGIC_CARD)
			--looking a card at the current player's cards and return it
		require
			non_void_card: a_card /= void
		local
			card: G2_LOGIC_CARD
			x: INTEGER
			tmp:INTEGER
		do
			if a_card.g2_card_color=true then
				if g2_state.g2_player1.has (a_card) then
					from
						x := 1
					until
						x = 6
					loop
						if g2_state.g2_player1.at (x).is_equal_card (a_card) then
							tmp:=x
						end
						x := x + 1
					end
				end
				g2_state.g2_player1.put (void,tmp)
			else
				if g2_state.g2_player2.has (a_card) then
					from
						x := 1
					until
						x = 6
					loop
						if g2_state.g2_player2.at (x).is_equal_card (a_card) then
							tmp:=x
						end
						x := x + 1
					end
				end
				g2_state.g2_player2.put (void,tmp)
			end
		end

	play_card (e_card: G2_LOGIC_CARD; x, y: INTEGER)
			--play the given card at the given COORDINATES
		require
			non_void: e_card /= void
		local
			i: INTEGER
			j: INTEGER
			tmp_matrix: G2_LOGIC_MATRIX
			new_state: G2_LOGIC_STATE
		do
				-- Wait play other player
			if is_valid_state (x, y) then
				create tmp_matrix.make (e_card, "None")
				g2_state.g2_matrix.put (tmp_matrix, x, y)

--				operate_elemental(x,y)

				i := x - 1 --check the card above the played card
				j := y
				if valid_index (i, j) then
					if g2_state.g2_matrix.item (i, j).g2_matrix_card /= void then
						if g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_leveldown < g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup and g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
						end
					end
				end
				i := x --check the card at the right of the played card
				j := y + 1
				if valid_index (i, j) then
					if g2_state.g2_matrix.item (i, j).g2_matrix_card /= void then
						if g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelleft < g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright and g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
						end
					end
				end
				i := x + 1 --check the card below the played card
				j := y
				if valid_index (i, j) then
					if g2_state.g2_matrix.item (i, j).g2_matrix_card /= void then
						if g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelup < g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_leveldown and g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
						end
					end
				end
				i := x
				j := y - 1 --check the card at the left of the played card
				if valid_index (i, j) then
					if g2_state.g2_matrix.item (i, j).g2_matrix_card /= void then
						if g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelright < g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft and g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
						end
					end
				end
				if (g2_same = true) then
					operation_same (x, y)
				end
				if (g2_same_wall = true) then
					operation_same_wall (x, y)
				end
				if (g2_plus = true) then
					operate_plus (x, y)
				end

					--	operate_combo(x,y)

			end
			g2_state.set_player (not g2_state.g2_player)
			g2_gui.set_board (g2_state)
			g2_net.send_state (g2_state)
			run_game
		end

	capture (card: G2_LOGIC_CARD)
			--change the color of a card when it is captured
		require
			non_void: card /= void
		do
			card.change_color
		end

	matrix_is_full (): BOOLEAN
			--return true when matrix is full
		local
			i: INTEGER
			j: INTEGER
			count: INTEGER
		do
			if not g2_state.g2_matrix.is_empty then
				from
					i := 1
				until
					i = 4
				loop
					from
						j := 1
					until
						j = 4
					loop
						if g2_state.g2_matrix.item (i, j).g2_matrix_card /= void then
							count := count + 1
						end
						j := j + 1
					end
					i := i + 1
				end
			end
			if count = 9 then
				Result := True
			else
				Result := False
			end
		end

	end_of_game ()
			--decide which player won the game,end game
		do
			if g2_state.g2_player1_number_cards > g2_state.g2_player2_number_cards and g2_net.master then
				g2_gui.on_win
			else
				if  g2_state.g2_player1_number_cards > g2_state.g2_player2_number_cards and not g2_net.master then
					g2_gui.on_lose
				else
					if g2_state.g2_player1_number_cards < g2_state.g2_player2_number_cards and g2_net.master then
						g2_gui.on_lose
					else
						if g2_state.g2_player1_number_cards < g2_state.g2_player2_number_cards and not g2_net.master then
							g2_gui.on_win
						else
							if g2_sudden_death then
								--operate_sudden_death
								g2_net.send_state (g2_state)
							else
								g2_gui.on_draw
							end
						end
					end
				end
			end
		end


	quit ()
			--quiting the game
		do
			g2_net.send_leave_msg

		end

	valid_index (x, y: INTEGER): BOOLEAN
		do
			if x < 4 and x > 0 and y < 4 and y > 0 then
				Result := TRUE
			else
				Result := False
			end
		end

	is_valid_state (x, y: INTEGER): BOOLEAN
			--check if the state is valid:invalid moves at occupied cells at matrix
		require
			valid_index_row: x > 0 and x < 4
			valid_index_column: y > 0 and y < 4
		do
			if g2_state.g2_matrix.item (x, y).g2_matrix_card = void then
				Result := TRUE
			else
				Result := FALSE
			end
		end

		operate_random_element ()
		local
			i: INTEGER
			j: INTEGER
			random_sequence1: RANDOM --use as boolean
			random_number1: INTEGER
			random_sequence2: RANDOM --use to determine element
			random_number2: INTEGER
			l_time: TIME
		do
			create random_sequence1.make
			create random_sequence2.make
			create l_time.make_now
			from
				i := 1
			until
				i = 4
			loop
				from
					j := 1
				until
					j = 4
				loop
					if g2_state.g2_matrix.item (i, j).g2_matrix_element = void then
							---	g2_state.g2_matrix.item (i, j).g2_matrix_card.print_card

						random_sequence1.set_seed (60 + l_time.second)
						random_sequence1.forth
						random_number1 := random_sequence1.item \\ 2
						if random_number1 = 1 then --if true,puts element
							random_sequence2.set_seed (60 + l_time.second)
							random_sequence2.forth
							random_number2 := random_sequence2.item \\ 9

							if random_number2 = 0 then
								g2_state.g2_matrix.item (i, j).set_element ("None")
							end
							if random_number2 = 1 then
								g2_state.g2_matrix.item (i, j).set_element ("Earth")
							end
							if random_number2 = 2 then
								g2_state.g2_matrix.item (i, j).set_element("Lightning")
							end
							if random_number2 = 3 then
								g2_state.g2_matrix.item (i, j).set_element ("Ice")
							end
							if random_number2 = 4 then
								g2_state.g2_matrix.item (i, j).set_element("Poison")
							end
							if random_number2 = 5 then
								g2_state.g2_matrix.item (i, j).set_element("Wind")
							end
							if random_number2 = 6 then
								g2_state.g2_matrix.item (i, j).set_element("Fire")
							end
							if random_number2 = 7 then
								g2_state.g2_matrix.item (i, j).set_element ("Water")
							end
							if random_number2 = 8 then
								g2_state.g2_matrix.item (i, j).set_element("Holy")
							end
						end

							--io.put_new_line

					end
					j := j + 1
				end
				i := i + 1
			end
		end

	operation_same (x, y: INTEGER)
		local
			i: INTEGER
			j: INTEGER
			k: INTEGER
			l: INTEGER
			captured: BOOLEAN --check if capture happened

		do
			i := x - 1 --rigth and up
			j := y
			k := x
			l := y + 1
			if valid_index (i, j) and valid_index (k, l) then
				if not (is_valid_state (i, j)) and not (is_valid_state (k, l)) then
					if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright = g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_levelleft and g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_leveldown) then
							--check if card belongs to player and captures
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (k, l).g2_matrix_card)
							if g2_combo = true then
								operate_combo (k, l)
							end
						end
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i, j)
							end
						end
					end
				end
			end
			i := x - 1 --up and down
			j := y
			k := x + 1
			l := y
			if valid_index (i, j) and valid_index (k, l) then
				if not (is_valid_state (i, j)) and not (is_valid_state (k, l)) then
					if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_leveldown and g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_leveldown = g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_levelup) then
							--check if card belongs to player and captures
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (k, l).g2_matrix_card)
							if g2_combo = true then
								operate_combo (k, l)
							end
						end
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i, j)
							end
						end
					end
				end
			end
			i := x --left and down
			j := y - 1
			k := x + 1
			l := y
			if valid_index (i, j) and valid_index (k, l) then
				if not (is_valid_state (i, j)) and not (is_valid_state (k, l)) then
					if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelright and g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_leveldown = g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_levelup) then
							--check if card belongs to player and captures
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (k, l).g2_matrix_card)
							if g2_combo = true then
								operate_combo (k, l)
							end
						end
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i, j)
							end
						end
					end
				end
			end
			i := x --right and up
			j := y + 1
			k := x - 1
			l := y
			if valid_index (i, j) and valid_index (k, l) then
				if not (is_valid_state (i, j)) and not (is_valid_state (k, l)) then
					if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelleft and g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup = g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_leveldown) then
							--check if card belongs to player and captures
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (k, l).g2_matrix_card)
							if g2_combo = true then
								operate_combo (k, l)
							end
						end
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i, j)
							end
						end
					end
				end
			end
			i := x --left and right
			j := y - 1
			k := x
			l := y + 1
			if valid_index (i, j) and valid_index (k, l) then
				if not (is_valid_state (i, j)) and not (is_valid_state (k, l)) then
					if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelright and g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright = g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_levelleft) then
							--check if card belongs to player and captures
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (k, l).g2_matrix_card)
							if g2_combo = true then
								operate_combo (k, l)
							end
						end
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i, j)
							end
						end
					end
				end
			end
			i := x - 1 --left and up
			j := y
			k := i
			l := y - 1
			if valid_index (i, j) and valid_index (k, l) then
				if not (is_valid_state (i, j)) and not (is_valid_state (k, l)) then
					if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_leveldown and g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft = g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_levelright) then
							--check if card belongs to player and captures
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (k, l).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (k, l).g2_matrix_card)
							if g2_combo = true then
								operate_combo (k, l)
							end
						end
						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i, j)
							end
						end
					end
				end
			end
		end

	operation_same_wall (x, y: INTEGER)
		local
			i: INTEGER
			j: INTEGER
		do

				--first checks if player's cards has an A on the wall
			if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft = 10 and g2_state.g2_matrix.item (x, y - 1).g2_matrix_card = void) or (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright = 10 and g2_state.g2_matrix.item (x, y + 1).g2_matrix_card = void) or (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup = 10 and g2_state.g2_matrix.item (x - 1, y).g2_matrix_card = void) or (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_leveldown = 10 and g2_state.g2_matrix.item (x + 1, y).g2_matrix_card = void) then
				i := x --on the left
				j := y - 1
				if (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelleft = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) or (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelup = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) or (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_leveldown = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) then
						--if two cards have same number on contact
					if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelright) then
							--check if they have different color

						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i, j)
							end
						end
					end
				end
				i := x --on the right
				j := y + 1
				if (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelright = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) or (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelup = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) or (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_leveldown = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) then
						--if two cards have same number on contact
					if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelleft) then
							--check if they have different color

						if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i, j)
							end
						end
						i := x - 1 -- up
						j := y
						if (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelleft = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) or (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelright = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) or (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelup = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) then
								--if two cards have same number on contact
							if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_leveldown) then
									--check if they have different color

								if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
									capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
									if g2_combo = true then
										operate_combo (i, j)
									end
								end
								i := x + 1 -- down
								j := y
								if (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelleft = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) or (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelright = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) or (g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_leveldown = 10 and g2_state.g2_matrix.item (i, j).g2_matrix_card = void) then
										--if two cards have same number on contact
									if (g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_leveldown = g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelup) then
											--check if they have different color

										if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
											capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
											if g2_combo = true then
												operate_combo (i, j)
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end

	operate_plus (x, y: INTEGER)
			--plus rule operations
		local
			i1: INTEGER
			j1: INTEGER
			i2: INTEGER
			j2: INTEGER
		do

				--check the card above and the card on the left
			i1 := x - 1
			j1 := y
			i2 := x
			j2 := y - 1
			if valid_index (i1, j1) and valid_index (i2, j2) then
				if not (is_valid_state (i1, j1)) and not (is_valid_state (i2, j2)) then
					if (g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_leveldown + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup) = (g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_levelright + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft) then
							--check if card already belongs to the player
						if g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
						if g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
					end
				end
			end

				--check the card above and the card on the right
			i1 := x - 1
			j1 := y
			i2 := x
			j2 := y + 1
			if valid_index (i1, j1) and valid_index (i2, j2) then
				if not (is_valid_state (i1, j1)) and not (is_valid_state (i2, j2)) then
					if (g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_leveldown + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup) = (g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_levelleft + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright) then
							--check if card already belongs to the player
						if g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
						if g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
					end
				end
			end

				--check the card above and the card down
			i1 := x - 1
			j1 := y
			i2 := x + 1
			j2 := y
			if valid_index (i1, j1) and valid_index (i2, j2) then
				if not (is_valid_state (i1, j1)) and not (is_valid_state (i2, j2)) then
					if (g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_leveldown + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup) = (g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_levelup + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_leveldown) then
							--check if card already belongs to the player
						if g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
						if g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
					end
				end
			end

				--check the card on the right and the card on the left
			i1 := x
			j1 := y + 1
			i2 := x
			j2 := y - 1
			if valid_index (i1, j1) and valid_index (i2, j2) then
				if not (is_valid_state (i1, j1)) and not (is_valid_state (i2, j2)) then
					if (g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_levelleft + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright) = (g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_levelright + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft) then
							--check if card already belongs to the player
						if g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
						if g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
					end
				end
			end

				--check the card on the right and the card down
			i1 := x
			j1 := y + 1
			i2 := x + 1
			j2 := y
			if valid_index (i1, j1) and valid_index (i2, j2) then
				if not (is_valid_state (i1, j1)) and not (is_valid_state (i2, j2)) then
					if (g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_levelleft + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright) = (g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_levelup + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_leveldown) then
							--check if card already belongs to the player
						if g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
						if g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
					end
				end
			end

				--check the card on the left and the card down
			i1 := x
			j1 := y - 1
			i2 := x + 1
			j2 := y
			if valid_index (i1, j1) and valid_index (i2, j2) then
				if not (is_valid_state (i1, j1)) and not (is_valid_state (i2, j2)) then
					if (g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_levelright + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft) = (g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_levelup + g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_leveldown) then
							--check if card already belongs to the player
						if g2_state.g2_matrix.item (i1, j1).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
						if g2_state.g2_matrix.item (i2, j2).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color then
							capture (g2_state.g2_matrix.item (i1, j1).g2_matrix_card)
							if g2_combo = true then
								operate_combo (i1, j1)
							end
						end
					end
				end
			end
		end

	operate_combo (x, y: INTEGER)
		local
			i: INTEGER
			j: INTEGER
		do
			i := x - 1 --check the card above the played card
			j := y
			if valid_index (i, j) and not (is_valid_state (x, y)) then
				if g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_leveldown < g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelup then
					if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
						capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
						operate_combo (i, j)
					end
				end
			end
			i := x --check the card at the right of the played card
			j := y + 1
			if valid_index (i, j) and not (is_valid_state (x, y)) then
				if g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelleft < g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelright then
					if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
						capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
						operate_combo (i, j)
					end
				end
			end
			i := x + 1 --check the card below the played card
			j := y
			if valid_index (i, j) and not (is_valid_state (x, y)) then
				if g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelup < g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_leveldown then
					if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
						capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
						operate_combo (i, j)
					end
				end
			end
			i := x
			j := y - 1 --check the card at the left of the played card
			if valid_index (i, j) and not (is_valid_state (x, y)) then
				if g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_levelright < g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_levelleft then
					if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_color /= g2_state.g2_matrix.item (i, j).g2_matrix_card.g2_card_color then
						capture (g2_state.g2_matrix.item (i, j).g2_matrix_card)
						operate_combo (i, j)
					end
				end
			end
		end

	operate_elemental (x, y: INTEGER)
			--checks elements at x,y and card's elements and changes level
		do
			if g2_state.g2_matrix.item (x, y).g2_matrix_card.g2_card_element = g2_state.g2_matrix.item (x, y).g2_matrix_element then
				g2_state.g2_matrix.item (x, y).g2_matrix_card.increase_leveldown
				g2_state.g2_matrix.item (x, y).g2_matrix_card.increase_levelleft
				g2_state.g2_matrix.item (x, y).g2_matrix_card.increase_levelright
				g2_state.g2_matrix.item (x, y).g2_matrix_card.increase_levelup
			else
				g2_state.g2_matrix.item (x, y).g2_matrix_card.decrease_leveldown
				g2_state.g2_matrix.item (x, y).g2_matrix_card.decrease_levelleft
				g2_state.g2_matrix.item (x, y).g2_matrix_card.decrease_levelright
				g2_state.g2_matrix.item (x, y).g2_matrix_card.decrease_levelup
			end
		end
	operate_sudden_death
	do
		define_first_player ()
	end

feature -- set cards in array

	level_1_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "", 1, 4, 1, 5)
			g2_deck.put (card, 1)
			create card.make (True, "", 2, 6, 1, 1)
			g2_deck.put (card, 2)
			create card.make (True, "", 6, 1, 2, 1)
			g2_deck.put (card, 3)
			create card.make (True, "Earth", 3, 2, 1, 5)
			g2_deck.put (card, 4)
			create card.make (True, "", 4, 4, 3, 2)
			g2_deck.put (card, 5)
			create card.make (True, "", 5, 1, 3, 1)
			g2_deck.put (card, 6)
			create card.make (True, "Lightning", 2, 4, 4, 1)
			g2_deck.put (card, 7)
			create card.make (True, "", 1, 3, 5, 3)
			g2_deck.put (card, 8)
			create card.make (True, "", 1, 1, 5, 4)
			g2_deck.put (card, 9)
			create card.make (True, "", 2, 1, 5, 3)
			g2_deck.put (card, 10)
			create card.make (True, "Lightning", 2, 2, 6, 1)
			g2_deck.put (card, 11)
		end

	level_2_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "", 7, 3, 1, 1)
			g2_deck.put (card, 12)
			create card.make (True, "Lightning", 4, 5, 2, 4)
			g2_deck.put (card, 13)
			create card.make (True, "Lightning", 5, 5, 2, 2)
			g2_deck.put (card, 14)
			create card.make (True, "", 3, 5, 3, 4)
			g2_deck.put (card, 15)
			create card.make (True, "", 5, 5, 3, 2)
			g2_deck.put (card, 16)
			create card.make (True, "Ice", 6, 4, 3, 1)
			g2_deck.put (card, 17)
			create card.make (True, "", 6, 2, 3, 2)
			g2_deck.put (card, 18)
			create card.make (True, "", 5, 3, 4, 3)
			g2_deck.put (card, 19)
			create card.make (True, "Poison", 5, 3, 5, 1)
			g2_deck.put (card, 20)
			create card.make (True, "Wind", 5, 2, 5, 3)
			g2_deck.put (card, 21)
			create card.make (True, "", 3, 1, 7, 2)
			g2_deck.put (card, 22)
		end

	level_3_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "Fire", 4, 7, 2, 4)
			g2_deck.put (card, 23)
			create card.make (True, "", 6, 3, 2, 6)
			g2_deck.put (card, 24)
			create card.make (True, "", 5, 3, 3, 6)
			g2_deck.put (card, 25)
			create card.make (True, "", 6, 6, 3, 2)
			g2_deck.put (card, 26)
			create card.make (True, "Ice", 7, 5, 3, 1)
			g2_deck.put (card, 27)
			create card.make (True, "Earth", 7, 1, 3, 5)
			g2_deck.put (card, 28)
			create card.make (True, "", 3, 4, 4, 6)
			g2_deck.put (card, 29)
			create card.make (True, "Fire", 5, 2, 4, 6)
			g2_deck.put (card, 30)
			create card.make (True, "Poison", 3, 5, 5, 5)
			g2_deck.put (card, 31)
			create card.make (True, "Earth", 7, 3, 5, 2)
			g2_deck.put (card, 32)
			create card.make (True, "Earth", 6, 1, 6, 3)
			g2_deck.put (card, 33)
		end

	level_4_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "Fire", 2, 6, 3, 7)
			g2_deck.put (card, 34)
			create card.make (True, "Poison", 6, 7, 3, 2)
			g2_deck.put (card, 35)
			create card.make (True, "Fire", 7, 4, 3, 5)
			g2_deck.put (card, 36)
			create card.make (True, "", 7, 4, 4, 4)
			g2_deck.put (card, 37)
			create card.make (True, "", 6, 4, 5, 5)
			g2_deck.put (card, 38)
			create card.make (True, "", 3, 3, 6, 7)
			g2_deck.put (card, 39)
			create card.make (True, "Earth", 4, 5, 6, 5)
			g2_deck.put (card, 40)
			create card.make (True, "", 7, 1, 6, 3)
			g2_deck.put (card, 41)
			create card.make (True, "Lightning", 1, 4, 7, 6)
			g2_deck.put (card, 42)
			create card.make (True, "", 2, 6, 7, 3)
			g2_deck.put (card, 43)
			create card.make (True, "", 4, 2, 7, 6)
			g2_deck.put (card, 44)
		end

	level_5_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "Poison", 7, 4, 2, 7)
			g2_deck.put (card, 45)
			create card.make (True, "Water", 7, 5, 3, 6)
			g2_deck.put (card, 46)
			create card.make (True, "", 4, 7, 4, 6)
			g2_deck.put (card, 47)
			create card.make (True, "", 5, 7, 4, 5)
			g2_deck.put (card, 48)
			create card.make (True, "Fire", 7, 7, 4, 2)
			g2_deck.put (card, 49)
			create card.make (True, "", 6, 6, 5, 5)
			g2_deck.put (card, 50)
			create card.make (True, "", 5, 7, 6, 3)
			g2_deck.put (card, 51)
			create card.make (True, "", 3, 5, 7, 6)
			g2_deck.put (card, 52)
			create card.make (True, "", 6, 6, 7, 2)
			g2_deck.put (card, 53)
			create card.make (True, "", 6, 2, 7, 6)
			g2_deck.put (card, 54)
			create card.make (True, "", 3, 2, 1, 10)
			g2_deck.put (card, 55)
		end

	level_6_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "", 7, 8, 1, 5)
			g2_deck.put (card, 56)
			create card.make (True, "", 8, 8, 2, 2)
			g2_deck.put (card, 57)
			create card.make (True, "Poison", 1, 8, 3, 8)
			g2_deck.put (card, 58)
			create card.make (True, "", 4, 7, 3, 8)
			g2_deck.put (card, 59)
			create card.make (True, "", 2, 8, 4, 8)
			g2_deck.put (card, 60)
			create card.make (True, "", 6, 8, 4, 5)
			g2_deck.put (card, 61)
			create card.make (True, "Wind", 7, 3, 4, 8)
			g2_deck.put (card, 62)
			create card.make (True, "", 6, 4, 5, 8)
			g2_deck.put (card, 63)
			create card.make (True, "", 7, 8, 5, 2)
			g2_deck.put (card, 64)
			create card.make (True, "", 4, 5, 6, 8)
			g2_deck.put (card, 65)
			create card.make (True, "", 1, 4, 8, 8)
			g2_deck.put (card, 66)
		end

	level_7_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "", 8, 7, 3, 6)
			g2_deck.put (card, 67)
			create card.make (True, "", 8, 4, 4, 8)
			g2_deck.put (card, 68)
			create card.make (True, "", 8, 5, 4, 8)
			g2_deck.put (card, 69)
			create card.make (True, "", 5, 8, 5, 7)
			g2_deck.put (card, 70)
			create card.make (True, "", 1, 7, 7, 8)
			g2_deck.put (card, 71)
			create card.make (True, "", 6, 4, 7, 8)
			g2_deck.put (card, 72)
			create card.make (True, "", 5, 6, 8, 6)
			g2_deck.put (card, 73)
			create card.make (True, "", 7, 2, 8, 7)
			g2_deck.put (card, 74)
			create card.make (True, "", 8, 5, 8, 3)
			g2_deck.put (card, 75)
			create card.make (True, "", 8, 4, 8, 4)
			g2_deck.put (card, 76)
			create card.make (True, "Lightning", 8, 2, 8, 5)
			g2_deck.put (card, 77)
		end

	level_8_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "", 8, 6, 2, 9)
			g2_deck.put (card, 78)
			create card.make (True, "", 9, 9, 2, 3)
			g2_deck.put (card, 79)
			create card.make (True, "", 9, 7, 3, 6)
			g2_deck.put (card, 80)
			create card.make (True, "Lightning", 2, 9, 4, 9)
			g2_deck.put (card, 81)
			create card.make (True, "", 9, 8, 4, 4)
			g2_deck.put (card, 82)
			create card.make (True, "", 3, 9, 6, 7)
			g2_deck.put (card, 83)
			create card.make (True, "Fire", 9, 2, 8, 6)
			g2_deck.put (card, 84)
			create card.make (True, "", 4, 8, 9, 4)
			g2_deck.put (card, 85)
			create card.make (True, "Earth", 5, 9, 9, 1)
			g2_deck.put (card, 86)
			create card.make (True, "Ice", 6, 4, 9, 7)
			g2_deck.put (card, 87)
			create card.make (True, "Earth", 9, 2, 9, 5)
			g2_deck.put (card, 88)
		end

	level_9_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "", 4, 9, 10, 4)
			g2_deck.put (card, 89)
			create card.make (True, "Fire", 7, 7, 10, 2)
			g2_deck.put (card, 90)
			create card.make (True, "", 7, 6, 10, 4)
			g2_deck.put (card, 91)
			create card.make (True, "Holy", 9, 4, 2, 10)
			g2_deck.put (card, 92)
			create card.make (True, "", 5, 8, 3, 10)
			g2_deck.put (card, 93)
			create card.make (True, "", 8, 10, 4, 4)
			g2_deck.put (card, 94)
			create card.make (True, "", 8, 3, 5, 10)
			g2_deck.put (card, 95)
			create card.make (True, "", 10, 2, 6, 8)
			g2_deck.put (card, 96)
			create card.make (True, "Wind", 10, 7, 7, 1)
			g2_deck.put (card, 97)
			create card.make (True, "Water", 7, 1, 7, 10)
			g2_deck.put (card, 98)
			create card.make (True, "Poison", 3, 10, 10, 1)
			g2_deck.put (card, 99)
		end

	level_A_cards
		local
			card: G2_LOGIC_CARD
		do
			create card.make (True, "", 2, 9, 10, 6)
			g2_deck.put (card, 100)
			create card.make (True, "", 6, 6, 10, 7)
			g2_deck.put (card, 101)
			create card.make (True, "", 9, 10, 2, 6)
			g2_deck.put (card, 102)
			create card.make (True, "", 10, 6, 4, 8)
			g2_deck.put (card, 103)
			create card.make (True, "", 6, 10, 4, 9)
			g2_deck.put (card, 104)
			create card.make (True, "", 8, 10, 6, 5)
			g2_deck.put (card, 105)
			create card.make (True, "", 10, 2, 8, 7)
			g2_deck.put (card, 106)
			create card.make (True, "", 10, 6, 9, 4)
			g2_deck.put (card, 107)
			create card.make (True, "", 5, 3, 9, 10)
			g2_deck.put (card, 108)
			create card.make (True, "", 4, 2, 10, 10)
			g2_deck.put (card, 109)
			create card.make (True, "", 10, 3, 3, 10)
			g2_deck.put (card, 110)
		end

invariant
	n5_cards_playe1: g2_state.g2_player1.upper = 5
	n5_cards_playe2: g2_state.g2_player2.upper = 5
	matrix_3X3: g2_state.g2_matrix.height = 3
	matric_3X3: g2_state.g2_matrix.width = 3

end
