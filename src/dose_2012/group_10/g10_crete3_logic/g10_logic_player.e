note
	description: "Summary description for {PLAYER}."
	author: "..., Angel Kyriako"
	date: "13/12/2012"
	revision: "3.0"

class
	G10_LOGIC_PLAYER

create
	make_with_name

feature
	id: INTEGER
	name:STRING
	Score:INTEGER
	followers_left:INTEGER

feature{G10_LOGIC_GAME_MAIN} -- constructors

	make_with_name(some_name : STRING an_id: INTEGER)
	do
		id := an_id
		name := some_name
		score := 0
		followers_left := 10
	end

feature{G10_LOGIC_GAME_MAIN}

	raise_followers_left
	require
         SpareChipsAmount_not_max: followers_left <10 and followers_left >=0
	do
		followers_left:= followers_left+1
	end

	decrease_followers_left
	require
         SpareChipsAmount_not_min: followers_left <=10 and followers_left >0
    do
		followers_left:= followers_left-1
	end

	set_score(TheScore:INTEGER)
	do
		Score:=TheScore
	end

feature{G10_LOGIC_GAME_MAIN, G10_LOBBY_USER} -- accessors

	get_id :INTEGER
	do
		Result := id
	end

	get_name:STRING
	do
		Result := Name
	end

	get_score:INTEGER
	do
		Result:=Score
	end

	get_followers_left:INTEGER
	do
		Result:=followers_left
	end

end

