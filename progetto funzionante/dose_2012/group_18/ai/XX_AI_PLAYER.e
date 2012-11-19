note
	description: "Summary description for {XX_AI_PLAYER}."
	author: "Huda Touny - Nada Feteha"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_AI_PLAYER

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

feature {NONE}
	Set_Best_move()
		do
			AI_Solver.calculate_best_move()
			Message_To_LOGIC.message_possible_moves ( AI_Solver.get_previos_move ,AI_Solver.get_best_move)
		end
end --end class
