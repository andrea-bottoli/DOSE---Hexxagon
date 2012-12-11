note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_RAILWAY

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
		end

	on_clean
			-- <Precursor>
		do
		end

feature -- Test routines

	 test_make_railway
		note
			testing: "covers/{G1_RAILWAY}.make_railway"
			testing: "user/G1"
		local
			railway_t : G1_RAILWAY
		do
			create railway_t.make_railway(15, "Pennsylvania")
			assert ("Number of railway is 0 ", railway_t.number_of_railways.is_equal(0))
		end

	test_set_railways
		note
			testing: "covers/{G1_RAILWAY}.set_railways"
			testing: "user/G1"
		local
			railway_t : G1_RAILWAY
		do
			create railway_t.make_railway(25, "Baltimore And Ohio (B&O)")
			railway_t.set_railways (5, "Reading")
			assert ("Number of railway is 0 ", railway_t.number_of_railways.is_equal(1))
		end
end


