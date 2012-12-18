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
	destroyed : BOOLEAN

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

	getName : STRING --Get name of the card
	do
		Result := Name
	end

feature --Setters and Getters of Number

	set_Number (n: INTEGER) --Set number of the card
		require
			(n>=2) and (n<=14)
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
			(s.is_equal ("Spades")) or
			(s.is_equal ("Clubs")) or
			(s.is_equal ("Diamonds")) or
			(s.is_equal ("Hearts"))
		do
			CardSymbol := s
		ensure
			CardSymbol.is_equal(s)
		end

	get_Symbol:STRING--Get symbol of the card
	do
		Result := CardSymbol
	end

feature

	equals(a_card : G4_CARDS; another_card: G4_CARDS) : BOOLEAN
	do
		Result := a_card.getname.is_equal (another_card.getname)
	end

	set_destroy(flag: BOOLEAN) --If a card is used (use it for the Dynamite)
	do
		destroyed := flag
	end

	is_destroyed : BOOLEAN
	do
		Result := destroyed
	end

feature
	action(a_Player_array : ARRAYED_LIST[G4_PLAYER];a_player_id: INTEGER;a_player_target: INTEGER;Draw_Pile: G4_DRAW_PILE;DiscardPile : G4_DISCARD_PILE) --Set the action move of the card
	do end
end
