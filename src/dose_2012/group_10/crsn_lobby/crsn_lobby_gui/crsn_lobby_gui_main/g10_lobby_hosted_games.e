note
	description: "represents the graphic interface of the list of hosted carcassonne games "
	author: "Angel Kyriako"
	date: "27/11/2012"

class
	G10_LOBBY_HOSTED_GAMES
	----------------------------------
inherit
	EV_LIST
	G10_LOBBY_CONSTANTS
		undefine
			default_create, copy, is_equal
		end
	----------------------------------
create make_hosted_games
	----------------------------------

feature {NONE}

	----------------------------------

feature {ANY} --constructor

	make_hosted_games(lobby: G10_LOBBY_MAIN)
	do
		default_create
		add_all_hosted_games
		lobby.get_background.extend_with_position_and_size (Current, hosted_games_Start_width, hosted_games_Start_height, hosted_games_width, hosted_games_height)
	end
	----------------------------------

feature {NONE} -- adds all users to the list

	add_all_hosted_games
	local
		a_game: EV_LIST_ITEM
	do
		create a_game.make_with_text ("Join hereFree Pizza noobs")
		extend(a_game)
		create a_game.make_with_text ("JOIN FUN GAME ASAP!!! Max players: 4")
		extend(a_game)
		create a_game.make_with_text ("1 v 1 COME AT ME BRO")
		extend(a_game)
		create a_game.make_with_text ("I am a firestarter")
		extend(a_game)
		create a_game.make_with_text ("Baby baby baby ouuu")
		extend(a_game)
		create a_game.make_with_text ("Ema Toimei xrisoi avgy !!!")
		extend(a_game)
	end
	----------------------------------
end
