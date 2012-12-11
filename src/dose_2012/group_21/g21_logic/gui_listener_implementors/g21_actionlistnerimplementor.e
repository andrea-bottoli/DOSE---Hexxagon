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
			playCard(card : G21_CARD; position : INTEGER)
			do

			end
			selectRule(rule : INTEGER)
			do

			end
			newGame(port : INTEGER)
			do

			end
			save
			do

			end
			joinGame(IP : STRING; port : INTEGER)
			do

			end

end
