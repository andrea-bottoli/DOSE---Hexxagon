class 
	G19_PLAYER_INFO_MOCK

create
	make

inherit
	G19_PLAYER_INFO

feature{NONE}

	current_nickname: STRING
	current_age: INTEGER	

feature

	make()
		do
		end

	set_nickname(nickname: STRING)
		do
			current_nickname := nickname
		end

	set_age(age: INTEGER)
		do
			current_age := age
		end

	get_nickname(): STRING
		do
			result := current_nickname
		end

	get_age(): INTEGER
		do
			result := current_age
		end

	is_equal(): BOOLEAN
		do
			result := false
		end

	is_less(other like current): BOOLEAN
		do
			result := true
		end

end