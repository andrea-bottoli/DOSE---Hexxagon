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

	getSuccessor(state: HX_L_IBOARD): LIST[HX_L_IBOARD]
		--Returns the list of successor states for a given state
		require
			non_void: state /= Void
		do
		ensure
			non_void: Result /= Void
		end

	ended(state: HX_L_IBOARD): BOOLEAN
		--Returns if the board is in an ended state
		require
			non_void: state /= Void
		do
		ensure
			non_void: Result = state.is_end
		end

	minValue: INTEGER
		--Indicates the least possible value for a state in the problem.
		do
		ensure
			non_void: Result /= Void
		end

	maxValue: INTEGER
		--Indicates the least possible value for a state in the problem.
		do
		ensure
			non_void: Result /= Void
		end

	value(state: HX_L_IBOARD): INTEGER
		--Computes the value of a given state
		require
			non_void: state /= Void
		do
		ensure
			non_void: Result /= Void
		end
end
