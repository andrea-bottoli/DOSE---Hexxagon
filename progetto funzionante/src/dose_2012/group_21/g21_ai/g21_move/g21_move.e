note
	description: "Summary description for {G21_MOVE}."
	author: "Emanuele Del Sozzo"
	date: "17/11/2012"
	revision: "1.6"

class
	G21_MOVE -- This class provides an object that contains a card and a position. The AI uses this class to create a single object that will be passed to the Logic to perform the AI move

create
	make

feature{G21_MOVE, G21_AI, G21_BOARD, G21_FAKE_BOARD} -- Attributes

	card: G21_CARD -- a COPY of the card received during the creation of this object
	position: G21_POINT -- an object that indicates where the card has to set

feature{NONE} -- Creation	

	make (new_card: G21_CARD; new_position: G21_POINT) -- It receives the card and the position selected by the AI and creates an object that contains both

		require

			new_card_valid: new_card/=void
			new_position_valid: new_position/=void and then new_position.x>=1 and then new_position.x<=3 and then new_position.y>=1 and then new_position.y<=3

		do

		set_card(new_card)
		set_position(new_position)

		ensure

			new_card_not_changed: new_card=old new_card
			new_position_not_changed: new_position=old new_position and then new_position.x=old new_position.x and then new_position.y=old new_position.y
			card_set: card=new_card
			position_set: position.x=new_position.x and then position.y=new_position.y

		end

feature{G21_AI, G21_MOVE} -- Setter Procedures

	set_card (new_card: G21_CARD) -- it sets the variable "card" to the parameter "new_card" value

		require
			new_card_valid: new_card/=void

		do

			-- create card.make(new_card.top, new_card.left, new_card.right, new_card.bottom, new_card.element, new_card.cardName

		ensure

			card_set: card=new_card
			new_card_not_changed: new_card=old new_card

		end

	set_position (new_position: G21_POINT) -- it sets the variable "position" to the parameter "new_position" value

		require

			new_position_valid: new_position/=void and then new_position.x>=1 and then new_position.x<=3 and then new_position.y>=1 and then new_position.y<=3

		do

			create position.make(new_position.x, new_position.y)

		ensure

			position_set: position.x=new_position.x and then position.y=new_position.y
			new_position_not_changed: new_position=old new_position and then new_position.x=old new_position.x and then new_position.y=old new_position.y

		end

invariant

	card_valid: card/=void
	position_valid: position/=void and then position.x>=1 and then position.x<=3 and then position.y>=1 and then position.y<=3

end
