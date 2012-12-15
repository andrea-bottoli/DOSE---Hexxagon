note
	description: "Summary description for {HX_A_PROBLEM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_A_PROBLEM

create
	make

feature

	make()
		do
		end

	getSuccessor(state: HX_L_IBOARD): LINKED_LIST[HX_L_IBOARD]
		--Returns the list of successor states for a given state
		require
			non_void: state /= Void
		local
			state_list: LINKED_LIST[HX_L_IBOARD]
			i: INTEGER
			aux: HX_L_IBOARD
			count: INTEGER
			moves: LIST[HX_L_IMOVE]
		do
			create state_list.make
			moves := state.legal_moves
			count := moves.count
			from
				i := 1
			until
				i > count
			loop
				aux := state.clone_board
				aux.move_piece (moves.at (i))
				state_list.extend (aux)
				i := i+1
			end
			Result := state_list
		ensure
			non_void: Result /= Void
		end

	ended(state: HX_L_IBOARD; bool: BOOLEAN): BOOLEAN
		--Returns if the board is in an ended state
		require
			non_void: state /= Void
		do
			Result := state.is_end_ai (bool)
		ensure
			non_void: Result = state.is_end_ai (bool)
		end

	minValue: INTEGER
		--Indicates the least possible value for a state in the problem.
		do
			Result := -200
		ensure
			non_void: Result /= Void
		end

	maxValue: INTEGER
		--Indicates the least possible value for a state in the problem.
		do
		Result := 200
		ensure
			non_void: Result /= Void
		end

	value(state: HX_L_IBOARD): INTEGER
		--Computes the value of a given state
		require
			non_void: state /= Void
		do
			if ended(state,true) and state.winner = state.player_2 then
				Result := minValue
			else
				if ended(state,true) and state.winner /= state.player_2 then
					Result := maxValue
				else
					Result := state.pieces_count (state.player_1) - state.pieces_count (state.player_2)
				end
			end
		ensure
			non_void: Result /= Void
		end

	is_min(state: HX_L_IBOARD): BOOLEAN
		do
			Result := state.active_player = state.player_2
		end

	is_max(state: HX_L_IBOARD): BOOLEAN
		do
			Result := NOT is_min(state)
		end
end
