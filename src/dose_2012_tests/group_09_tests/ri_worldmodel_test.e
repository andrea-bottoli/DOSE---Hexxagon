note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	RI_WORLDMODEL_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	test_invasion
		note
			testing : "Testing invasion"
		local
			test_model : RI_WORLDMODEL
			terrA : RI_TERRITORY
			terrB : RI_TERRITORY
			-- New test routine
		do
			create test_model.make
--			create terrA.make
--			create terrB.make
			test_model.invasion (terrA, terrB)
		end

	test_reinforcement
		note
			testing : "Testing reinforcement"
		local
			test_model : RI_WORLDMODEL
			terrA : RI_TERRITORY
			terrB : RI_TERRITORY
			count : INTEGER
			-- New test routine
		do
			create test_model.make
--			create terrA.make
--			create terrB.make
			test_model.reinforcement (terrA, terrB, count)
			assert("Territory A has at least 1",terrA.army_count > 0)
			assert("Territory B has at least 1",terrB.army_count > 0)
		end

		test_fortify
			note
				testing : "Testing fortify"
			local
				test_model : RI_WORLDMODEL
				terrA : RI_TERRITORY
				prev : INTEGER
				-- New test routine
			do
				create test_model.make
--				create terrA.make
				prev := terrA.army_count
				test_model.fortify (terrA)
				assert("Territory army +1",terrA.army_count = prev +1)

			end

end


