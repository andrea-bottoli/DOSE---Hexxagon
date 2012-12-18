note
	description: "Summary description for {PLAYER}."
	author: "... , Angel Kyriako"
	date: "13/12/2012"
	revision: "3.0"

class
	G10_PLAYER

create
	make

feature
	Name:STRING
	Score:INTEGER
	SpareChipsAmount:INTEGER
	IsCurrent:BOOLEAN

feature -- constructors.  -- we may need to add here port and ip strings
	make
	do
		Name := ""
		Score := 0
		SpareChipsAmount := 10
		IsCurrent:=FALSE
	end

feature
	--gets IsCurrent class member
	get_is_current():BOOLEAN
	do
		Result:=IsCurrent
	end
	--sets IsCurrent class member
	set_is_current(NewIsCurrent:BOOLEAN)
	do
		IsCurrent:=NewIsCurrent
	end

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

