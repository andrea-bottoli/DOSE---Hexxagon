note
	description: "Class representing the 'Logic Client' in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_LOGIC_CLIENT

create
	make_with_controller

feature -- Initialization

	make_with_controller (a_ip_local: STRING; a_controller: G1_UI_CONTROLLER)
			-- Initialize the logic_client.
		do
			controller := a_controller
			ip_local := a_ip_local
			create l_player.make (999, "Player")
			create board.make_with_player (l_player)
		end

feature -- Attributes

	l_player: G1_PLAYER

	controller: G1_UI_CONTROLLER
			-- Controller

	board: G1_BOARD
			-- Board of the current game

	ip_local: STRING
			-- Ip local

feature -- Procedures

	get_player: G1_PLAYER
		do
			Result := l_player
		end

		-- procedures of logic_client.

	get_ip_local (): STRING
			-- Returns the local ip of the player
		local
			ip_request: IG_ADDRESS_REQUEST
			ip_address: STRING
		do
			create ip_request
			ip_local := ip_request.ip_address
			Result := ip_local
		end

	select_tokens (a_player: G1_PLAYER; a_token: G1_TOKEN)
			-- Select the token to be used in the board.
		do
			a_player.set_token (a_token)
		end

	add_player (a_player: G1_PLAYER)
			-- The player joins to a game.
		require
			valid_player: a_player /= Void
		do
			board.add_player (a_player)
		end

	game_rules (): STRING
			-- Return the game rules.
		do
			Result := "Rules"
		end

	roll_dice (a_player: G1_PLAYER): G1_CELL
			-- Roll the dices and move player
		local
			dice_1: G1_DICE
			dice_2: G1_DICE
			position: INTEGER
		do
			create dice_1.make_dice
			create dice_2.make_dice
			position := (dice_1.get_value_dice + dice_2.get_value_dice)
			a_player.set_position (position)
			Result := board.cells [position]
		end

	buy (a_player: G1_PLAYER; a_deed: G1_DEED)
			-- Buy a deed.
		require
			valid_player: a_player.id_player > 0
			valid_deed: a_deed.id_cell > 0
			valid_money: a_deed.get_price > 0 and (a_player.money > a_deed.get_price or a_player.money = a_deed.get_price)
		do
			a_deed.sell_deed
			a_deed.set_owner (a_player)
			a_player.add_property (a_deed)
			a_player.decrement_money (a_deed.get_price)
			board.bank.deposit_money (a_deed.get_price)
		ensure
			valid_player: a_player.id_player > 0
			valid_deed: a_deed.id_cell > 0
			valid_money: a_deed.get_price > 0
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

	mortgage (player: G1_PLAYER; deed: G1_DEED)
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

	pay_rent_to_player (a_player: G1_PLAYER)
			--Pay to player whit property
		local
			deee: G1_DEED
			dee2: G1_DEED
		do

				--if attached {G1_DEED} dee2 as deee then
				--x.owner.id_player
				--	print ("ok")
				--else
				--	print ("no ok")
		end

	leave_game (a_player: G1_PLAYER)
		do
		end

invariant
	valid_board: board /= Void
	valid_ip: ip_local /= "0"

end
