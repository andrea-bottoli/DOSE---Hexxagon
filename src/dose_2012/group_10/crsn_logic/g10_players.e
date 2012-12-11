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
	Players:ARRAYED_LIST[G10_PLAYER]
feature
	GenerateNextPlayer():INTEGER
	do  end

	GetCurrentPlayer():INTEGER
	do  end

	Add_Player(Player:G10_PLAYER)
	do
		Players.extend(Player)
	end

	set_players(p:ARRAYED_LIST[G10_PLAYER])
	do
		Players:=p
	end

	get_players():ARRAYED_LIST[G10_PLAYER]
	do
		Result := Players
	end

-- constructors.
feature
	make
	do
		create Players.make (0)
	end
end
