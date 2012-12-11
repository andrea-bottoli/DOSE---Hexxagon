note
	description: "The main class for all the cards of the game "
	author: "Team Crete12 of Group4"
	date:"12/11/2012"
	revision: "tsampis"

deferred class
	G4_CARDS

feature --Atrributes

	Symbols: ARRAY [STRING]
	do
		--Symbols.make(0, 3)
		Symbols.enter("Spades", 0)
		Symbols.enter("Hearts", 1)
		Symbols.enter("Diamonds", 2)
		Symbols.enter("Clubs", 3)
	end

	CardNum: INTEGER  --Number of the cards
	CardSymbol: STRING  --Symbol of the cards
	Name: STRING --Name of the card

feature --Constructor of the card

	construct(nam:STRING; symbol:STRING; n:INTEGER; distance: INTEGER)
	do
		set_Name(nam)
		set_Symbol(symbol)
		set_Number(n)
	end

feature --Setters and Getters of Name

	set_Name(nam : STRING) --Set name of the card
	do
		Name := nam
	end

	getName() : STRING --Get name of the card
	do
		Result := Name
	end

feature --Setters and Getters of Number

	set_Number (n: INTEGER) --Set number of the card
		require
			(n>=2)
			(n<=13)
		do
			CardNum := n
		ensure
			CardNum = n
		end

	get_Number:INTEGER --Get number of the card
	do
		Result := CardNum
	end

feature --Setters and Getters of Symbol

	set_Symbol(s:STRING) --Set symbol of the card
		require
			(s.same_string ("Spades"))
			(s.same_string ("Clubs"))
			(s.same_string ("Diamonds"))
			(s.same_string ("Hearts"))
		do
			CardSymbol := s
		ensure
			CardSymbol.same_string(s)
		end

	get_Symbol:STRING--Get symbol of the card
	do
		Result := CardSymbol
	end

feature

	equals(a_card : G4_CARDS) : BOOLEAN
	do
		Result := (a_card.get_symbol.is_equal (a_card.get_symbol) )and (a_card.get_number = a_card.get_number)
	end
end
