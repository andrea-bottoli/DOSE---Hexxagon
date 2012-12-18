note
	description: "Test not fully implemented due to lack of code fro G3_MODEL"
	author: "Steve Kateros"
	date: "Some Date"
	revision: "1.0"
	testing: "test"

class
	TEST_G3_LOGIC_MODEL_PALYER_ID

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

	CHECK_PLAYER_ID
		local
			playerId: G3_PLAYER_ID
			id:INTEGER
		do
			create playerId.make
			id:=1
			--assert ("Check player id", check if player id is valid)
		end

end


