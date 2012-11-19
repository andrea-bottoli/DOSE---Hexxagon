note
	description: "Test on XX_TIMER class"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.1"
	testing: "type/manual"

class
	TEST_XX_TIMER

inherit
	EQA_TEST_SET

feature -- Test routines

	--Test method make_timer
	test_xx_timer_make_timer
			--Test method make_timer
		note
			testing:  "covers/{XX_TIMER}.make_timer"
		do
			assert ("not_implemented", False)
		end

	--Test method start_timer
	test_xx_timer_start_timer
			--Test method start_timer
		note
			testing:  "covers/{XX_TIMER}.start_timer"
		do
			assert ("not_implemented", False)
		end

	--Test method stop_timer
	test_xx_timer_stop_timer
			--Test method stop_timer
		note
			testing:  "covers/{XX_TIMER}.stop_timer"
		do
			assert ("not_implemented", False)
		end

	--Test method reset_timer
	test_xx_timer_reset_timer
			--Test method reset_timer
		note
			testing:  "covers/{XX_TIMER}.reset_timer"
		do
			assert ("not_implemented", False)
		end

	--Test method timer_expired
	test_xx_timer_timer_expired
			--Test method timer_expired
		note
			testing:  "covers/{XX_TIMER}.timer_expired"
		do
			assert ("not_implemented", False)
		end
end


