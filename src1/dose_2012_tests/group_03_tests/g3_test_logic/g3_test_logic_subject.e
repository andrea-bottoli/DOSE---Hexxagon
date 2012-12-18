note
	description: "Test for SUBJECT"
	author: "Lydatakis Georgiou Kateros"
	date: "$Date$"
	revision: "$0.1$"
	testing: "type/manual"

class
	G3_TEST_LOGIC_SUBJECT

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

	test_g3_subject
			-- New test routine
		note
			testing:  "covers/{G3_ABSTRACT_SUBJECT}"
		local sub:G3_ABSTRACT_SUBJECT
			  observ:G3_ABSTRACT_OBSERVER
		do
			create sub.make_subject
		--	create observ
			sub.subscribe (observ)
			assert("Subject check",sub.is_observed_by (observ))
			sub.update
		--	assert("Observer is updated by subject",observ is update)
		end

end


