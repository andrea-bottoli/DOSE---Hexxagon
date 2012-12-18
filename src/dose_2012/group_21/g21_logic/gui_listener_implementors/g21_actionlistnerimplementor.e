note
	description: "Summary description for {G21_ACTIONLISTNERIMPLEMENTOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_ACTIONLISTNERIMPLEMENTOR

	inherit
		G21_ACTIONLISTENER

		redefine playCard,selectRule,newGame,save,joinGame end

	feature

			playCard(card : g21_card; row : INTEGER ; col : INTEGER)
			do
--				board.makeplay_card (row, col, card)
			end
			selectRule(rule : STRING)
			do
				board.activerule (rule)
			end
			newGame(startDefaultCards:BOOLEAN;difficulty:INTEGER_32; port:INTEGER)
			do
				create board.make (startdefaultcards, difficulty)

			end
			save
			do

			end
			joinGame(IP : STRING; port : INTEGER)
			do
				create net.newclient (IP, port)
			end

end
