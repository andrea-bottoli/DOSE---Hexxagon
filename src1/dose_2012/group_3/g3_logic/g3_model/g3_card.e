note
	description: "Summary description for {G3_CARD}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_CARD

inherit
	ANY
		redefine
			is_equal
	end

create
	make

feature


	make (number_card: STRING ; kind_card: STRING; special_card: BOOLEAN; point_card : INTEGER;value_card : REAL )
			-- Initialize card whit parameters
		require
			valid_number: number_card.is_equal ("A") or  number_card.is_equal ("2") or  number_card.is_equal ("3") or number_card.is_equal ("4") or
						  number_card.is_equal ("5") or  number_card.is_equal ("6") or  number_card.is_equal ("7") or number_card.is_equal ("8") or
						  number_card.is_equal ("9") or  number_card.is_equal ("10") or  number_card.is_equal ("J") or  number_card.is_equal ("Q") or
						  number_card.is_equal ("K") or  number_card.is_equal ("")
			valid_kind_card: kind_card.is_equal ("BLACK") or kind_card.is_equal ("RED") or kind_card.is_equal ("BLUE") or kind_card.is_equal ("GREEN") or
							 kind_card.is_equal ("THE MAHJONGG") or kind_card.is_equal ("THE DOG") or kind_card.is_equal ("THE DRAGON") or
							 kind_card.is_equal ("THE PHOENIX")
		do
			number := number_card
			kind := kind_card
			special := special_card
			point := point_card
			value := value_card
		ensure
			number = number_card
			kind = kind_card
			special = special_card
			point = point_card
			value >= 1 and value <= 15
		end


	kills(card : G3_CARD) : BOOLEAN
		require
			valid_arg: card /= Void
		do
			Result := value > card.value
		end

	is_the_dog:BOOLEAN
		do
			Result:=kind.is_equal ("THE DOG")
		end

	is_the_dragon:BOOLEAN
		do
			Result:=kind.is_equal ("THE DRAGON")
		end

	is_the_mahjongg: BOOLEAN
		do
			Result:=kind.is_equal ("THE MAHJONGG")
		end

	is_the_phoenix: BOOLEAN
		do
			Result:=kind.is_equal ("THE PHOENIX")
		end

	has_the_same_number (card : G3_CARD) : BOOLEAN
		require
			valid_arg: card /= Void
		do
			Result:= number.is_equal (card.number)
		end


	is_equal(card_:G3_CARD):BOOLEAN
		do
			Result:= number.is_equal (card_.number) and kind.is_equal (card_.kind) and special=card_.special and point=card_.point and value=card_.value
		end

	set_value(value_ : REAL)
			-- Sets the value of the card. Only it has to be used with the card 'phoenix'.
		require
			valid_arg :(value_ >= 1.5) and (value_ <= 14.5)
			valid_card : kind.is_equal ("THE PHOENIX")
		do
			value := value_
		end

	set_number(number_ : STRING)
		require
			valid_id: number /= Void
		do
			number:= number_
		end


feature
	number : STRING
	kind : STRING
	special : BOOLEAN
	point : INTEGER
		-- It associates points with each card to calculate the score.
	value : REAL
		-- It associates a value for each card to see whom can kill.
		-- Mah Jong = 1, 2 = 2, 3 = 3, ... , 10 = 10, J = 11, Q = 12, K = 13, As = 14, Dragon = 15. And Fenix can vary.

invariant
	correct_card:((not(number.is_equal ("")) and (not special) and (kind.is_equal ("RED") or kind.is_equal ("BLUE") or kind.is_equal ("GREEN") or kind.is_equal ("BLACK"))) or
				 ((special) and (number.is_equal ("")) and (kind.is_equal ("THE DOG") or
				    kind.is_equal ("THE DRAGON") or kind.is_equal ("THE MAHJONGG") or kind.is_equal ("THE PHOENIX")))) and value >= 1 and value <= 15
end
