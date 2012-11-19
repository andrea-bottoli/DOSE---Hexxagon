note
	description: "Represents/Simulates a timer about the available time that player has to make a move."
	author: "Nikolaos Sourligas, Theocharis Vavouris"
	date: "$Date$"
	revision: "$Revision$"

class
	XX_TIMER

create
	make_timer

feature {NONE}

	game_timer: TIME

feature {ANY}

	make_timer()	-- Constructor of object XX_TIMER
	do

	ensure game_timer /= Void
	end

	start_timer()	-- Start the timer to run about a player
	do

	ensure game_timer /= Void
	end

	stop_timer()	-- Stop the timer that running about a player
	do

	ensure game_timer /= Void
	end

	reset_timer()	-- Reset timer about a player
	do

	ensure game_timer /= Void
	end

	timer_expired() : BOOLEAN	-- Return true if the timer has expired
	do

	ensure game_timer /= Void and ( Result = True xor Result = False)
	end


end
