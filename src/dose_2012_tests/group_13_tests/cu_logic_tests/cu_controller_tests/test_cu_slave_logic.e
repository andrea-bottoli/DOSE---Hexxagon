note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_SLAVE_LOGIC class of the Cluedo game.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_SLAVE_LOGIC

inherit
	EQA_TEST_SET

feature

	slave: CU_SLAVE_LOGIC

feature

	test_make
			-- New test routine
		note
			testing: "covers/{CU_SLAVE_LOGIC}.make"
			testing: "user/CU"
		local
			slave_aux: CU_SLAVE_LOGIC
		do
			create slave.make
			create slave_aux.make
			assert ("Instances different", slave = slave_aux)
		end

end -- class TEST_CU_SLAVE_LOGIC
