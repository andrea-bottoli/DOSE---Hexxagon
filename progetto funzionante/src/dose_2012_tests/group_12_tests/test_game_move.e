note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"


class
	CP_TEST_GAME_MOVE

inherit
	EQA_TEST_SET

feature -- Test routines

	CP_TEST_GAME_MOVE
			-- New test routine
		note
			testing:  "covers/{CP_GAMEMOVE}.make_game_move"

local

		position: CP_POSITION
		player:CP_PLAYER
		lgm: CP_GAMEMOVE
		beetle: CP_BEETLES

		do
			lgm.make_game_move(player, beetle, position)
			print ("CP_GAMEMOVE.make_game_move tested")
		end
end




