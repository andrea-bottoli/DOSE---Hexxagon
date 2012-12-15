note
	description: "Summary description for {XX_AI_PLAYER}."
	author: "Huda Touny - Nada Feteha"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_AI_PLAYER
inherit
	XX_IAI

create
	Ensure_Move

feature {NONE} -- Initialization
	AI_Solver: XX_AI_SELECT_MOVE
	Board: XX_BOARD

	Ensure_Move(logic:XX_HEXXAGON ; the_board:XX_BOARD)
		local
			all_calculation:XX_AI_SELECT_MOVE
			from_to:ARRAY[INTEGER]
			move:XX_POSSIBLE_MOVES
		do
			create from_to.make (0,1)
			create all_calculation.calculate_best_move
			print("%N IN AI")
			from_to:=all_calculation.call_intial_game(the_board)
			--test if work
			print("%N move from")
			print(from_to.at (0))
			print("%N move to")
			print(from_to.at(1))
			create move.make_possible_moves
			logic.other_move (move)
		end

feature {ANY} --Implementation
	get_AI_Solver(): XX_AI_SELECT_MOVE
    do

    ensure Result /= Void
    end

	set_board(a_board: XX_BOARD)
  	require else 	board_not_void: a_board/=Void
  	do

  	ensure then
  		Board_not_void: Board/=Void
  	end


	set_game_status(player1,player2: XX_PLAYER; is_active: BOOLEAN)
	require else   players_not_void: player1/=Void and player2/=Void
   	do

   	end

    send_confirm(value: BOOLEAN)
  	require else  players_not_void: value = True xor value = False
  	do

  	ensure then
   		massage_send: value= TRUE
  	end
end --end class
