note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Christos Petropoulos"
	date: "20/11/12"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_CP_BOARD

inherit
	EQA_TEST_SET

feature -- Test routines

	test_pass_turn
            -- Test routine for board function (passturn)
        note
            testing:  "covers/{CP_BOARD_CONTROLLER}.passturn"
            testing:  "user/CP"
            local
			board: CP_BOARD_CONTROLLER
			player_A: CP_PLAYER
			player_B: CP_PLAYER

		do
			board.passturn(player_A)
			board.passturn(player_B)
			assert ("Current player has set",board.onturn/=Void)
			assert ("Player's turn has changed to playerB",board.onturn=player_B)
		end

	test_set_piece_onboard
			-- Test routine for board function (setpieceonboard)
			-- Test routine for board function (checkqueenplaced)
		note
			testing:	"covers/{CP_BOARD_CONTROLLER}.setpieceonboard"
			testing:	"covers/{CP_BOARD_CONTROLLER}.checkqueenplaced"
			testing:  	"user/CP"
			local
			board: CP_BOARD_CONTROLLER
			insect_queen: CP_QUEEN_BEE
		do
			create insect_queen
			board.setpieceonboard (0,board.listwithepieces)
			board.listwithepieces.make_empty
			board.listwithepieces.put (insect_queen,0)
			assert ("Queen has been placed ",board.checkqueenbeeplaced=TRUE)
		end



end


