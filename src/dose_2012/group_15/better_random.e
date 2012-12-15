note
	description: "Summary description for {BETTER_RANDOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BETTER_RANDOM

inherit
	RANDOM
	rename make as makebad
	export {NONE} makebad
	end

create
	make

feature -- Constructor

	make()
 local
      l_time: TIME
      l_seed: INTEGER
    do
      makebad()

      -- Code snippet taken from: http://community.eiffel.com/room/article/random_numbers

      -- This computes milliseconds since midnight.
      -- Milliseconds since 1970 would be even better.
      create l_time.make_now
      l_seed := l_time.hour
      l_seed := l_seed * 60 + l_time.minute
      l_seed := l_seed * 60 + l_time.second
      l_seed := l_seed * 1000 + l_time.milli_second


      set_seed (l_seed)
    end

end
