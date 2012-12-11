note
	description: "Interface of GUI sub-component"
	author: "Debrecen3"
	date: "13/11/2012"


deferred class
	GR11_GUI

feature

	create_game_screen: CREATE_GAME_SCREEN
	join_game_screen: JOIN_GAME_SCREEN
	ingame_screen: INGAME_SCREEN

	create_game
	--Runs a server instance on the client, where other clients can join.
	require
		--create_game_screen
	deferred
	end

	join_game(ipadr: STRING)
	--Joins a server, if the number of actual players hasn't reached its limit.
	require
		--join_game_screen
	deferred
	end

	recv_msg(m: GR11_MSG)
	--Receives messages from GR11_NET and performs actions to update the game's state.
	--Remember, the logic is in the server, and the clients' GUI's receive direct
	--instruction what to do, when game state updates happen.
	deferred
	end

	reveal_movement_card
	--When the GUI got the game state update and it turns out that this player has
	--the next turn, the GUI will indicate that the player can reveal his/her next (or first)
	--movement card. When he/she do so, this feature will be called and the movement card
	--will be shown to the player.
	require
		--ingame_screen
	deferred
	end

	move_ship(s: GR11_SHIP)
	--The player selects one of his/her ships. This ship will be moved to another cell,
	--depending on its current position and the number of cells written on the movement card.
	--Since in a turn the player needs to move every ship in one of his/her squadron, the first ship
	--selected (in a turn) decides which squadron he/she moves in this turn.
	--Also collisions need to be handled.
	require
		--ingame_screen
	deferred
	end

	rotate_ship(s: GR11_SHIP; i: INTEGER)
	--Ships can be rotated by clicking on the edges of the cells. After the ships of one
	--squadron has been moved (and the ships fired), the player has to rotate these ships
	--in the cells they arrived to.
	require
		--ingame_screen
	deferred
	end

	move_or_rotate_battleship(bs: GR11_BATTLESHIP; ma: GR11_MOVEMENT_ACTION)
	--Now, the player needs to select one of his/her battleships, and move and/or rotate it.
	--The number of possible moves and rotations are given by the movement card. Unlike squadron fighters,
	--battleships can do less movements/rotations then its given by the movement card. While the squadron fighters
	--can only go straight as much as its on the movement card, and then after firing it can be rotated,
	--battleships can do movements and rotations in any order.
	require
		--ingame_screen
	deferred
	end

	update_game_state(gsu: GR11_GAMESTATEUPDATE)
	--Updates the game state, so keeps up the player with the latest actions.
	deferred
	end

	display_error_msg(em: STRING)
	--After trying to make an illegal move, the player receives an error
	--message containing why he/se isn't allow to commit that action.
	deferred
	end



end
