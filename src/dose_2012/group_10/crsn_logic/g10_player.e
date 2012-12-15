note
	description: "Summary description for {PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_PLAYER

create
	make, make_with_name

feature
	Name:STRING
	Score:INTEGER
	SpareChipsAmount:INTEGER

feature -- constructors.  -- we may need to add here port and ip strings
	make
	do
		Name := ""
		Score := 0
		SpareChipsAmount := 10
	end

	make_with_name(some_name : STRING)
	do
		Name := some_name
		Score := 0
		SpareChipsAmount := 10
	end

feature

	Add_SpareChipsAmount()
	require
         SpareChipsAmount_not_max: SpareChipsAmount <10 and SpareChipsAmount >=0
	do
		SpareChipsAmount:= SpareChipsAmount+1
	end
	Dec_SpareChipsAmount()
	require
         SpareChipsAmount_not_min: SpareChipsAmount <=10 and SpareChipsAmount >0
    do
		SpareChipsAmount:= SpareChipsAmount-1
	end

	get_name():STRING
	do
		Result := Name
	end

	set_name(TheName:STRING)
	do
		Name := TheName
	end

	get_score():INTEGER
	do
		Result:=Score
	end

	set_score(TheScore:INTEGER)
	do
		Score:=TheScore
	end

	get_spareChipsAmount():INTEGER
	do
		Result:=spareChipsAmount
	end

	set_spareChipsAmount(ThespareChipsAmount:INTEGER)
	do
		spareChipsAmount:=ThespareChipsAmount
	end
end

