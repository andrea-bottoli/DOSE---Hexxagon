note
	description: "[Tests for Logic component of Ingenious game]"
	author: "Group20/crete4"
	date: "21/11/2012"
	revision: "1.0"
	testing:"type/manual"
class
	G20_LOGIC_TEST
inherit
	EQA_TEST_SET
	redefine
		on_prepare
		on_clean
	end

create
	test_g20_logic_validate

feature{NONE}
	on_prepare
		do
			--assert("not implemented", False)
		end

	on_clean
		do
			--assert("not implemented", False)
		end

feature -- test routines

	test_g20_logic_validate
			--Class "Constructor"
		do
			--assert("not implemented", False)
		end

		test_move_initialization
			--test routine that checks for the validity of move initialization
			local
				gameMove:G20_MOVEMENT
			do
				create gameMove
					--checking that every new move member is correctly initialized
					--we consider that tableX, tableY, playerId member variables
					--and their accessors are implemented in G20_MOVEMENT class.
--				assert("valid move in X axis",gameMove.getTableX >= 0)
--				assert("valid move in Y axis",gameMove.getTableY >= 0)
--				assert("valid player id",gameMove.getPlayerId > 0)
--this getters of the main table haven't implemented yet
			end

end
