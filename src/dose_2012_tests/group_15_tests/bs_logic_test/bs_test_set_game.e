note
	description: "Summary description for {BS_TEST_SET_GAME}."
	author: "Mathias Bottero"
	date: "$date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	BS_TEST_SET_GAME

inherit
	EQA_TEST_SET

feature -- Test routines
	BS_TEST_SET_GAME_MAKE_0
		note
			testing: "user/BS"
		local
			game: BS_GAME
		do
			create game.make
			assert("Instance initialized succesfully.",true)
		end

	BS_TEST_SET_GAME_ADD_PLAYER_0
		note
			testing: "user/BS"
		local
			game: BS_GAME
			player: BS_PLAYER
			flag: BOOLEAN
		do
			create player.make(1,1)
			create game.make
			flag:=game.add_player(player)
			assert("The quantity of players is correct.",flag)
		end

	BS_TEST_SET_GAME_ADD_PLAYER_1
		note
			testing: "user/BS"
		local
			game: BS_GAME
			player: BS_PLAYER
			player1: BS_PLAYER
			player2: BS_PLAYER
			player3: BS_PLAYER
			flag: BOOLEAN
		do
			create player.make(1,1)
			create player1.make(2,2)
			create player2.make(3,3)
			create player3.make(4,4)
			create game.make
			flag:=game.add_player(player)
			flag:=game.add_player(player1)
			flag:=game.add_player(player2)
			flag:=game.add_player(player3)
			flag:=game.add_player(player)
			assert("Players creation works correctly.",not flag)
		end

end
