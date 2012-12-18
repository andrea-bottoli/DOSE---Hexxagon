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
			if (players [current_player].in_jail) then
					--si salen 3 seguidos iguales entonces: player.in_jail := false ¿y mover?
					--			else
					--mover el numero que salio al player en el tablero
					--aplicar efecto de casilla
					--if(quiebra) then finishturn, activo = false y verificar si solo queda un jugador activo (ganador)
			end
		end

	finish_turn
		do
			from
			until
				players.at (current_player).active
			loop
				if (current_player < 8) then
					current_player := current_player + 1
				else
					current_player := 1
				end
			end
		end

	mortgage_property (cell: INTEGER)
		require
			valid_cell: cell > 0 and cell < 41 and cell /= 1 and cell /= 3 and cell /= 5 and cell /= 8 and cell /= 11 and cell /= 18 and cell /= 21 and cell /= 23 and cell /= 31 and cell /= 34 and cell /= 37 and cell /= 39
			valid_player_cell: players.at (current_player).properties.has (cell)
		do
			if (attached {G6_PROPERTY} board.cells [cell] as p) then
				p.is_mortgaged := True
				players.at (current_player).money := players.at (current_player).money + (p.get_cost \\ 2)
				players.at (current_player).potential_money := players.at (current_player).potential_money - (p.get_cost \\ 2)
			end
		end

	unmortgage_property (cell: INTEGER)
		require
			valid_cell: cell > 0 and cell < 41 and cell /= 1 and cell /= 3 and cell /= 5 and cell /= 8 and cell /= 11 and cell /= 18 and cell /= 21 and cell /= 23 and cell /= 31 and cell /= 34 and cell /= 37 and cell /= 39
			valid_player_cell: players.at (current_player).properties.has (cell)
		do
			if (attached {G6_PROPERTY} board.cells [cell] as p) then
				p.is_mortgaged := False
				players.at (current_player).money := players.at (current_player).money - (p.get_cost \\ 2)
				players.at (current_player).potential_money := players.at (current_player).potential_money + (p.get_cost \\ 2)
			end
		end

	use_jail_card
		require
			jail_card_present: players.at (current_player).jail_cards = 1 or players.at (current_player).jail_cards = -1 or players.at (current_player).jail_cards = 2
			players.at (current_player).in_jail
		do
			players.at (current_player).in_jail := False
			if (players.at (current_player).jail_cards = 1) then
				comunity_chest.borrow_jail_card
			else
				chance.borrow_jail_card
			end
			players.at (current_player).decrement_jail_cards
		ensure
			not players.at (current_player).in_jail
		end

	tender (mount: INTEGER)
		do
				--ofertar y guardar en algun lado
				--finih turn
		end

	buy_property
		do
			if (attached {G6_PROPERTY} board.cells [players.at (current_player).position] as p) then
				if (p.owner_id = 0 and players.at (current_player).money > p.get_cost) then
					players.at (current_player).properties.extend (players.at (current_player).position) --agrega la celda donde se encuentra parado current
					p.owner_id := current_player
					players.at (current_player).money := players.at (current_player).money - p.get_cost
					players.at (current_player).potential_money := players.at (current_player).potential_money + (p.get_cost \\ 2) - p.get_cost
				else
						--error no cumple los requisitos
				end
			else
					--error, no es una propiedad (no es "comprable")
			end
		end

	buy_house (cell: INTEGER)
		do
			if (attached {G6_GROUND} board.cells [cell] as p) then
				if (players.at (current_player).properties.has (cell) and players.at (current_player).money >= p.get_housecost and p.district_owner) then
					if (available_houses > 0 and p.houses < 4) then
						p.houses := p.houses + 1
					else
						if (available_hotels > 0 and p.houses = 4) then
							p.houses := 5
						end
					end
					players.at (current_player).money := players.at (current_player).money - p.get_housecost
					players.at (current_player).potential_money := players.at (current_player).potential_money - p.get_housecost + (p.get_housecost \\ 2)
						-- ver el tema del balanceo
				end
			else
					--error (la celda tiene adjunto algo distinto de una propiedad)
			end
		end

	sell_house (cell: INTEGER)
		do
			if (attached {G6_GROUND} board.cells [cell] as p) then
				if (players.at (current_player).properties.has (cell) and p.houses > 0) then
					p.houses := p.houses - 1
					players.at (current_player).money := players.at (current_player).money + (p.get_housecost \\ 2)
						--ver el tema del balanceo si es q lo vamos a tener en cuenta
				else
						--error no cumple los requiitos
				end
			else
					--error, no es una propiedad
			end
		end

	transfer (p_id: INTEGER; cell: INTEGER)
		require
			valid_transfer_cell: cell > 0 and cell < 41 and cell /= 1 and cell /= 3 and cell /= 5 and cell /= 8 and cell /= 11 and cell /= 18 and cell /= 21 and cell /= 23 and cell /= 31 and cell /= 34 and cell /= 37 and cell /= 39
		do
			if (attached {G6_PROPERTY} board.cells [cell] as p) then
				if (players.at (current_player).properties.has (cell) and players.at (p_id).active) then
						----------------------------------current--------------------------
					players.at (current_player).properties.go_i_th (cell)
					players.at (current_player).properties.remove
					players.at (current_player).potential_money := players.at (current_player).potential_money - (p.get_cost \\ 2)
						----------------------------------p_id-----------------------------
					players.at (p_id).properties.put_front (cell)
					players.at (p_id).potential_money := players.at (p_id).potential_money + (p.get_cost \\ 2)
				else
						--error no cumple los requisitos
				end
			else
					--error, no es una propiedad comerciabe
			end
				--			if(es una celda que puede tener dueño and es del player corriente and p_id es activo) then
				--cabiar el dueño a la celda a p_id
				--incrementar dinero potencial de p_id
				--decrementar dinero potencial de current player
				--			else
				--error
				--			end
		end

	transfer_money (p_id: INTEGER; mount: INTEGER)
			--agregar al client_mediator
		require
			valid_player_id: p_id > 0 and p_id <= 8
			valid_transfer_mount: mount > 0
			enough_money: players.at (current_player).money > mount
		do
			players.at (current_player).money := players.at (current_player).money - mount
			players.at (current_player).potential_money := players.at (current_player).potential_money - mount
			players.at (p_id).money := players.at (p_id).money + mount
			players.at (p_id).potential_money := players.at (p_id).potential_money + mount
		end


invariant
	numb_players: players.count () >= 0 and players.count () <= 8
	board_created: board /= Void
	available_houses <= 32 and available_houses >= 0
	available_hotels <= 12 and available_hotels >= 0

end
