note
	description: "Summary description for {CORE}."
	author: "creta4 team"
	date: "$Date$"
	revision: "$Revision$"

class
	G20_CORE

create
	start_game

feature
	player_list: ARRAY[G20_PLAYER]

	game_board : G20_MAINBOARD

	score_board : G20_SCOREBOARD

	players_satchels: ARRAY[G20_SATCHEL]

	logic: G20_LOGIC

	game_fsm: LIST[INTEGER]

	playersCount : INTEGER

	rand: RANDOM

	currentPlayer : INTEGER

feature
	start_game(numberOfPlayers: INTEGER; list: ARRAY[G20_PLAYER])
		require
			1 <= numberOfPlayers and numberOfPlayers <= 4
		local
			satchel: G20_SATCHEL
			boardSize : INTEGER
			i: INTEGER
			time: DATE_TIME
			color: G20_COLOR
		do
			player_list := deep_clone(list)
			playersCount := numberOfPlayers
			if
				numberOfPlayers = 2
			then
				boardSize := 11
			else
				if
					numberOfPlayers = 3
				then
					boardSize := 13
				else
					boardSize := 15
				end
			end

			create score_board.make(4)
			create game_board.make(boardSize)
			create logic.makeByBoardRef(game_board)
			create time.make_now_utc
			create rand.set_seed (time.seconds * 1000 + time.time.milli_second)
			rand.start
			create players_satchels.make(1, numberOfPlayers)
			from
				i:=1
			until
				i>numberOfPlayers
			loop
				create satchel.make_random(rand)
				players_satchels[i]:=deep_clone(satchel)
				i := i + 1
			end
			create color.make
			color.setcolor (1)
			game_board.placecolor (3,3, color)
			color.setcolor (2)
			game_board.placecolor (3,8, color)
			color.setcolor (3)
			game_board.placecolor (8,3, color)
			color.setcolor (4)
			game_board.placecolor (8,13, color)
			color.setcolor (5)
			game_board.placecolor (13,8, color)
			color.setcolor (6)
			game_board.placecolor (13,13, color)
		end

	game_cycle
		local
			j:INTEGER
			currentMove: G20_MOVEMENT
			move_results: ARRAY[INTEGER]
			color: G20_COLOR
			gameIsFinished: BOOLEAN
			tileToDelete: INTEGER
		do
			from
				gameIsFinished := False
			until
				gameIsFinished
			loop
				from
					currentPlayer:=1
				until
					currentPlayer > playersCount or gameIsFinished
				loop
					currentMove := player_list.item(currentPlayer).move(currentPlayer)
					from
						j:=1
					until
						j > playersCount
					loop
						if
							j /= currentPlayer
						then
							--MESSAGE_ABOUT_MOVE
						end
						j := j+1
					end
					gameIsFinished := game_board.IsFull or logic.Ingenious(currentPlayer,score_board)
					currentPlayer := currentPlayer + 1
				end
			end
			--MESSAGE_ABOUT_FINISHING
		end

	pause_game
		do

		end

	stop_game
		do

		end

feature{ANY}

	get_board : G20_MAINBOARD
		do
			Result := game_board
		end

	get_satchel( id : INTEGER) : G20_SATCHEL
		require
			1 <= id and id <= playersCount
		do
			Result := players_satchels.item (id)
		end

	get_score : G20_SCOREBOARD
		do
			Result := score_board
		end

	get_logic : G20_LOGIC
		do
			Result := logic
		end

	move(movement : G20_MOVEMENT) : BOOLEAN
		local
			j: INTEGER
			tileToDelete: INTEGER
			move_results: ARRAY[INTEGER]
			color : G20_COLOR
		do
			currentPlayer :=1
			Result := game_board.validate(movement)
			io.put_boolean (Result)
			if Result then
				move_results := logic.getPointsWithTile(movement)
				io.put_string ("Points got")
				tileToDelete := players_satchels.item (currentPlayer).findtile (movement.gettile)
				io.put_string ("Tile defined")
				players_satchels.item (currentPlayer).deletetile (tileToDelete,rand)
				io.put_string ("Tile deleted")
				from
					j:=1
				until
					j>6
				loop
					create color.make
					color.SetColor(j)
					score_board.IncreaseScore(currentPlayer, color, move_results.item(j))
					j := j+1
					io.put_string ("Loop step")
				end
			end
		end

end
