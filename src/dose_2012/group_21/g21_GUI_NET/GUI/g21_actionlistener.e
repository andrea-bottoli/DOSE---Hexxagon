note
	description: "Summary description for {G21_ACTIONLISTENER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	G21_ACTIONLISTENER

feature
	-- Informs component that a card have been played
	-- pre : card != null, 0 < position < 8
	playCard(card : g21_card; position : INTEGER) deferred
	ensure
		card /= Void
		position <= 8
		position >= 0
	end

	-- Informs component about the selected rule
	-- pre : rule > 0
	selectRule(rule : INTEGER) deferred
	ensure
		rule > 0
	end

	-- Informs component that a player wishes to start a new game
	-- pre : 0 < port < 65535
	newGame(port : INTEGER) deferred
	ensure
		port <= 65535
		port >= 0
	end

	-- informs component that a player wishes tojoin a game
	joinGame(IP : STRING; port : INTEGER) deferred
	ensure
		IP /= Void
		port <= 65535
		port >= 0
	end

	save() deferred end

end
