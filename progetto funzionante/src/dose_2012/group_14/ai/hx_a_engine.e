note
	description: "Summary description for {HX_A_ENGINE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_A_ENGINE
create
	make

feature -- initialization

	problem: HX_A_PROBLEM
	max_depth: INTEGER

	make(prob: HX_A_PROBLEM;depth: INTEGER)
	--Constructor for class HX_A_ENGINE
	require
		non_void: prob /= Void and depth /= Void
	do
	ensure
		seted: problem = prob and max_depth = depth
	end

feature --set

	set_max_depth(depth: INTEGER)
	require
		non_void: depth /= Void
	do
	ensure
		seted: max_depth = depth
	end

	set_problem(prob: HX_A_PROBLEM)
	require
		non_void: prob /= Void
	do
	ensure
		seted: problem = prob
	end

feature--get

	get_max_depth: INTEGER
	do
	ensure
		Result = max_depth
	end

	get_problem: HX_A_PROBLEM
	do
	ensure
		Result = problem
	end


feature--

	compute_value(state: HX_L_IBOARD):INTEGER
	--Starts the search in order to compute a value for a state.
	require
		non_void: state /= Void
	do
	ensure
		non_void: Result /= Void
	end

	compute_successor(state: HX_L_IBOARD): HX_L_IBOARD
	--Starts the search in order to compute a most promising successor for a state.
	require
		non_void: state /= Void
	do
	ensure
		non_void: Result /= Void
	end

	minMaxAB(state: HX_L_IBOARD;alfa: INTEGER;beta: INTEGER;md: INTEGER):INTEGER
	require
		non_void: state /= Void
	do
	ensure
		non_void: Result /= Void
	end


end
