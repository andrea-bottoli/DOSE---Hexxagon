note
	description: "Summary description for {PLAYERS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_PLAYERS

create
	make, make_players
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
		create Players.make (1)
	end

	make_players(a_player_name: STRING player_num: INTEGER)
	local
		first_player: G10_PLAYER
	do
		create first_player.make_with_name(a_player_name)--create the first player

		create Players.make (player_num)--create players array and add the first player
		Add_Player(first_player)
	end

end
