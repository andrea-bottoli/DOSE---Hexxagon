note
	description: "Summary description for {XX_AI_PLAYER}."
	author: "Huda Touny - Nada Feteha"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_AI_PLAYER
create
	Ensure_Move

feature {ANY} -- Initialization
	Board: XX_BOARD
	Moves: XX_POSSIBLE_MOVES
	AI_Moves: ARRAY[INTEGER] -- array only have 2 integer (cell will move from it) and (best move will go to)
	AI_Solver: XX_AI_SELECT_MOVE

	Ensure_Move
		require
			board_not_void: Board /= Void
		--	Moves_not_void: Moves.get_possible_moves() /= Void
		do
			create AI_Moves.make_filled (-1, -1, 2)
			Best_move()
		--	 (	calculate_best_move() , 1)----------------------

		ensure
			valid_move: (( (AI_Moves.at (0) >= 0) and (AI_Moves.at (1) >= 0) ) or
						 ( (AI_Moves.at (0) <= 58) and (AI_Moves.at (1) <= 58)))
		end

feature {ANY} --Implementation
	Best_move()
		do
			AI_Solver.calculate_best_move()
			AI_Moves.put ( AI_Solver.set_previos_move, 0)
			AI_Moves.put ( AI_Solver.set_best_move , 1)
		end
--invariant

end --end class
