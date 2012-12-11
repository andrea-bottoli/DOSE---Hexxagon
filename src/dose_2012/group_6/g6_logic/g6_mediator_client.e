note
	description: "Client of the game"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 29/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_MEDIATOR_CLIENT

create
	make

feature -- Measurement

	ip: STRING

feature -- Initialization

	make (local_ip: STRING)
			-- Initialize the logic_client.

		do
		end

feature {NONE}

	join_game
			-- Sends the player information to the server, in order to create a player
		do
		end

	new_game
			-- Sends the player information to the server, in order to create a player
		do
		end

	exit
			-- Sends the player information to the server, in order to remove a player
		do
		end

	roll_dice
		do
		end

	buy_house () --ver parametros
		do
		end

	buy_cell () --ver parametros
		do
		end

	trade (id_player: INTEGER)
		do
		end

	finish_turn
		do
		end

	sell_house () --ver parametros
			-- Sell
		do
		end

feature {NONE}

	action_performed ()
		do
			if (true) then --Roll dice
					--send message "roll_dice"
			elseif (true) then --Buy a cell if this can be selled where the player stands
					-- send message "buy_a_cell"
			elseif (true) then -- Finish the current turn
					-- send message "finish_turn"
			elseif (true) then --Mortage a property
					-- send message "mortage_property (cell_num)"
			elseif (true) then -- Unmortage a property
					-- send message "unmortage_property (cell_num)"
			elseif (true) then -- Use a jail card
					-- send message "use_jail_card"
			elseif (true) then -- Decide how to pay the luxury tax (% or cash)
					-- send mesagge "how_to_pay (% or cash)"
			elseif (true) then -- Tender in the auction
					-- send message "tender (mount)"
			elseif (true) then -- Buy house/s
					-- send message "buy_house (numb)(cell)"
			elseif (true) then -- Sell house/s
					-- send message "sell_house (numb)(cell)"
			elseif (true) then -- Transfer
					-- send message "transfer (player) (item)"
			end
		end

end
