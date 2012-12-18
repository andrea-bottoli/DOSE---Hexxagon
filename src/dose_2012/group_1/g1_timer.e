note
	description: "Summary description for {G1_TIMER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G1_TIMER
inherit
	THREAD
	rename
		make as make_thread
	end

create
	make
feature {NONE}
	l_seconds:INTEGER
feature
	make(seconds:INTEGER)
	do
		make_thread
		l_seconds := seconds
	end

	execute
	local
		l_time:INTEGER
	do
		from
			l_time:=l_seconds

		until
			l_time=-1
		loop
			sleep(1000000000)
			l_time:=l_time-1
		end
	end
end

