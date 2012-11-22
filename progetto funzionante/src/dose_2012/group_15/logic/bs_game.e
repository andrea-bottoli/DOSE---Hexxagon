note
	description: "Summary description for {BS_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_GAME

create
	make

feature

	make
		--initialize instance
	do
		create players.make
		has_started := false
	end

	add_player( new_player: BS_PLAYER ) : BOOLEAN
		--add a player to the game
		--returns false if game is full	
	require
		game_not_started: not has_started
	do
		if players.count > 3 then
			Result := false
		else
			Result := true
			players.extend (new_player)
		end
	end

	start
		--start game loop
	require
		correct_number_of_players: players.count = 2 or players.count = 4
	local
		ai_player: BS_AI_PLAYER --using this to force ai_player compilation
	do
		ai_player := Void

		has_started := true
		--loop players for move
		--send players moves to other players


		--after finished calculate score and send to all

	end

feature {NONE}

	board : BS_BOARD
	has_started : BOOLEAN
	players: LINKED_LIST[BS_PLAYER]

end
