note
	description: "Class representing the 'Logic Client' in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_LOGIC_CLIENT

create
	make

feature -- Initialization

	make (local_ip: STRING)
			-- Initialize the logic_client.
		require
			valid_ip: local_ip /= "0"
		do
		ensure
			valid_ip: ip_local /= "0" and ip_local = local_ip
		end

feature -- Attributes

	ip_local: STRING

feature -- Procedures

		-- procedures of logic_client.

	get_ip_local (): STRING
			-- Returns the local ip of the player
		do
		ensure
			valid_ip: ip_local /= "0"
		end

	select_tokens (player: G1_PLAYER; name_token: G1_TOKEN)
			-- Select the token to be used in the board.
		require
			valid_player: player.id_player > 0
		do
		ensure
			valid_player: player.id_player > 0
		end

	join_game (player: G1_PLAYER)
			-- The player joins to a game.
		require
			valid_player: player.id_player > 0
		do
		ensure
			valid_player: player.id_player > 0
		end

	new_game (player: G1_PLAYER)
			-- The player create a new game.
		require
			valid_player: player.id_player > 0
		do
		ensure
			valid_player: player.id_player > 0
		end

	game_rules (player: G1_PLAYER)
			-- Open the game rules.
		require
			valid_player: player.id_player > 0
		do
		ensure
			valid_player: player.id_player > 0
		end

	exit (player: G1_PLAYER)
			-- Exit of the game.
		require
			valid_player: player.id_player > 0
		do
		ensure
			valid_player: player.id_player > 0
		end

	select_game (player: G1_PLAYER)
			-- Select one of the initialized games.
		require
			valid_player: player.id_player > 0
		do
		ensure
			valid_player: player.id_player > 0
		end

	roll_dice (player: G1_PLAYER)
			-- Roll the dices.
		require
			valid_player: player.id_player > 0
		do
		ensure
			valid_player: player.id_player > 0
		end

	buy (player: G1_PLAYER; deed: G1_DEED; money: INTEGER)
			-- Buy a deed.
		require
			valid_player: player.id_player > 0
			valid_deed: deed.id_cell > 0
			valid_money: money > 0 and (player.money > money or player.money = money)
		do
		ensure
			valid_player: player.id_player > 0
			valid_deed: deed.id_cell > 0
			valid_money: money > 0 and (player.money > money or player.money = money)
		end

	auction (player: G1_PLAYER; deed: G1_DEED; money: INTEGER)
			-- Initialize an auction.
		require
			valid_player: player.id_player > 0
			valid_deed: deed.id_cell > 0
			valid_money: money > 0 and (player.money > money or player.money = money)
		do
		ensure
			valid_player: player.id_player > 0
			valid_deed: deed.id_cell > 0
			valid_money: money > 0 and (player.money > money or player.money = money)
		end

	mortgage (player : G1_PLAYER; deed : G1_DEED)
			-- Mortgage
		require
			valid_player: player.id_player > 0
			valid_deed: deed.id_cell > 0
		do
		ensure
			valid_player: player.id_player > 0
			valid_deed: deed.id_cell > 0
		end

	unmortage (player: G1_PLAYER; deed: G1_DEED)
			-- Unmortage
		require
			valid_player: player.id_player > 0
			valid_deed: deed.id_cell > 0
		do
		ensure
			valid_player: player.id_player > 0
			valid_deed: deed.id_cell > 0
		end

	trade
			-- Trade
		do
		end

	finish_turn (player: G1_PLAYER)
			-- Finish the turn of the current player
		require
			valid_player: player.id_player > 0
		do
		end

	build
			-- Build
		do
		end

	sell
			-- Sell
		do
		end

	lock_player (player: G1_PLAYER)
			-- Lock players
		require
			valid_player: player.id_player > 0
		do
		end

	unlock_player (player: G1_PLAYER)
			-- Unlock player
		require
			valid_player: player.id_player > 0
		do
		end

	sendMessage (message: G1_MESSAGE)
			--Send the message
		do
		end

invariant
	valid_ip: ip_local /= "0"

end
