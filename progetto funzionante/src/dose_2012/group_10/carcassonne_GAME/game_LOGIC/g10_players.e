note
	description: "Summary description for {PLAYERS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_PLAYERS

create
	make
feature
	Players:ARRAY[G10_PLAYER]
feature
	GenerateNextPlayer():INTEGER
	do  end
	GetCurrentPlayer():INTEGER
	do  end
	SetPlayer(Player:G10_PLAYER):INTEGER
	do  end
-- constructors.
feature
	make 
	do
	end
end
