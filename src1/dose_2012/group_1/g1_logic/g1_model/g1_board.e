note
	description: "Class representing the board in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7 : Leonardo Marmol"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_BOARD

create
	make, make_with_player

feature -- Initilization

	make
			-- Initialize the board whit default values
		do
			load_cards_chance
			load_cards_community_chest
			load_cells
			load_tokens
			create players.make
			create bank.make
		end

	make_with_player (a_player: G1_PLAYER)
			-- Initialize the board with default values
		do
			create players.make
			players.put_right (a_player)
			load_cards_chance
			load_cards_community_chest
			load_cells
			load_tokens
			create bank.make
		end

feature -- Attributes

	cards_chance: ARRAY [G1_CARD]
			--List of cards "chance", 16 cards.

	cards_community_chest: ARRAY [G1_CARD]
			--List of cards "community chest", 16 cards.

	cells: ARRAY [G1_CELL]
			--List of deeds of the board, 40 deeds.

	tokens: ARRAY [G1_TOKEN]
			--List of tokens.

	players: LINKED_LIST [G1_PLAYER]
			-- List of players in the game.

	bank: G1_BANK

feature {NONE} -- Basic Operations

	load_cards_chance ()
			-- Load all cards chance.
		local
			card: G1_CARD
		do
			create cards_chance.make_filled (Void, 0, 15)

			create card.make_card (16, "Advance to Go. (Collect 200)", 1)
			cards_chance [0] := card
			create card.make_card (17, "Advance to Illinois Ave. If you pass Go, collect $200 ", 1)
			cards_chance [1] := card
			create card.make_card (18, "Advance to St. Charles Place. If you pass Go, collect $200 ", 1)
			cards_chance [2] := card
			create card.make_card (19, "Advance token to nearest Utility. If unowned, you may buy it from the Bank. If owned, throw dice and pay owner a total ten times the amount thrown.", 1)
			cards_chance [3] := card
			create card.make_card (20, "Advance token to the nearest Railroad and pay owner twice the rental to which he/she is otherwise entitled. If Railroad is unowned, you may buy it from the Bank.", 1)
			cards_chance [4] := card
			create card.make_card (21, "Bank pays you dividend of $50", 1)
			cards_chance [5] := card
			create card.make_card (22, "Get out of Jail Free - This card may be kept until needed, or traded/sold", 1)
			cards_chance [6] := card
			create card.make_card (23, "Go back 3 spaces ", 1)
			cards_chance [7] := card
			create card.make_card (24, "Go directly to Jail - Do not pass Go, do not collect $200", 1)
			cards_chance [8] := card
			create card.make_card (25, "Make general repairs on all your property - For each house pay $25 - For each hotel $100 ", 1)
			cards_chance [9] := card
			create card.make_card (26, "Pay poor tax of $15 ", 1)
			cards_chance [10] := card
			create card.make_card (27, "Take a trip to Reading Railroad. If you pass Go, collect $200", 1)
			cards_chance [11] := card
			create card.make_card (28, "Take a walk on the Boardwalk. Advance token to Boardwalk ", 1)
			cards_chance [12] := card
			create card.make_card (29, "You have been elected Chairman of the Board. Pay each player $50 ", 1)
			cards_chance [13] := card
			create card.make_card (30, "Your building and loan matures. Collect $150", 1)
			cards_chance [14] := card
			create card.make_card (31, "You have won a crossword competition. Collect $100", 1)
			cards_chance [15] := card
		end

	load_cards_community_chest ()
			--Load all cards community chest
		local
			card: G1_CARD
		do
			create cards_community_chest.make_filled (Void, 0, 15)

			create card.make_card (0, "Holiday Fund matures - Receive $100", 0)
			cards_community_chest [0] := card
			create card.make_card (1, "Bank error in your favor - collect $75", 0)
			cards_community_chest [1] := card
			create card.make_card (2, "Doctor's fees - Pay $50", 0)
			cards_community_chest [2] := card
			create card.make_card (3, "Get out of jail free - this card may be kept until needed, or sold", 0)
			cards_community_chest [3] := card
			create card.make_card (4, "Go to jail - go directly to jail - Do not pass Go, do not collect $200", 0)
			cards_community_chest [4] := card
			create card.make_card (5, "It is your birthday Collect $10 from each player", 0)
			cards_community_chest [5] := card
			create card.make_card (6, "Grand Opera Night - collect $50 from every player for opening night seats", 0)
			cards_community_chest [6] := card
			create card.make_card (7, "Income Tax refund - collect $20", 0)
			cards_community_chest [7] := card
			create card.make_card (8, "Life Insurance Matures - collect $100", 0)
			cards_community_chest [8] := card
			create card.make_card (9, "Pay Hospital Fees of $100", 0)
			cards_community_chest [9] := card
			create card.make_card (10, "Pay School Fees of $50", 0)
			cards_community_chest [10] := card
			create card.make_card (11, "Receive $25 Consultancy Fee", 0)
			cards_community_chest [11] := card
			create card.make_card (12, "You are assessed for street repairs - $40 per house, $115 per hotel", 0)
			cards_community_chest [12] := card
			create card.make_card (13, "You have won second prize in a beauty contest- collect $10", 0)
			cards_community_chest [13] := card
			create card.make_card (14, "You inherit $100", 0)
			cards_community_chest [14] := card
			create card.make_card (15, "From sale of stock you get $50", 0)
			cards_community_chest [15] := card
		end

	load_cells ()
			--Load all cells
		local
			cell_non_deed: G1_NON_DEED
			cell_street: G1_STREET
			cell_utility: G1_UTILITY
			cell_railway: G1_RAILWAY
		do
			create cells.make_filled (Void, 0, 39)

				--Non deeds
			create cell_non_deed.make_non_deed ("Go. Collect 200 salary as you pass", 0, "non_deed 1")
			cells [0] := cell_non_deed
			create cell_non_deed.make_non_deed ("Community Chest", 1, "non_deed 2")
			cells [2] := cell_non_deed
			cells [17] := cell_non_deed
			cells [33] := cell_non_deed
			create cell_non_deed.make_non_deed ("Chance", 2, "non_deed 3")
			cells [7] := cell_non_deed
			cells [22] := cell_non_deed
			cells [36] := cell_non_deed
			create cell_non_deed.make_non_deed ("Income Tax", 3, "non_deed 4")
			cells [4] := cell_non_deed
			create cell_non_deed.make_non_deed ("Luxury Tax", 4, "non_deed 5")
			cells [38] := cell_non_deed
			create cell_non_deed.make_non_deed ("Jail", 5, "non_deed 6")
			cells [10] := cell_non_deed
			create cell_non_deed.make_non_deed ("Go to jail", 6, "non_deed 7")
			cells [30] := cell_non_deed
			create cell_non_deed.make_non_deed ("Free parking", 7, "non_deed 8")
			cells [20] := cell_non_deed

				-- Purple
			create cell_street.make_street (1, "Mediteranean Avenue", 60, load_rent (2, 10, 30, 90, 160, 250), 50)
			cells [1] := cell_street
			create cell_street.make_street (3, "Baltic Avenue", 60, load_rent (4, 20, 60, 180, 320, 450), 50)
			cells [3] := cell_street

				-- Ligth Blue
			create cell_street.make_street (6, "Oriental Avenue", 100, load_rent (6, 30, 90, 270, 400, 550), 50)
			cells [6] := cell_street
			create cell_street.make_street (8, "Vermont Avenue", 100, load_rent (6, 30, 90, 270, 400, 550), 50)
			cells [8] := cell_street
			create cell_street.make_street (9, "Connecticut Avenue", 120, load_rent (8, 40, 100, 300, 450, 500), 50)
			cells [9] := cell_street

				-- Violet
			create cell_street.make_street (11, "St. Charles Place", 140, load_rent (10, 50, 150, 450, 625, 750), 100)
			cells [11] := cell_street
			create cell_street.make_street (13, "States Avenue", 140, load_rent (10, 50, 150, 450, 625, 750), 100)
			cells [13] := cell_street
			create cell_street.make_street (14, "Virginia Avenue", 160, load_rent (12, 60, 180, 500, 700, 900), 100)
			cells [14] := cell_street

				-- Orange
			create cell_street.make_street (16, "St. James Place", 180, load_rent (14, 70, 200, 550, 750, 950), 100)
			cells [16] := cell_street
			create cell_street.make_street (18, "Tennessee Avenue", 180, load_rent (14, 70, 200, 550, 750, 950), 100)
			cells [18] := cell_street
			create cell_street.make_street (19, "New York Avenue", 200, load_rent (16, 80, 220, 600, 800, 1000), 100)
			cells [19] := cell_street

				-- Red
			create cell_street.make_street (21, "Kentucky Avenue", 220, load_rent (18, 90, 250, 700, 875, 1050), 150)
			cells [21] := cell_street
			create cell_street.make_street (23, "Indiana Avenue", 220, load_rent (18, 90, 250, 700, 875, 1050), 150)
			cells [23] := cell_street
			create cell_street.make_street (24, "Illinois Avenue", 240, load_rent (20, 100, 300, 750, 925, 1100), 150)
			cells [24] := cell_street

				-- Yellow
			create cell_street.make_street (26, "Atlantic Avenue", 260, load_rent (22, 110, 330, 800, 975, 1150), 150)
			cells [26] := cell_street
			create cell_street.make_street (27, "Ventnor Avenue", 260, load_rent (22, 110, 330, 800, 975, 1150), 150)
			cells [27] := cell_street
			create cell_street.make_street (29, "Marvin Gardens", 280, load_rent (22, 120, 360, 850, 1025, 1200), 150)
			cells [29] := cell_street

				-- Dark Green
			create cell_street.make_street (31, "Pacific Avenue", 300, load_rent (26, 130, 390, 900, 1100, 1275), 200)
			cells [31] := cell_street
			create cell_street.make_street (32, "North Carolina Avenue", 300, load_rent (26, 130, 390, 900, 1100, 1275), 200)
			cells [32] := cell_street
			create cell_street.make_street (34, "Pennsylvania Avenue", 320, load_rent (28, 150, 450, 1000, 1200, 1400), 200)
			cells [34] := cell_street

				--Dark Blue
			create cell_street.make_street (37, "Park Place", 350, load_rent (35, 175, 500, 1100, 1300, 1500), 200)
			cells [37] := cell_street
			create cell_street.make_street (39, "Boardwalk", 400, load_rent (50, 200, 600, 1400, 1700, 2000), 200)
			cells [39] := cell_street

				--Utilities
			create cell_utility.make_utility (12, "Electric Company")
			cells [12] := cell_utility
			create cell_utility.make_utility (28, "Water Works")
			cells [28] := cell_utility

				--Railway
				--Reading Railroad
			create cell_railway.make_railway(5,"Reading")
			cells [5] := cell_railway
				--Pennsylvania Railroad
			create cell_railway.make_railway (15, "Pennsylvania")
			cells [15] := cell_railway
				--B. & O. Railroad
			create cell_railway.make_railway (25, "Baltimore And Ohio (B&O)")
			cells [25] := cell_railway
				--Short Line Railboard
			create cell_railway.make_railway (35, "Short Line")
			cells [35] := cell_railway
		end

	load_rent (rent1: INTEGER; rent2: INTEGER; rent3: INTEGER; rent4: INTEGER; rent5: INTEGER; rent6: INTEGER): ARRAY [INTEGER]
			--Load the rent for all deed
		local
			aux: ARRAY [INTEGER]
		do
			create aux.make_filled (0, 0, 5)
			aux [0] := rent1
			aux [1] := rent2
			aux [2] := rent3
			aux [3] := rent4
			aux [4] := rent5
			aux [5] := rent6
			Result := aux
		end

	load_tokens ()
		local
			token: G1_TOKEN
		do
			create tokens.make_filled (Void, 0, 12)

			create token.make ("Wheelbarrow")
			tokens [0] := token
			create token.make ("Battleship")
			tokens [1] := token
			create token.make ("Sack of money")
			tokens [2] := token
			create token.make ("Man on horseback")
			tokens [3] := token
			create token.make ("Racecar")
			tokens [4] := token
			create token.make ("Locomotive")
			tokens [5] := token
			create token.make ("Thimble")
			tokens [6] := token
			create token.make ("Howitzer")
			tokens [7] := token
			create token.make ("Shoe")
			tokens [8] := token
			create token.make ("Iron")
			tokens [9] := token
			create token.make ("Top hat")
			tokens [10] := token
			create token.make ("Rocking horse")
			tokens [12] := token
		end

feature -- Status Report

	get_next_card_chance (): G1_CARD
			-- returns the next card "chance"
		local
			rand: RANDOM
			time: TIME
			card_position: INTEGER
		do
			create rand.make
			create time.make_now_utc
			rand.set_seed (time.milli_second)
			card_position := (rand.i_th (2) \\ 15)
			Result := cards_chance [card_position]
		ensure
			get_next_card: Result.id >= 0 and Result.id <= 15
		end

	get_next_card_community (): G1_CARD
			-- returns the next card "comunity chest"
		local
			rand: RANDOM
			time: TIME
			card_position: INTEGER
		do
			create rand.make
			create time.make_now_utc
			rand.set_seed (time.milli_second)
			card_position := (rand.i_th (2) \\ 15)
			Result := cards_community_chest [card_position]
		ensure
			get_next_card: Result.id >= 0 and Result.id <= 15
		end

	withdraw_bank (money: INTEGER)
			--Remove the money to the bank
		require
			valid_money: money > 0 and money < 20000
		do
			bank.withdraw_money (money)
		end

	deposit_bank (money: INTEGER)
			--Enter the money to the bank
		require
			valid_money: money > 0 and money < 20000
		do
			bank.deposit_money (money)
		end

	move_player (a_player: G1_PLAYER; a_dices: INTEGER)
			--Move player to the position
		require
			valid_position: a_dices > 0 and a_dices <= 12
		local
			position: INTEGER
		do
			if a_dices + a_player.position > 39 then
				position := a_dices + a_player.position - 39
				a_player.set_position (position)
			else
				a_player.set_position (a_player.position + a_dices)
			end
		ensure
			valid_position: a_player.position > 0 and a_player.position <= 39
			valid_sum: a_player.position = old a_player.position + a_dices or a_player.position = old a_player.position + a_dices - 39
		end

	add_player (a_player: G1_PLAYER)
			--Add player to the board
		require
			valid_player: a_player /= Void and players.count < 6
		do
			players.put_right (a_player)
		end

invariant
	valid_players: players /= Void and players.count < 7
	valid_cards_chance: cards_chance.count = 16 and cards_chance.full
	valid_cards_community_chest: cards_community_chest.count = 16 and cards_community_chest.full
	valid_cells_deed: cells.count = 40 and cells.full
	valid_bank: bank /= Void
end
