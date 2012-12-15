note
	description: "Describes the current state of the game"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_SERVER

create
	make

feature -- Measurement

	players: LINKED_LIST [G6_PLAYER]
			--List of players, max 8, if a player leaves the game, won't be deleted from the array

	current_player: INTEGER
			--Id of the current player (position in the list "players"), 0 is gloval turn

	board: G6_BOARD
			--Gameboard

	available_houses: INTEGER
			--Numeber of available houses for sell

	available_hotels: INTEGER
			--Numeber of available hotels for sell

	comunity_chest: G6_DECK_OF_CARDS
			--Comunity chest deck

	chance: G6_DECK_OF_CARDS
			--Chance deck

feature -- Initialization

	make
			-- Create a state with the initial state
		do
			create board.make
			create players.make
			available_houses := 32
			available_hotels := 12
		ensure
			numb_players: players.count () = 0
			board_created: board /= Void
			available_houses = 32
			available_hotels = 12
		end

feature --Basic Operations

	add_player (p: G6_PLAYER)
			--Add the player "p" to the list of players
		require
			valid_old_elements: players.count >= 0 and players.count <= 7 and not players.has (p)
		do
			players.put (p)
		ensure
			valid_new_elements: players.count >= 1 and players.count <= 8 and players.has (p)
		end

	roll_dice
		do
			if(players[current_player].in_jail) then
				--si salen 3 seguidos iguales entonces: player.in_jail := false ¿y mover?
--			else
				--mover el numero que salio al player en el tablero
				--aplicar efecto de casilla
				--if(quiebra) then finishturn y verificar si solo queda un jugador activo (ganador)
			end
		end

	buy_a_cell
		do
--			if(cell.comprable y dueño = null) then
				--decrementar dinero
				--aumentar dinero potencial
				--asignar player a celda
--			end
		end

	finish_turn
		do
				--pasar al turno al siguiente jugador ACTIVO
		end

	mortgage_property (cell: INTEGER)
		require
			valid_cell: cell > 0 and cell < 41 and cell /= 1 and cell /= 3 and cell /= 5 and cell /= 8 and cell /= 11 and cell /= 18 and cell /= 21 and cell /= 23 and cell /= 31 and cell /= 34 and cell /= 37 and cell /= 39
			valid_player_cell: players.at (current_player).properties.has (cell)
		do
			if (attached {G6_PROPERTY} board.cells [cell] as p) then
				p.is_mortgaged := True
				--players.at (current_player).money := money -  p.get_cost * 0.5
				--players.at (current_player).potential_money := players.at (current_player).potential_money - ((p.get_cost * 0.5) \\ 1)
			end
		end

	unmortgage_property (cell: INTEGER)
		require
			valid_cell: cell > 0 and cell < 41 and cell /= 1 and cell /= 3 and cell /= 5 and cell /= 8 and cell /= 11 and cell /= 18 and cell /= 21 and cell /= 23 and cell /= 31 and cell /= 34 and cell /= 37 and cell /= 39
			valid_player_cell: players.at (current_player).properties.has (cell)
		do
			if (attached {G6_PROPERTY} board.cells [cell] as p) then
				p.is_mortgaged := False
			end
				-- manejar money y potential money
		end

	use_jail_card
		require
			jail_card_present: players.at (current_player).jail_cards = 1 or players.at (current_player).jail_cards = -1
		do
			players.at (current_player).in_jail := False
			if (players.at (current_player).jail_cards = 1) then
				comunity_chest.borrow_jail_card
			else
				chance.borrow_jail_card
			end
			players.at (current_player).decrement_jail_cards
		ensure
			players.at (current_player).in_jail = False
		end

	tender (mount: INTEGER)
		do
			--ofertar y guardar en algun lado
			--finih turn
		end

	buy_property (p_id: INTEGER)
		do
		end

	buy_house (cell: INTEGER)
		do
--			if(ES CELDA DE CONSTRUCCION and CELL ES DE CURRENT PLAYER and TIENE TERRENOS SUFIIENTES and TIENE DIENERO and available_houses > 0 and CELL TIENE MENOS DE 5 CASAS) then
				--poner casa en cell
				--decrementar dinero
				--incrementar dinero potencial
--			else
				--error
--			end
		end

	sell_house (cell: INTEGER)
		do
--			if(ES CELDA DE CONSTRUCCION and CELL ES DE CURRENT PLAYER and CELL TIENE 1 CASA O MAS) then
				--sacar casa en cell
				--icrementar dinero
				--decrementar dinero potencial
--			else
				--error
--			end
		end

	transfer (p_id: INTEGER; cell: INTEGER)
		do
--			if(es una celda que puede tener dueño and es del player corriente and p_id es activo) then
				--cabiar el dueño a la celda a p_id
				--incrementar dinero potencial de p_id
				--decrementar dinero potencial de current player
--			else
				--error
--			end
		end

invariant
	numb_players: players.count () >= 0 and players.count () <= 8
	board_created: board /= Void
	available_houses <= 32 and available_houses >= 0
	available_hotels <= 12 and available_hotels >= 0
end
