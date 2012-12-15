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
		add_all_hosted_games(lobby.get_lobby_logic)
		pointer_enter_actions.extend (agent enter_hosted_games_notify(lobby) )
		pointer_leave_actions.extend (agent enter_hosted_games_notify(lobby) )
		lobby.get_background.extend_with_position_and_size (Current, hosted_games_Start_width, hosted_games_Start_height, hosted_games_width, hosted_games_height)
	end
	----------------------------------

feature {NONE} -- mutators

	add_all_hosted_games(lobby_logic: G10_LOBBY_LOGIC) -- adds all users to the list
	local
		a_game: EV_LIST_ITEM
		a_game_diplay: STRING
	do
		across lobby_logic.get_all_games as a_hosted_game
		loop
			-- id, title, host
			a_game_diplay := "ID: "+a_hosted_game.item.get_game_id.out+"  Title: "+a_hosted_game.item.get_game_title+"  Max Players: "+a_hosted_game.item.get_max_player_num.out+":  Host: "+a_hosted_game.item.get_host_player.get_id+",   Joined Players: "
			-- , joined players
			across a_hosted_game.item.get_all_joined_players as a_joined_player
			loop
				a_game_diplay.append (a_joined_player.item.get_id + " ")
			end
			-- display the game in the text area
			create a_game.make_with_text (a_game_diplay)
			extend(a_game)
		end
	end
	----------------------------------
	enter_hosted_games_notify(lobby: G10_LOBBY_MAIN) -- updates lobby
	do
		-- latest update
		lobby.update_lobby
	end

feature{G10_LOBBY_MAIN}
	----------------------------------
	redraw_all_games(lobby_logic: G10_LOBBY_LOGIC) -- redraws all the hosted games
	do
		wipe_out
		add_all_hosted_games(lobby_logic)
		refresh_now
	end
end
