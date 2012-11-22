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
	Board: XX_BOARD
	Moves: XX_POSSIBLE_MOVES
	AI_Solver: XX_AI_SELECT_MOVE
    Message_To_LOGIC: XX_POSSIBLE_MOVES

	Ensure_Move
		require
			board_not_void: Board /= Void
		--	Moves_not_void: Moves.get_possible_moves() /= Void
		do
			Set_Best_move()
		ensure
			valid_move: (( (AI_Solver.get_previos_move >= 0)  and (AI_Solver.get_best_move >= 0) ) or
						 ( (AI_Solver.get_previos_move < 58) and (AI_Solver.get_best_move < 58)))
		end

feature {ANY} --Implementation
	Best_move()
	do
		Set_Best_move()
	end

	get_AI_Solver(): XX_AI_SELECT_MOVE
    do

    ensure Result /= Void
    end

	set_board(a_board: XX_BOARD)
  	require else 	board_not_void: a_board/=Void
  	do
  		Board:= a_board

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


feature {NONE}
	Set_Best_move()
	do
		AI_Solver.calculate_best_move()
		Message_To_LOGIC.set_move ( AI_Solver.get_previos_move ,AI_Solver.get_best_move,1)
	end

end --end class
