note
	description: "Summary description for {G21_NEXT_RANDOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_NEXT_RANDOM
create
	make
feature{NONE}
		input:PLAIN_TEXT_FILE
		seed:INTEGER
		r:RANDOM
feature
	make
	do
		create r.make
		create input.make_open_read_write ("RANDOM.txt")
		r.set_seed (5)
	end
	nextNum(n:INTEGER):INTEGER
	do

			--input.read_integer
			--seed := input.last_integer
			--print("seeeeed")
			--print(seed+1)
			--print("%N")
			--input.start
			--r.set_seed (seed.abs + 1)
			r.forth

			--input.put_integer ((r.item\\5) + 1)
			Result := (r.item \\ n) + 1
	end


end
