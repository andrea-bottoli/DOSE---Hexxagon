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
	player_list: TABLE[G20_PLAYER, ANY]

	game_board : G20_MAINBOARD

	score_board : G20_SCOREBOARD

	players_satchels: ARRAY[G20_SATCHEL]

	game_fsm: LIST[INTEGER]

feature
	start_game
		local satchel: G20_SATCHEL
		do
			create players_satchels.make(1,1)
			create satchel.make_random
			players_satchels.put(satchel, 1)
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

		end

	get_satchel( id : INTEGER) : G20_SATCHEL
		do

		end

	get_score : G20_SCOREBOARD
		do

		end

end
