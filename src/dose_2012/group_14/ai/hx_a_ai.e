note
	description: "Summary description for {HX_A_AI}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_A_AI

create
	make

feature --intialization

	engine: HX_A_ENGINE
	problem: HX_A_PROBLEM

	make(depth: INTEGER)
	--Constructor for class HX_A_AI
	do
		create problem.make
		create engine.make (problem, depth)
	ensure
		non_voide: engine /= Void
	end

feature

	getMovement(board: HX_L_IBOARD): HX_L_IMOVE
	--returnrs the movement the AI will do in a given state
	require
		non_void: board /= Void
	local
		time: TIME
		delay: INTEGER
		answer: HX_L_IMOVE
	do
		--create time.make_now_utc
		--delay := time.compact_time + 2
		answer := engine.compute_successor (board).last_move
		--from
		--until
		--	time.compact_time > delay
		--loop
		--  create time.make_now_utc
		--end
		Result := answer
	ensure
		non_void: Result /= Void
	end
end
