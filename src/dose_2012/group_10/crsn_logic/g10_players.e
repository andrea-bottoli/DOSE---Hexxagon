note
	description: "Summary description for {PLAYERS}."
	author: "... , Angel Kyriako"
	date: "13/12/2012"
	revision: "3.0"

class
	G10_PLAYERS

create
	make
feature
	Players:ARRAYED_LIST[G10_PLAYER]
	CurrentPlayerId:INTEGER
feature
	----------------------------------------------
	--Methods for external use

	--gets next playerId from Players array
	generate_next_player():INTEGER
	do
		if CurrentPlayerId<Players.count then
			CurrentPlayerId:=CurrentPlayerId+1
		else
			CurrentPlayerId:=0
		end
		Result:=CurrentPlayerId
	end

	--sets <p> a current player
	set_current_player(p:G10_PLAYER)
	do
		--Old current player is not current at this moment
		Players.at (CurrentPlayerId).set_is_current (FALSE)
		--Now it's time for player <p>
		Players.search (p)
		CurrentPlayerId:=Players.index
		Players.item.set_is_current (TRUE)
		p.set_is_current (TRUE)
	end
	--previous method is not good actually
	--!!!!!for safety use please get and set methods with PlayerId parameter!!!!!
	set_current_player_by_id(id:INTEGER)
	require
		id<Players.count() and id>=0
	do
		--Old current player is not current at this moment
		Players.at (CurrentPlayerId).set_is_current (FALSE)
		--Now it's time for playerId <id>
		CurrentPlayerId:=id
		Players.at(id).set_is_current (TRUE)
	end

	--gets current playerId
	get_current_player_id():INTEGER
	do
		Result:=CurrentPlayerId
	end

	--gets current player
	--!!!!! use only if you need it! For safety use get_current_player_id() please !!!!!
	get_current_player():G10_PLAYER
	do
		Result:=Players.at (CurrentPlayerId)
	end

	--------------------------------------------------------------------
	--Methods to work with Players array
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


feature
	make
	do
		create Players.make (1)
	end

end
