note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Christos Petropoulos"
	date: "20/11/12$"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_CP_INSECT

inherit
	EQA_TEST_SET

feature -- Test routines

	test_set_on_board
            -- Test routine for board function (setOnboard)
        note
            testing:  "covers/{CP_INSECT}.setOnboard"
            testing:  "user/CP"
            local
			insect:CP_INSECT
		do
			insect.setonboard
			assert ("The insect has been set",insect.onboard=TRUE)
		end

end


