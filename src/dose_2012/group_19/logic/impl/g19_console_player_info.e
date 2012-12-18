class
	G19_CONSOLE_PLAYER_INFO

inherit
	G19_PLAYER_INFO
		redefine
			is_equal
		end

create
	make

feature{NONE}

	current_nickname: STRING
	current_age: INTEGER

feature

	make()
		do
			print("Enter nickname: ")
			io.read_line
			current_nickname := io.last_string + ""

			print("Enter age: ")
			io.read_integer_32
			current_age := io.last_integer_32
		end

	get_nickname(): STRING
		do
			result := current_nickname
		end

	get_age(): INTEGER
		do
			result := current_age
		end

	is_less alias "<" (other: like Current): BOOLEAN
		do
			result := current_age > other.get_age()
		end

	is_equal (other: like Current): BOOLEAN
		do
			result := current_age = other.get_age()
		end

end
