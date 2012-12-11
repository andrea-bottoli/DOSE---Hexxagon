note
	description: "Test on XX_TIMER class"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.2"
	testing: "type/manual"

class
	TEST_XX_TIMER

inherit
	EQA_TEST_SET

feature -- Test routines

	--Test method make_timer
	test_xx_timer_make_timer
		note
			testing:  "covers/{XX_TIMER}.make_timer"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_timer: XX_TIMER
		do
			create l_timer.make_timer
			assert ("Timer not void",l_timer/=Void)
		end

	--Test method start_timer
	test_xx_timer_start_timer
		note
			testing:  "covers/{XX_TIMER}.start_timer"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_timer: XX_TIMER
		do
			create l_timer.make_timer
			l_timer.start_timer
			assert("Timer is started",l_timer.get_timer_status=60)

		end

	--Test method stop_timer
	test_xx_timer_stop_timer
		note
			testing:  "covers/{XX_TIMER}.stop_timer"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_timer: XX_TIMER
		do
			create l_timer.make_timer
			l_timer.start_timer
			l_timer.stop_timer
			assert ("Timer is stopped", l_timer.timer_expired=FALSE)
		end

	--Test method reset_timer
	test_xx_timer_reset_timer
		note
			testing:  "covers/{XX_TIMER}.reset_timer"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_timer: XX_TIMER
		do
			create l_timer.make_timer
			l_timer.start_timer
			l_timer.reset_timer
			assert ("Timer is resetted", l_timer.get_timer_status=0)
		end

	--Test method timer_expired
	test_xx_timer_timer_expired
		note
			testing:  "covers/{XX_TIMER}.timer_expired"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_timer: XX_TIMER
		do
			create l_timer.make_timer
			l_timer.start_timer
			assert ("Timer is expired", l_timer.timer_expired)
		end
end
