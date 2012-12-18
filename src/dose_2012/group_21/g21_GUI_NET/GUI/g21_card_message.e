note
	description: "Summary description for {G21_CARD_MESSAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	G21_CARD_MESSAGE

feature
	sendCardPick(card : G21_CARD) deferred
	end

	sendCardSelect(card : G21_CARD) deferred
	end

	sendCardPlay(card : G21_CARD; row : INTEGER ; col : INTEGER) deferred
	end
end
