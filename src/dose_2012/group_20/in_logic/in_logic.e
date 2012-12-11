note
	description:"Logic entity"

class IN_LOGIC

feature {NONE}
	fieldInitiatied:BOOLEAN
	playersInitiated:BOOLEAN
feature
	InitPlayers (playersAmount,ourPlayerNum: INTEGER)
		--Initiating list of players
		require
			2 <= playersAmount and playersAmount<=4
			1 <= ourPlayerNum and ourPlayerNum<=playersAmount
		do
		ensure
			playersInitiated = True
		end --InitPlayers
--	MakeMove(tile:TTile; position: TPos; roration:INTEGER)
--		-- Make a step
--		require
--  		tile /= Void
--  		rotation > 0  and rotation <= 6
--  		(position.x > 0 and position.x < XField) and (position.y > 0 and position.y <YField)
--  		fieldInitiatied = true
--  		playersInitiated = true
--  		do
--  		end --MakeMove
end --IN_LOGIC
