note
	description: "Summary description for {B8_TIMER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	B8_TIMER
inherit
	THREAD
		rename
			make as thread_make
		end
create
	make
feature
	make(a_window:B8_3RD_LAYER_WINDOW)
		do
			thread_make
			window:=a_window

		end
		execute
		local
			do
				from
					l_time:=120

				until
					l_time=-1
				loop
					window.set_timer(l_time)
					sleep(1000000000)--sleep 1 sec
					l_time:=l_time-1
					if l_time=-1 then
						window.abort_game
					end
				end
			end
feature
	window:B8_3RD_LAYER_WINDOW
	l_time:INTEGER

	reset_timer
		do
			l_time:=120
		end
end
