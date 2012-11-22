note
	description: "Test not fully implemented due to lack of code fro G3_MODEL"
	author: "Steve Kateros"
	date: "Some Date"
	revision: "1.0"
	testing: "test"

class
	TEST_G3_LOGIC_MODEL_SCORE

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- This is called before the tests begin
		do
		end

	on_clean
			-- This is called after the tests begin
		do
		end

feature -- Test routines

	CHECK_SCORE
		local
			score:G3_SCORE
			points: INTEGER
		do
			-- Not well written the below code, may generate error. Just an idea of Test for score
			-- % is mod. Means that the score must always be multiple of 5
			create score.make
			points:=40
			--update score with points
			--assert ("check score", score.team1==40 and score.team2==60)
			--assert("check score",(score.team1)+(score.team2)%5==0)
		end

end


