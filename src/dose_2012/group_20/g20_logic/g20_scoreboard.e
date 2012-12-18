note
	description: "Summary description for {G20_SCOREBOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_SCOREBOARD

	create
		make

	feature{NONE}
		board: ARRAY2[INTEGER]
		playersCount : INTEGER

	feature{ANY}
		make(countOfPlayers: INTEGER)
		require
			2 <= countOfPlayers and countOfPlayers <= 4
		do
			playersCount := countOfPlayers

			create board.make_filled(9, 4, 6)
		end

		getScore(player: INTEGER; color: INTEGER): INTEGER
		require
			playerIsCorrect:1<=player and player<=playersCount
			colorIsCorrect: 1 <= color and color <= 6
 		do
			Result := board.item(player, color)
		end

		increaseScore(player: INTEGER; color: G20_COLOR; points : INTEGER)
		require
			pointsAreNonNegative: points>=0
			playerIsCorrect:1<=player and player<=playersCount
			colorIsCorrect: not color.IsEmpty
		local
			prevPoints : INTEGER
			newPoints: INTEGER
		do
			prevPoints := board.item(player, color.GetColor)
			newPoints := prevPoints + points
			if newPoints>24
			then newPoints:=24
			end
			board.put(newPoints, player, color.GetColor)
		end
end
