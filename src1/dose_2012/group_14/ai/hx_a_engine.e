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
		max_depth := depth
		problem := prob
	ensure
		seted: problem = prob and max_depth = depth
	end

feature --set

	set_max_depth(depth: INTEGER)
	require
		non_void: depth /= Void
	do
		max_depth := depth
	ensure
		seted: max_depth = depth
	end

	set_problem(prob: HX_A_PROBLEM)
	require
		non_void: prob /= Void
	do
		problem := prob
	ensure
		seted: problem = prob
	end

feature--get

	get_max_depth: INTEGER
	do
		Result := max_depth
	ensure
		Result = max_depth
	end

	get_problem: HX_A_PROBLEM
	do
		Result := problem
	ensure
		Result = problem
	end


feature--

	compute_value(state: HX_L_IBOARD):INTEGER
	--Starts the search in order to compute a value for a state.
	require
		non_void: state /= Void
	do
		Result := minMaxAB(state,problem.minvalue,problem.maxvalue,max_Depth)
	ensure
		non_void: Result /= Void
	end

	compute_successor(state: HX_L_IBOARD): HX_L_IBOARD
	--Starts the search in order to compute a most promising successor for a state.
	require
		non_void: state /= Void
	local
		succesors: LINKED_LIST[HX_L_IBOARD]
		min_state: HX_L_IBOARD
		aux: INTEGER
		aux2: INTEGER
		i: INTEGER
		j: INTEGER
		rand: RANDOM
		time: TIME
		time2: TIME
		difference: INTEGER
	do
		create succesors.make
		create time.make_now_utc
		create rand.make
		rand.set_seed (time.milli_second)
		succesors := problem.getsuccessor (state)
		j := (rand.i_th (1) \\ succesors.count) + 1
		succesors.go_i_th (j)
		min_state := succesors.item
		succesors.remove
		aux := compute_value(min_state)
		aux2 := 0
		from
			i := 2
		until
			succesors.is_empty
		loop
			j := (rand.i_th (i) \\ succesors.count) + 1
			succesors.go_i_th (j)
			aux2 := compute_value(succesors.item)
			if aux > aux2 then
				min_state := succesors.item
				aux := aux2
			end
			succesors.remove
			i := i + 1
		end

		create time2.make_now_utc
		difference := time2.seconds -time.seconds
		print("    Time needed to compute value:" + difference.out + "%N")

		Result := min_state
	ensure
		non_void: Result /= Void
	end

	minMaxAB(state: HX_L_IBOARD;alfa: INTEGER;beta: INTEGER;md: INTEGER):INTEGER
	require
		non_void: state /= Void
	local
		succesors: LIST[HX_L_IBOARD]
		i: INTEGER
		j: INTEGER
		a: INTEGER
		b: INTEGER
		count: INTEGER
	do
		if (md = 0 or problem.ended (state,md = 0)) then
			Result := problem.value (state)
		else
			succesors := problem.getsuccessor (state)
			count := succesors.count
			a := alfa
			b := beta
			from
				i := 1
			until
				i > count or a >= b
			loop
				j := minMaxAB(succesors.at (i),a,b,md-1)
				if problem.is_max (state) and j > a then
					a := j
				else if problem.is_min (state) and j < b then
					b := j
				end
				end
				i := i + 1
			end
			if problem.is_max (state) then
				Result := a
			else
				Result := b
			end
		end
	ensure
		non_void: Result /= Void
	end


end
