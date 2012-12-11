note
	description: "Summary description for {DO_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_GAME

create
	Play_Game

feature{NONE}
	GameName : STRING
	CurrentPlayer : INTEGER
	PlayersList : ARRAYED_LIST[DO_PLAYER]
	CardsList : TUPLE[STRING,DO_CARD]
	make
	do

	end

feature

	Add_Player(a_player :DO_PLAYER)
	require
		arg_player_not_void : a_player /= void
	do
	ensure
		Player_added : PlayersList.count() = old PlayersList.count() + 1
	end

	Delete_Player(d_player : DO_PLAYER)
	require
		arg_player_not_void : d_player /= void
	do
	ensure
		Player_deleted : PlayersList.count() = old PlayersList.count() - 1
	end

	Is_Winner() : BOOLEAN
	do
	ensure
		Winner : Result = True or Result = False
	end

	Valid_Move() : BOOLEAN
	do
	ensure
		Move : Result = True or Result = False
	end

			-- PLAY GAME METHOD --
	 -- HERE IS WHERE THE MAGIC HAPPENS --
	-- ALL OTHER METHODS ARE CALLED HERE --
	Play_Game()
	do

	end

	Is_End_Game() : BOOLEAN
	do
	ensure
		game_end : Result = True or Result = False
	end

feature

	-- Get message from NET and decipher it so we can update the game state based on the changes --
	NotifyGameState(a_message : DO_OUR_MESSAGE) : DO_GAME
	require
		arg_not_void : a_message /= void
	do
	ensure
		arg_deciphered : Result /= void
	end

feature --Initialization

	Init_Players()
	do

	end

	Init_Deck_Piles()
	do

	end


feature --Setters

	Set_Player(s_player : DO_PLAYER)
	require
		arg_not_void : s_player /= void
	do

	end

	Set_Game(s_game : STRING)
	require
		arg_not_void : s_game /= void
	do

	end



feature{} --Getters

	Get_Player() : DO_PLAYER
	do
	ensure
		get_player : Result /= void
	end

	Get_Winner() : DO_PLAYER
	do
	ensure
		get_player : Result /= void
	end


end
