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

	s: G6_SERVER

feature -- Initialization

	make ()
			-- Initialize the logic_client.
			--inicialisate server
		do
		end

feature {NONE}

	action_performed ()
		do
			if (true) then --add player
				--obtener datos de player desde interfaz de usuario y crearlo
				--s.add_player (p)
			elseif (true) then --Roll dice
				s.roll_dice
			elseif (true) then -- Finish the current turn
				s.finish_turn
			elseif (true) then --Mortage a property
				--pedir numero de celda desde interfaz de usuario
				s.mortgage_property (5)--cell
			elseif (true) then -- Unmortage a property
				--pedir numero de celda desde interfaz de usuario
				s.unmortgage_property (5)--cell
			elseif (true) then -- Use a jail card
				s.use_jail_card
			elseif (true) then -- Tender in the auction
				--pedir monto desde interfaz de usuario
				s.tender (500)--mount
			elseif (true) then -- Buy house/s
				--pedir numero de celda desde interfaz de usuario
				s.buy_house (5)--cell
			elseif (true) then -- Sell house/s
				--pedir numero de celda desde interfaz de usuario
				s.sell_house (5)--cell
			elseif (true) then -- Transfer
				--pedir player e item desde interfaz de usuario
				--s.transfer (player, item)
			end
		end
end
