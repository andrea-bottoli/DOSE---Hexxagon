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

	make_with_controller (a_controller: G1_UI_CONTROLLER; a_ip_server: STRING)
			-- Initialize the logic_client.
		do
			ip_server := a_ip_server
			controller := a_controller
			create l_player.make (1, "Player")
			create board.make_with_player (l_player)
			create net_client.make_client (ip_server, Current)
				--net_client.connect (ip_server, 9190)
		end

feature -- Attributes

	l_player: G1_PLAYER
			-- Player for the logic

	controller: G1_UI_CONTROLLER
			-- Controller

	board: G1_BOARD
			-- Board of the current game

	ip_local: STRING
			-- Ip local

	net_client: G1_NET_CLIENT
			-- Connection to server

	ip_server: STRING
			-- Ip address of server.

	l_dice_value: INTEGER
			-- Values of the last roll dice.

feature -- Procedures

	get_player: G1_PLAYER
		do
			Result := l_player
		end

		-- procedures of logic_client.

	get_ip_local (): STRING
			-- Returns the local ip of the player
		local
			ip_request: G1_IP_ADDRESS
		do
			create ip_request
			ip_local := ip_request.ip_address
			Result := ip_local
		end

	set_ip_address (a_ip_address: STRING)
		require
			valid_a_ip_in_set: a_ip_address /= Void
		do
			ip_server := a_ip_address
		ensure
			valid_a_ip_in_set: ip_local = a_ip_address
		end

	select_tokens (a_player: G1_PLAYER; a_token: G1_TOKEN)
			-- Select the token to be used in the board.
		do
			a_player.set_token (a_token)
		end

	action_card (a_id_card: INTEGER; a_player: G1_PLAYER)
		require
			a_id_card >= 0 and a_id_card < 32
		local
			message: G1_MESSAGE_CASH
			message_move: G1_MESSAGE_MOVE
		do
			inspect a_id_card
				-- Community chest
			when 0 then
				a_player.increment_money (100)
				board.withdraw_bank (100)
				create message.make (a_player.id_player, True, 100)
				net_client.send_message_to_network (message)
			when 1 then
				a_player.increment_money (75)
				board.withdraw_bank (75)
				create message.make (a_player.id_player, True, 75)
				net_client.send_message_to_network (message)
			when 2 then
				a_player.decrement_money (50)
				board.deposit_bank (50)
				create message.make (a_player.id_player, False, 50)
				net_client.send_message_to_network (message)
			when 3 then
				a_player.jail_cards.set_item (1)
			when 4 then
				create message_move.make_move (a_player.id_player, 10)
				net_client.send_message_to_network (message_move)
			when 5 then
				a_player.increment_money (20)
				board.withdraw_bank (20)
				create message.make (a_player.id_player, True, 20)
				net_client.send_message_to_network (message)
			when 6 then
				a_player.increment_money (50)
				board.withdraw_bank (50)
				create message.make (a_player.id_player, True, 50)
				net_client.send_message_to_network (message)
			when 7 then
				a_player.increment_money (20)
				board.withdraw_bank (20)
				create message.make (a_player.id_player, True, 20)
				net_client.send_message_to_network (message)
			when 8 then
				a_player.increment_money (100)
				board.withdraw_bank (100)
				create message.make (a_player.id_player, True, 100)
				net_client.send_message_to_network (message)
			when 9 then
				a_player.decrement_money (100)
				board.deposit_bank (100)
				create message.make (a_player.id_player, False, 100)
				net_client.send_message_to_network (message)
			when 10 then
				a_player.decrement_money (50)
				board.deposit_bank (50)
				create message.make (a_player.id_player, False, 50)
				net_client.send_message_to_network (message)
			when 11 then
				a_player.increment_money (25)
				board.withdraw_bank (25)
				create message.make (a_player.id_player, True, 25)
				net_client.send_message_to_network (message)
			when 12 then
				a_player.decrement_money (50)
				board.deposit_bank (50)
				create message.make (a_player.id_player, False, 50)
				net_client.send_message_to_network (message)
			when 13 then
				a_player.increment_money (10)
				board.withdraw_bank (10)
				create message.make (a_player.id_player, True, 10)
				net_client.send_message_to_network (message)
			when 14 then
				a_player.increment_money (100)
				board.withdraw_bank (100)
				create message.make (a_player.id_player, True, 100)
				net_client.send_message_to_network (message)
			when 15 then
				a_player.increment_money (50)
				board.withdraw_bank (50)
				create message.make (a_player.id_player, True, 50)
				net_client.send_message_to_network (message)
					--Chance
			when 16 then
				a_player.increment_money (200)
				board.withdraw_bank (200)
				create message.make (a_player.id_player, True, 100)
				net_client.send_message_to_network (message)
				create message_move.make_move (a_player.id_player, 0)
				net_client.send_message_to_network (message_move)
			when 17 then
				if a_player.position > 24 then
					a_player.increment_money (200)
					board.withdraw_bank (200)
					create message.make (a_player.id_player, True, 200)
					net_client.send_message_to_network (message)
				end
				create message_move.make_move (a_player.id_player, 24)
				net_client.send_message_to_network (message_move)
			when 18 then
				if a_player.position > 11 then
					a_player.increment_money (200)
					board.withdraw_bank (200)
					create message.make (a_player.id_player, True, 200)
					net_client.send_message_to_network (message)
				end
				create message_move.make_move (a_player.id_player, 11)
				net_client.send_message_to_network (message_move)
			when 19 then
				if a_player.position < 12 or a_player.position > 28 then
					create message_move.make_move (a_player.id_player, 12)
					net_client.send_message_to_network (message_move)
				else
					create message_move.make_move (a_player.id_player, 28)
					net_client.send_message_to_network (message_move)
				end
			when 20 then
				inspect a_player.position
				when 7 then
					create message_move.make_move (a_player.id_player, 15)
				when 22 then
					create message_move.make_move (a_player.id_player, 25)
				when 36 then
					create message_move.make_move (a_player.id_player, 5)
				end
				net_client.send_message_to_network (message_move)
			when 21 then
				a_player.increment_money (50)
				board.withdraw_bank (50)
				create message.make (a_player.id_player, True, 50)
				net_client.send_message_to_network (message)
			when 22 then
				a_player.increment_jail_cards
			when 23 then
				create message_move.make_move (a_player.id_player, a_player.position - 3)
				net_client.send_message_to_network (message_move)
			when 24 then
				create message_move.make_move (a_player.id_player, 10)
				net_client.send_message_to_network (message_move)
			when 25 then
				a_player.decrement_money (150)
				board.deposit_bank (150)
				create message.make (a_player.id_player, False, 150)
				net_client.send_message_to_network (message)
			when 26 then
				a_player.decrement_money (15)
				board.deposit_bank (15)
				create message.make (a_player.id_player, False, 15)
				net_client.send_message_to_network (message)
			when 27 then
				if a_player.position > 5 then
					a_player.increment_money (200)
					board.withdraw_bank (200)
					create message.make (a_player.id_player, True, 200)
					net_client.send_message_to_network (message)
				end
				create message_move.make_move (a_player.id_player, 5)
				net_client.send_message_to_network (message_move)
			when 28 then
				create message_move.make_move (a_player.id_player, 39)
				net_client.send_message_to_network (message_move)
			when 29 then
				a_player.decrement_money (100)
				board.deposit_bank (100)
				create message.make (a_player.id_player, False, 100)
				net_client.send_message_to_network (message)
			when 30 then
				a_player.increment_money (150)
				board.withdraw_bank (150)
				create message.make (a_player.id_player, True, 150)
				net_client.send_message_to_network (message)
			when 31 then
				a_player.increment_money (100)
				board.withdraw_bank (100)
				create message.make (a_player.id_player, True, 100)
				net_client.send_message_to_network (message)
			else
			end
		end

	add_player (a_player: G1_PLAYER)
			-- The player joins to a game.

		require
			valid_player: a_player /= Void
		local
			message: G1_MESSAGE_ADD_PLAYER
		do
			board.add_player (a_player)
			board.withdraw_bank (1500)
			create message.make_add_player (a_player.id_player, a_player.name)
			net_client.send_message_to_network (message)
		end

	game_rules (): STRING
			-- Return the game rules.
		do
			Result := "Rules"
		end

	roll_dice (a_player: G1_PLAYER): G1_CELL
			-- Roll the dices and move player
		require
			valid_roll_dice_a_player: a_player /= Void
		local
			dice_1: G1_DICE
			dice_2: G1_DICE
			message: G1_MESSAGE_MOVE
		do
			create dice_1.make_dice
			create dice_2.make_dice
			board.move_player (a_player, dice_1.get_value_dice + dice_2.get_value_dice)
			l_dice_value := dice_1.get_value_dice + dice_2.get_value_dice
			Result := board.cells [a_player.position]
			create message.make_move (a_player.id_player, a_player.position)
			net_client.send_message_to_network (message)
		end

	buy (a_player: G1_PLAYER; a_deed: G1_DEED)
			-- Buy a deed.
		require
			valid_player: a_player.id_player > 0
			valid_deed: a_deed.id_cell > 0
			valid_money: a_deed.get_price > 0 and (a_player.money > a_deed.get_price or a_player.money = a_deed.get_price)
		local
			message: G1_MESSAGE_BUY
		do
			a_deed.sell_deed
			a_deed.set_owner (a_player)
			a_player.add_property (a_deed)
			a_player.decrement_money (a_deed.get_price)
			board.deposit_bank (a_deed.get_price)
			create message.make_buy (a_player.id_player, True)
			net_client.send_message_to_network (message)
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

	mortgage (a_player: G1_PLAYER; a_deed: G1_DEED)
			-- Mortgage
		require
			valid_deed: a_deed.id_cell > 0
			morgage_false: a_deed.is_mortgaged = False
		local
			message: G1_MESSAGE_MORTGAGE
		do
			a_deed.mortgage_deed
			a_player.increment_money (a_deed.get_morgaged_value)
			board.withdraw_bank (a_deed.get_morgaged_value)
			create message.make_mortgage (a_player.id_player, a_deed.id_cell, True)
			net_client.send_message_to_network (message)
		ensure
			valid_deed: a_deed.is_mortgaged
		end

	unmortage (a_player: G1_PLAYER; a_deed: G1_DEED)
			-- Unmortage
		require
			valid_player: a_player.id_player > 0
			valid_deed: a_deed.id_cell > 0
			mortgaged_true: a_deed.is_mortgaged
		local
			message: G1_MESSAGE_MORTGAGE
		do
			a_deed.unmortgage_deed
			a_player.decrement_money (a_deed.get_morgaged_value + 10)
			board.withdraw_bank (a_deed.get_morgaged_value + 10)
			create message.make_mortgage (a_player.id_player, a_deed.id_cell, False)
			net_client.send_message_to_network (message)
		ensure
			valid_deed: a_deed.is_mortgaged = False
		end

	trade (a_player1: G1_PLAYER; a_p1_deed: G1_DEED; a_p1_card: G1_CARD; a_player2: G1_PLAYER; a_p2_deed: G1_DEED; a_p2_card: G1_CARD)
			-- Trade from player1 to player2
		require
			valid_players_id: a_player1.id_player > 0 and a_player2.id_player > 0
			valid_items_player1: a_p1_deed /= Void or a_p1_card /= Void
			valid_items_player2: a_p2_deed /= Void or a_p2_card /= Void
		local
			message: G1_MESSAGE_TRADE
		do
			if (a_p1_deed /= Void) then
				a_player1.delete_property (a_p1_deed)
				a_player2.add_property (a_p1_deed)
			end
			if (a_p1_card /= Void) then
				a_player1.decrement_jail_cards
				a_player2.increment_jail_cards
			end
			if (a_p2_deed /= Void) then
				a_player2.delete_property (a_p2_deed)
				a_player1.add_property (a_p2_deed)
			end
			if (a_p2_card /= Void) then
				a_player2.decrement_jail_cards
				a_player1.increment_jail_cards
			end
			create message.make_trade (a_player1.id_player, a_p1_deed.id_cell, a_p1_card.id, a_player2.id_player, a_p2_deed.id_cell, a_p2_card.id, True)
			net_client.send_message_to_network (message)
		ensure
			valid_players_id: a_player1.id_player > 0 and a_player2.id_player > 0
		end

	finish_turn (a_player: G1_PLAYER)
			-- Finish the turn of the current player
		local
			message: G1_MESSAGE_FINISH
		do
			create message.make_finish (a_player.id_player)
			net_client.send_message_to_network (message)
		end

	build (a_player: G1_PLAYER; a_street: G1_STREET)
			-- Build
		require
			valid_player_id: a_player.id_player > 0
			valid_deed: a_street.id_cell >= 0
		local
			message: G1_MESSAGE_BUILDING
		do
			a_street.build
			a_player.decrement_money (a_street.l_house_cost)
			board.deposit_bank (a_street.l_house_cost)
			create message.make_building (a_player.id_player, a_street.id_cell, 0)
			net_client.send_message_to_network (message)
		ensure
			valid_player_id: a_player.id_player > 0
			valid_deed: a_street.id_cell >= 0
		end

	sell_building (a_player: G1_PLAYER; a_street: G1_STREET)
			-- Sell a house or a hotel
		require
			valid_player: a_player.id_player > 0
			valid_street: a_street.id_cell > 0
		local
			half_price: INTEGER
			message: G1_MESSAGE_BUILDING
		do
			a_street.sell_building
			half_price := a_street.get_price.integer_quotient (2)
			a_player.increment_money (half_price)
			board.bank.withdraw_money (half_price)
			message.make_building (a_player.id_player, 0, a_street.id_cell)
			net_client.send_message_to_network (message)
		ensure
			valid_player: a_player.id_player > 0
			valid_price_player: a_player.money = (old a_player.money + a_street.get_price.integer_quotient (2))
			valid_price_bank: board.bank.money_available = (old board.bank.money_available - a_street.get_price.integer_quotient (2))
		end

	pay_to_get_out_jail (a_player: G1_PLAYER)
			--Opts to pay a $50 bailout to the bank. The dice rolled on the turn on which the player leaves jail are played out.
		require
			valid_money: a_player.money >= 50
		local
			message: G1_MESSAGE_CASH
		do
			a_player.decrement_money (50)
			board.deposit_bank (50)
			create message.make (a_player.id_player, False, 50)
			net_client.send_message_to_network (message)
		ensure
			valid_decrement_money: a_player.money = (old a_player.money - 50)
		end

	get_out_of_jail_free (a_player: G1_PLAYER)
			-- Spend a "Get out of Jail Free" card
		require
			valid_jail_cards: a_player.jail_cards > 0
		do
			if a_player.jail_cards > 0 then
				a_player.decrement_jail_cards
			end
		ensure
			valid_jail_cards: a_player.jail_cards = (old a_player.jail_cards - 1)
		end

	pay_rent_to_player (a_player: G1_PLAYER)
			--Pay rent to property owner
		local
			player_message: G1_MESSAGE_CASH
			owner_message: G1_MESSAGE_CASH
			current_rent: INTEGER
		do
			if attached {G1_DEED} board.cells [a_player.position] as rent_deed then
				if attached {G1_STREET} rent_deed as street then
					current_rent := street.get_rent
				else
					if attached {G1_RAILWAY} rent_deed as railway then
						current_rent := railway.rent_value
					else
						if attached {G1_UTILITY} rent_deed as utility then
							current_rent := utility.l_rent_value (l_dice_value)
						end
					end
				end
				a_player.decrement_money (current_rent)
				rent_deed.owner.increment_money (current_rent)
				create player_message.make (a_player.id_player, False, current_rent)
				create owner_message.make (rent_deed.owner.id_player, True, current_rent)
				net_client.send_message_to_network (player_message)
				net_client.send_message_to_network (owner_message)
			else
				print ("ERROR!  no deed cell")
			end
		end

invariant
	valid_board: board /= Void
	valid_ip: ip_local /= "0"
	valid_ip_server_logic: ip_server /= Void

end
