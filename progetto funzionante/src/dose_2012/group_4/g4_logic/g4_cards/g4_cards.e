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
		Symbols.make(0, 3)
		Symbols.enter("Spades", 0)
		Symbols.enter("Hearts", 1)
		Symbols.enter("Diamonds", 2)
		Symbols.enter("Clubs", 3)
	end

	CardNum: INTEGER  --Number of the cards
	CardSymbol: STRING  --Symbol of the cards
	Name: STRING --Name of the card

feature --Setters and Getters of Name

	set_Name(nam : STRING) --Set name of the card
	do end

	getName() : STRING --Get name of the card
	do end

feature --Setters and Getters of Number

	set_Number (n: INTEGER) --Set number of the card
		require
			(n>=2)
			(n<=13)
		do

		ensure
			CardNum = n
		end
	get_Number() :INTEGER --Get number of the card
	do end

feature --Setters and Getters of Symbol

	set_Symbol(s:STRING) --Set symbol of the card
		require
			(s.same_string ("Spades"))
			(s.same_string ("Clubs"))
			(s.same_string ("Diamonds"))
			(s.same_string ("Hearts"))
		do
		ensure then
			CardSymbol.same_string(s)
		end

	get_Symbol() :STRING--Get symbol of the card
	do end
end
